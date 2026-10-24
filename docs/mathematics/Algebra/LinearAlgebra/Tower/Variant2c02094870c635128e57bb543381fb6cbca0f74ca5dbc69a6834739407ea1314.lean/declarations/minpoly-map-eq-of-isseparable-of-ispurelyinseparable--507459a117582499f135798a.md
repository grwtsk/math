# minpoly.map_eq_of_isSeparable_of_isPurelyInseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aa1b38d-1b49-767f-b5f5-d96f0e8c071c",
  "kind": "theorem",
  "lexical_name": "minpoly.map_eq_of_isSeparable_of_isPurelyInseparable",
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
  "slug": "minpoly-map-eq-of-isseparable-of-ispurelyinseparable--507459a117582499f135798a",
  "source": {
    "blob": "0d76cea7aee56eebc33711c956086f3647338040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 269,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:507459a117582499f135798a9b28014a1b9da4fde1f45925a3622ff8fe3bd546",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa1b38d-1b49-767f-b5f5-d96f0e8c071c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minpoly.map_eq_of_isSeparable_of_isPurelyInseparable (x : K)
    (hsep : IsSeparable F x) [IsPurelyInseparable F E] :
    (minpoly F x).map (algebraMap F E) = minpoly E x := by
  have hi := IsSeparable.isIntegral hsep
  have hi' : IsIntegral E x := IsIntegral.tower_top hi
  refine eq_of_monic_of_dvd_of_natDegree_le (monic hi') ((monic hi).map (algebraMap F E))
    (dvd_map_of_isScalarTower F E x) (le_of_eq ?_)
  have hsep' := IsSeparable.tower_top E hsep
  haveI := (isSeparable_adjoin_simple_iff_isSeparable _ _).2 hsep
  haveI := (isSeparable_adjoin_simple_iff_isSeparable _ _).2 hsep'
  have := Algebra.IsSeparable.isAlgebraic F F⟮x⟯
  have := Algebra.IsSeparable.isAlgebraic E E⟮x⟯
  rw [Polynomial.natDegree_map, ← adjoin.finrank hi, ← adjoin.finrank hi',
    ← finSepDegree_eq_finrank_of_isSeparable F _, ← finSepDegree_eq_finrank_of_isSeparable E _,
    finSepDegree_eq, finSepDegree_eq,
    sepDegree_adjoin_eq_of_isAlgebraic_of_isPurelyInseparable (F := F) E]

variable {F} in
/-- If `E / F` is a purely inseparable field extension, `f` is a separable irreducible polynomial
over `F`, then it is also irreducible over `E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variant2c02094870c635128e57bb543381fb6cbca0f74ca5dbc69a6834739407ea1314.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d76cea7aee56eebc33711c956086f3647338040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
