# isTopologicalSpace_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5de4cedca33f6625c806653df23fa610893b286f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61c0c51e-c793-ddb9-86ab-cb4d5d316bee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f56ce34-cc95-9d6d-a3a4-ef3bb3348927",
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
  "slug": "istopologicalspace-basis--ee856903d1c482a8f3bcb110",
  "source": {
    "blob": "5de4cedca33f6625c806653df23fa610893b286f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee856903d1c482a8f3bcb1104542b2a7ead2f1030f88ede0cf89d42a893f4890",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f56ce34-cc95-9d6d-a3a4-ef3bb3348927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTopologicalSpace_basis (U : Set α) : IsOpen U ↔ U = univ ∨ ∃ a, (Ici a)ᶜ = U := by
  by_cases hU : U = univ
  · simp only [hU, isOpen_univ, compl_Ici, true_or]
  refine ⟨?_, isTopologicalBasis_insert_univ_subbasis.isOpen⟩
  intro hO
  apply Or.inr
  convert IsTopologicalBasis.open_eq_sUnion isTopologicalBasis_insert_univ_subbasis hO
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
      obtain ⟨a,ha⟩ := (subset_insert_iff_of_notMem hUS).mp hS1 hs
      subst hS2 ha
      simp_all only [compl_Ici, mem_Ici, sSup_le_iff, mem_setOf_eq, mem_Iio, not_lt]
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de4cedca33f6625c806653df23fa610893b286f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
