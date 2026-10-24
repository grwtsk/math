# isTopologicalSpace_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50960754-69fb-d015-f3ed-46a650448f16",
  "kind": "lemma",
  "lexical_name": "isTopologicalSpace_basis",
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
  "slug": "istopologicalspace-basis--4b8b4a20b92a59806c6933d5",
  "source": {
    "blob": "c27d2df7280307e9a366db5c4bbba8dbec1e2a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b8b4a20b92a59806c6933d56fc67917570ce8f9c049791e1a26567f4fe7df5f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50960754-69fb-d015-f3ed-46a650448f16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTopologicalSpace_basis (U : Set α) : IsOpen U ↔ U = univ ∨ ∃ a, (Ici a)ᶜ = U := by
  by_cases hU : U = univ
  · simp only [hU, isOpen_univ, compl_Ici, true_or]
  refine ⟨?_, isTopologicalBasis_insert_univ_subbasis.isOpen⟩
  intro hO
  apply Or.inr
  convert! IsTopologicalBasis.open_eq_sUnion isTopologicalBasis_insert_univ_subbasis hO
  constructor
  · intro ⟨a, ha⟩
    use {U}
    constructor
    · apply subset_trans (singleton_subset_iff.mpr _) (subset_insert _ _)
      use a
    · rw [sUnion_singleton]
  · intro ⟨S, hS1, hS2⟩
    have hUS : univ ∉ S := by
      by_contra hUS'
      apply hU
      rw [hS2]
      exact sUnion_eq_univ_iff.mpr (fun a => ⟨univ, hUS', trivial⟩)
    use sSup {a | (Ici a)ᶜ ∈ S}
    rw [hS2, sUnion_eq_compl_sInter_compl, compl_inj_iff]
    apply le_antisymm
    · intro b hb
      simp only [sInter_image, mem_iInter, mem_compl_iff]
      intro s hs
      obtain ⟨a, ha⟩ := (subset_insert_iff_of_notMem hUS).mp hS1 hs
      subst hS2 ha
      simp_all only [compl_Ici, mem_Ici, sSup_le_iff, mem_ofPred_eq, mem_Iio, not_lt]
    · intro b hb
      rw [mem_Ici, sSup_le_iff]
      intro c hc
      simp only [sInter_image, mem_iInter] at hb
      rw [← not_lt, ← mem_Iio, ← compl_Ici]
      exact hb _ hc

end CompleteLinearOrder

end IsLower


namespace IsUpper

/-- The complements of the lower closures of finite sets are a collection of upper sets
which form a basis for the upper topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c27d2df7280307e9a366db5c4bbba8dbec1e2a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
