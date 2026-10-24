# ContinuousOn.if'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "636d4102d7aa6305beeff555b34cbca63f103113",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:993d25ca-0d03-aabd-cb58-a1496b4859e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5b2c39f-5bed-69c8-dd4c-73ed96ee5478",
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
  "slug": "continuouson-if--15a4c67c3997683ce12d8b89",
  "source": {
    "blob": "636d4102d7aa6305beeff555b34cbca63f103113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1135,
    "line": 1109,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15a4c67c3997683ce12d8b89d30e29429782753d3b697f5dd5de40dd8f799c88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5b2c39f-5bed-69c8-dd4c-73ed96ee5478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1109–1135.

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
    cases' hx with hx hx
    · apply ContinuousWithinAt.union
      · exact (hf x hx).congr (fun y hy => if_pos hy.2) (if_pos hx.2)
      · have : x ∉ closure { a | p a }ᶜ := fun h => hx' ⟨subset_closure hx.2, by
          rwa [closure_compl] at h⟩
        exact continuousWithinAt_of_not_mem_closure fun h =>
          this (closure_inter_subset_inter_closure _ _ h).2
    · apply ContinuousWithinAt.union
      · have : x ∉ closure { a | p a } := fun h =>
          hx' ⟨h, fun h' : x ∈ interior { a | p a } => hx.2 (interior_subset h')⟩
        exact continuousWithinAt_of_not_mem_closure fun h =>
          this (closure_inter_subset_inter_closure _ _ h).2
      · exact (hg x hx).congr (fun y hy => if_neg hy.2) (if_neg hx.2)
#align continuous_on.if' ContinuousOn.if'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant81b2becfba37dd0a8082ec0b657b1ebfcaf140399b0e6639dc22c7b730b263c1.lean#L1109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636d4102d7aa6305beeff555b34cbca63f103113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
