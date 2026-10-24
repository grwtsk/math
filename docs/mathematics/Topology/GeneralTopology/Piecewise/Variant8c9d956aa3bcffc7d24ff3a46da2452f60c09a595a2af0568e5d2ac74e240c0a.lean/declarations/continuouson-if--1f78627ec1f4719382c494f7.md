# ContinuousOn.if'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e86b68cd6c5744c333e5d408fe5afea34e51474",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6419df59-2a07-d577-ee72-85ebbfc6cb1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34059dd8-5b66-7bc7-4aa2-eb1ea85f6311",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.if'",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "continuouson-if--1f78627ec1f4719382c494f7",
  "source": {
    "blob": "8e86b68cd6c5744c333e5d408fe5afea34e51474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f78627ec1f4719382c494f74d1c83d2045673be861ae5364623b75c4ffa942f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34059dd8-5b66-7bc7-4aa2-eb1ea85f6311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.if' {s : Set α} {p : α → Prop} {f g : α → β} [∀ a, Decidable (p a)]
    (hpf : ∀ a ∈ s ∩ frontier { a | p a },
      Tendsto f (𝓝[s ∩ { a | p a }] a) (𝓝 <| if p a then f a else g a))
    (hpg :
      ∀ a ∈ s ∩ frontier { a | p a },
        Tendsto g (𝓝[s ∩ { a | ¬p a }] a) (𝓝 <| if p a then f a else g a))
    (hf : ContinuousOn f <| s ∩ { a | p a }) (hg : ContinuousOn g <| s ∩ { a | ¬p a }) :
    ContinuousOn (fun a => if p a then f a else g a) s := by
  intro x hx
  by_cases hx' : x ∈ frontier { a | p a }
  · exact (hpf x ⟨hx, hx'⟩).piecewise_nhdsWithin (hpg x ⟨hx, hx'⟩)
  · rw [← inter_univ s, ← union_compl_self { a | p a }, inter_union_distrib_left] at hx ⊢
    rcases hx with hx | hx
    · apply ContinuousWithinAt.union
      · exact (hf x hx).congr (fun y hy => ite_eq_left hy.2) (ite_eq_left hx.2)
      · have : x ∉ closure { a | p a }ᶜ := fun h => hx' ⟨subset_closure hx.2, by
          rwa [closure_compl] at h⟩
        exact continuousWithinAt_of_notMem_closure fun h =>
          this (closure_inter_subset_inter_closure _ _ h).2
    · apply ContinuousWithinAt.union
      · have : x ∉ closure { a | p a } := fun h =>
          hx' ⟨h, fun h' : x ∈ interior { a | p a } => hx.2 (interior_subset h')⟩
        exact continuousWithinAt_of_notMem_closure fun h =>
          this (closure_inter_subset_inter_closure _ _ h).2
      · exact (hg x hx).congr (fun y hy => ite_eq_right hy.2) (ite_eq_right hx.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e86b68cd6c5744c333e5d408fe5afea34e51474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
