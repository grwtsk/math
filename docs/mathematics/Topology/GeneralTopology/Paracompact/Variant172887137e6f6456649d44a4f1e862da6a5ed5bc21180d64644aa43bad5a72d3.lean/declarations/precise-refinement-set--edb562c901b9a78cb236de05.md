# precise_refinement_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2800b422-e4d7-1472-d223-c3f01fe4a59d",
  "kind": "theorem",
  "lexical_name": "precise_refinement_set",
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
  "slug": "precise-refinement-set--edb562c901b9a78cb236de05",
  "source": {
    "blob": "8d4dcac49497f753f50b685b559543173cc1c4fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edb562c901b9a78cb236de0513e6083d074aefa2f9622e467ca8a7a97ceaca11",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2800b422-e4d7-1472-d223-c3f01fe4a59d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem precise_refinement_set [ParacompactSpace X] {s : Set X} (hs : IsClosed s) (u : ι → Set X)
    (uo : ∀ i, IsOpen (u i)) (us : s ⊆ ⋃ i, u i) :
    ∃ v : ι → Set X, (∀ i, IsOpen (v i)) ∧ (s ⊆ ⋃ i, v i) ∧ LocallyFinite v ∧ ∀ i, v i ⊆ u i := by
  have uc : (iUnion fun i => Option.elim' sᶜ u i) = univ := by
    apply Subset.antisymm (subset_univ _)
    · simp_rw [← compl_union_self s, Option.elim', iUnion_option]
      apply union_subset_union_right sᶜ us
  rcases precise_refinement (Option.elim' sᶜ u) (Option.forall.2 ⟨isOpen_compl_iff.2 hs, uo⟩)
      uc with
    ⟨v, vo, vc, vf, vu⟩
  refine ⟨v ∘ some, fun i ↦ vo _, ?_, vf.comp_injective (Option.some_injective _), fun i ↦ vu _⟩
  · simp only [iUnion_option, ← compl_subset_iff_union] at vc
    exact Subset.trans (subset_compl_comm.1 <| vu Option.none) vc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4dcac49497f753f50b685b559543173cc1c4fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
