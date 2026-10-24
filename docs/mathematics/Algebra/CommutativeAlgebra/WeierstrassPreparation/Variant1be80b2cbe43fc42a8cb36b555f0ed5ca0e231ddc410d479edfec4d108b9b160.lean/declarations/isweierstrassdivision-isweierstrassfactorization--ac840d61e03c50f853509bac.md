# IsWeierstrassDivision.isWeierstrassFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd845123-21d0-dba0-2521-609c76bb568a",
  "kind": "theorem",
  "lexical_name": "IsWeierstrassDivision.isWeierstrassFactorization",
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
  "slug": "isweierstrassdivision-isweierstrassfactorization--ac840d61e03c50f853509bac",
  "source": {
    "blob": "59c43bbb59ec74834ac61a9c2be0611ce79a0489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 761,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac840d61e03c50f853509baccd8b376a2a18e20b01b21bcb963c247f36f7d62b",
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

Occurrence: `result:cd845123-21d0-dba0-2521-609c76bb568a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 761–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsWeierstrassDivision.isWeierstrassFactorization
    {g q : A⟦X⟧} {r : A[X]} (hg : g.map (IsLocalRing.residue A) ≠ 0)
    (H : (X ^ (g.map (IsLocalRing.residue A)).order.toNat).IsWeierstrassDivision g q r) :
    g.IsWeierstrassFactorization
      (Polynomial.X ^ (g.map (IsLocalRing.residue A)).order.toNat - r)
      ↑(H.isUnit_of_map_ne_zero hg).unit⁻¹ := by
  have H1 : r.degree < (g.map (IsLocalRing.residue A)).order.toNat := H.1
  set n := (g.map (IsLocalRing.residue A)).order.toNat
  set f := Polynomial.X ^ n - r
  replace H1 : r.degree < (Polynomial.X (R := A) ^ n).degree := by rwa [Polynomial.degree_X_pow]
  have hfdeg : f.natDegree = n := by
    suffices f.degree = n by rw [Polynomial.natDegree, this]; rfl
    rw [Polynomial.degree_sub_eq_left_of_degree_lt H1, Polynomial.degree_X_pow]
  refine ⟨⟨⟨fun {i} hi ↦ ?_⟩, .sub_of_left (Polynomial.monic_X_pow _) H1⟩, Units.isUnit _, ?_⟩
  · rw [hfdeg] at hi
    simp_rw [f, Polynomial.coeff_sub, Polynomial.coeff_X_pow, ite_eq_right hi.ne, zero_sub,
      neg_mem_iff]
    have := H.coeff_f_sub_r_mem hi
    rwa [map_sub, coeff_X_pow, ite_eq_right hi.ne, zero_sub, neg_mem_iff,
      Polynomial.coeff_coe] at this
  · have := congr($(H.2) * ↑(H.isUnit_of_map_ne_zero hg).unit⁻¹)
    rw [add_mul, mul_assoc, IsUnit.mul_val_inv, mul_one, ← sub_eq_iff_eq_add] at this
    simp_rw [← this, f, Polynomial.coe_sub, Polynomial.coe_pow, Polynomial.coe_X, sub_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean#L761).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c43bbb59ec74834ac61a9c2be0611ce79a0489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
