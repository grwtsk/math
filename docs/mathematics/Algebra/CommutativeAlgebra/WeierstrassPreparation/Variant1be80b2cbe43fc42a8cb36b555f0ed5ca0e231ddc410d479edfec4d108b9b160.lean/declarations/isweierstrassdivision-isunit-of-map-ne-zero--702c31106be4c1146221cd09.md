# IsWeierstrassDivision.isUnit_of_map_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e0b0f51-2976-036c-918f-fe754c74cca4",
  "kind": "theorem",
  "lexical_name": "IsWeierstrassDivision.isUnit_of_map_ne_zero",
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
  "slug": "isweierstrassdivision-isunit-of-map-ne-zero--702c31106be4c1146221cd09",
  "source": {
    "blob": "59c43bbb59ec74834ac61a9c2be0611ce79a0489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 741,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:702c31106be4c1146221cd0904a5ffdb0ff622836b2bb9e331a0278a1acf4051",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e0b0f51-2976-036c-918f-fe754c74cca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsWeierstrassDivision.isUnit_of_map_ne_zero
    {g q : A⟦X⟧} {r : A[X]} (hg : g.map (IsLocalRing.residue A) ≠ 0)
    (H : (X ^ (g.map (IsLocalRing.residue A)).order.toNat).IsWeierstrassDivision g q r) :
    IsUnit q := by
  obtain ⟨H1 : r.degree < (g.map (IsLocalRing.residue A)).order.toNat, H2⟩ := H
  set n := (g.map (IsLocalRing.residue A)).order.toNat
  replace H2 := congr(coeff n (($H2).map (IsLocalRing.residue A)))
  simp_rw [map_pow, map_X, coeff_X_pow_self, map_add, map_mul, coeff_map,
    Polynomial.coeff_coe, Polynomial.coeff_eq_zero_of_degree_lt H1, map_zero, add_zero] at H2
  rw [isUnit_iff_constantCoeff, ← isUnit_map_iff (IsLocalRing.residue A)]
  rw [coeff_mul, ← Finset.sum_subset (s₁ := {(n, 0)}) (by simp) (fun p hp hnotMem ↦ ?_),
    Finset.sum_singleton, coeff_map, coeff_map, coeff_zero_eq_constantCoeff, mul_comm] at H2
  · exact .of_mul_eq_one _ H2.symm
  · rw [coeff_of_lt_order p.1 ?_]
    · rw [zero_mul]
    · rw [← ENat.lt_lift_iff (h := order_finite_iff_ne_zero.2 hg), ENat.lift_eq_toNat_of_lt_top]
      refine (Finset.HasAntidiagonal.antidiagonal.fst_le hp).lt_of_ne ?_
      contrapose hnotMem
      rwa [Finset.mem_singleton, Finset.HasAntidiagonal.antidiagonal_congr hp (by simp)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c43bbb59ec74834ac61a9c2be0611ce79a0489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
