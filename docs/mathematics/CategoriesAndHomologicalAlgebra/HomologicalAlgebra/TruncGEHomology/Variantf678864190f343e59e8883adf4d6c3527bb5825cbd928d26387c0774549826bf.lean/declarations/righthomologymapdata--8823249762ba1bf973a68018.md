# rightHomologyMapData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35a88a17282d23efd2b735b1aa1f98ac165851f42167c99a101b827ac3a29b9e",
  "kind": "def",
  "lexical_name": "rightHomologyMapData",
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
  "slug": "righthomologymapdata--8823249762ba1bf973a68018",
  "source": {
    "blob": "33aa50866daca8b4d74875fa0da81dc212bf944f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8823249762ba1bf973a680184d4031f9b4896bad7419e4fc0b81d6008dc38927",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35a88a17282d23efd2b735b1aa1f98ac165851f42167c99a101b827ac3a29b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rightHomologyMapData {i j k : ι} {j' : ι'} (hj' : e.f j = j')
    (hi : c.prev j = i) (hk : c.next j = k) (hj : e.BoundaryGE j) :
    ShortComplex.RightHomologyMapData ((shortComplexFunctor C c' j').map (K.πTruncGE e))
    (ShortComplex.RightHomologyData.canonical (K.sc j'))
    (extend.rightHomologyData (K.truncGE' e) e hj' hi rfl hk rfl
      (truncGE'.homologyData K e i j k hk hj' hj).right) where
  φQ := (K.truncGE'XIsoOpcycles e hj' hj).inv
  φH := 𝟙 _
  commp := by
    change K.pOpcycles j' ≫ _ = _
    simp [truncGE'.homologyData, πTruncGE, e.liftExtend_f _ _ hj',
      K.restrictionToTruncGE'_f_eq_iso_hom_pOpcycles_iso_inv e hj' hj]
  commg' := by
    have hk' : e.f k = c'.next j' := by rw [← hj', e.next_f hk]
    dsimp
    rw [extend.rightHomologyData_g' _ _ _ _ _ _ _ _ hk', πTruncGE,
        e.liftExtend_f _ _ hk', truncGE'.homologyData_right_g']
    by_cases hjk : c.Rel j k
    · simp [K.truncGE'_d_eq_fromOpcycles e hjk hj' hk' hj,
        K.restrictionToTruncGE'_f_eq_iso_hom_iso_inv e hk' (e.not_boundaryGE_next hjk)]
      rfl
    · obtain rfl : k = j := by rw [← c.next_eq_self j  (by simpa only [hk] using hjk), hk]
      rw [shape _ _ _ hjk, zero_comp, comp_zero,
        K.restrictionToTruncGE'_f_eq_iso_hom_pOpcycles_iso_inv e hk' hj]
      simp only [restriction_X, restrictionXIso, eqToIso.inv, eqToIso.hom, assoc,
        eqToHom_trans_assoc, eqToHom_refl, id_comp]
      change 0 = K.fromOpcycles _ _ ≫ _
      rw [← cancel_epi (K.pOpcycles _), comp_zero, p_fromOpcycles_assoc,
        d_pOpcycles_assoc, zero_comp]

end truncGE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantf678864190f343e59e8883adf4d6c3527bb5825cbd928d26387c0774549826bf.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33aa50866daca8b4d74875fa0da81dc212bf944f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
