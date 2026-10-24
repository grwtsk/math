# addContent_le_sum_of_subset_sUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdf6969c-ecd7-8910-8d6c-5b658466bc8f",
  "kind": "lemma",
  "lexical_name": "addContent_le_sum_of_subset_sUnion",
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
  "slug": "addcontent-le-sum-of-subset-sunion--b5e622ab0c98ce52a0d0e063",
  "source": {
    "blob": "b5d77c88c308407f1310d1dd0106b3c4ed916648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 307,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5e622ab0c98ce52a0d0e063242484edc8dbae4e0a9e4feda4ef43829c0c3484",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdf6969c-ecd7-8910-8d6c-5b658466bc8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addContent_le_sum_of_subset_sUnion {m : AddContent G C} (hC : IsSetSemiring C)
    {J : Finset (Set α)} (h_ss : ↑J ⊆ C) (ht : t ∈ C) (htJ : t ⊆ ⋃₀ ↑J) :
    m t ≤ ∑ u ∈ J, m u := by
  simp_rw +singlePass [← sSup_eq_sUnion, sSup_eq_iSup', SetLike.coe_sort_coe,
    ← J.equivFin.symm.iSup_comp, iSup_eq_iUnion, ← iUnion_disjointed] at htJ
  set f := disjointed fun j => (J.equivFin.symm j).1
  have h1 : ∀ j, f j ∈ supClosure C :=
    hC.isSetRing_supClosure.disjointed_mem fun j =>
      subset_supClosure <| h_ss <| (J.equivFin.symm j).2
  have h2 : Pairwise (Disjoint on f) := disjoint_disjointed _
  have h3 : ⋃ i, f i ∈ supClosure C :=
    supClosed_supClosure.iSup_mem (subset_supClosure hC.empty_mem) h1
  grw [← m.supClosure_apply_of_mem hC ht,
    addContent_mono hC.isSetRing_supClosure.isSetSemiring (subset_supClosure ht) h3 htJ,
    addContent_iUnion h1 h2 h3, ← J.sum_attach, Finset.attach_eq_univ, ← J.equivFin.symm.sum_comp]
  gcongr with j -
  rw [← m.supClosure_apply_of_mem hC (h_ss (J.equivFin.symm _).2)]
  exact addContent_mono hC.isSetRing_supClosure.isSetSemiring (h1 j)
    (subset_supClosure (h_ss (J.equivFin.symm j).2)) (disjointed_subset _ j)

/-- An `addContent C` on a `SetSemiring C` is sub-additive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5d77c88c308407f1310d1dd0106b3c4ed916648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
