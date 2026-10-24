# _root_.GRWTSK.Algebra.CommutativeAlgebra.ResidueFieldMapCAlgEquiv.Variant8c544a69721ba721ce10dbe7335a1cba5bd3c1e7d37092d277abb9c50317bc9c.Ideal.exists_mem_span_singleton_map_residueField_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3522060-1acd-bcd1-c3ed-bcfa1d87a8ad",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.ResidueFieldMapCAlgEquiv.Variant8c544a69721ba721ce10dbe7335a1cba5bd3c1e7d37092d277abb9c50317bc9c.Ideal.exists_mem_span_singleton_map_residueField_eq",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-residuefieldmapcalgequiv-variant8--b709ff89660e0db255fe1c52",
  "source": {
    "blob": "0a9d7787952bdc5a050d2eb40a30145e195b89ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 139,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b709ff89660e0db255fe1c52ed8f4139d69e3ce0e9e946b0da2efe87324f2054",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3522060-1acd-bcd1-c3ed-bcfa1d87a8ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.ResidueFieldMapCAlgEquiv.Variant8c544a69721ba721ce10dbe7335a1cba5bd3c1e7d37092d277abb9c50317bc9c.Ideal.exists_mem_span_singleton_map_residueField_eq
    (P : Ideal R) [P.IsPrime] (I : Ideal R[X]) :
    ∃ p ∈ I, Ideal.span {p.map (algebraMap R P.ResidueField)} =
      I.map (mapRingHom (algebraMap R P.ResidueField)) := by
  obtain ⟨p, hp : _ = Ideal.span _⟩ := (inferInstance :
    (I.map (mapRingHom (algebraMap R P.ResidueField))).IsPrincipal)
  let := (mapRingHom (algebraMap (R ⧸ P) P.ResidueField)).toAlgebra
  have := Polynomial.isLocalization (R ⧸ P)⁰ P.ResidueField
  have : p ∈ (I.map (mapRingHom (algebraMap R (R ⧸ P)))).map (algebraMap _ _) := by
    rw [Ideal.map_map, RingHom.algebraMap_toAlgebra, mapRingHom_comp,
      ← IsScalarTower.algebraMap_eq, hp]
    exact Ideal.mem_span_singleton_self _
  obtain ⟨⟨⟨r, hr⟩, s⟩, e⟩ := (IsLocalization.mem_map_algebraMap_iff ((R ⧸ P)⁰.map C) _).mp this
  obtain ⟨r, hr', rfl⟩ := (Ideal.mem_map_iff_of_surjective _
    (Polynomial.map_surjective _ Ideal.Quotient.mk_surjective)).mp hr
  simp only [algebraMap_def, coe_mapRingHom,
    Polynomial.map_map, ← IsScalarTower.algebraMap_eq] at e
  refine ⟨r, hr', le_antisymm ?_ ?_⟩
  · simpa [-le_of_subsingleton, Ideal.span_le] using! Ideal.mem_map_of_mem _ hr'
  · simp only [hp, Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe]
    rw [(IsLocalization.map_units P.ResidueField[X] s).unit.eq_mul_inv_iff_mul_eq.mpr e]
    exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9d7787952bdc5a050d2eb40a30145e195b89ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
