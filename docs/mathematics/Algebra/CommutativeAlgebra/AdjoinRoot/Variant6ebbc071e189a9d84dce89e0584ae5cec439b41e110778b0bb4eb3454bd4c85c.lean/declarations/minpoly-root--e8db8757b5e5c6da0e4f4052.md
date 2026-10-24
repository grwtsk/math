# minpoly_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cd684ea-ecc2-82ec-c988-c8cf922233e5",
  "kind": "theorem",
  "lexical_name": "minpoly_root",
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
  "slug": "minpoly-root--e8db8757b5e5c6da0e4f4052",
  "source": {
    "blob": "0464c1179296fc28d15f00be3f8982bf8c70a7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 552,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8db8757b5e5c6da0e4f405284dc9beaaca1c28a5d33f8b6c6f06573d7623711",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cd684ea-ecc2-82ec-c988-c8cf922233e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minpoly_root (hf : f ≠ 0) : minpoly K (root f) = f * C f.leadingCoeff⁻¹ := by
  have f'_monic : Monic _ := monic_mul_leadingCoeff_inv hf
  refine' (minpoly.unique K _ f'_monic _ _).symm
  · rw [AlgHom.map_mul, aeval_eq, mk_self, zero_mul]
  intro q q_monic q_aeval
  have commutes : (lift (algebraMap K (AdjoinRoot f)) (root f) q_aeval).comp (mk q) = mk f := by
    ext
    · simp only [RingHom.comp_apply, mk_C, lift_of]
      rfl
    · simp only [RingHom.comp_apply, mk_X, lift_root]
  rw [degree_eq_natDegree f'_monic.ne_zero, degree_eq_natDegree q_monic.ne_zero,
    Nat.cast_withBot, Nat.cast_withBot, -- porting note: added
    WithBot.coe_le_coe, natDegree_mul hf, natDegree_C, add_zero]
  apply natDegree_le_of_dvd
  · have : mk f q = 0 := by rw [← commutes, RingHom.comp_apply, mk_self, RingHom.map_zero]
    exact mk_eq_zero.1 this
  · exact q_monic.ne_zero
  · rwa [Ne.def, C_eq_zero, inv_eq_zero, leadingCoeff_eq_zero]
#align adjoin_root.minpoly_root AdjoinRoot.minpoly_root

/-- The elements `1, root f, ..., root f ^ (d - 1)` form a basis for `AdjoinRoot f`,
where `f` is an irreducible polynomial over a field of degree `d`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0464c1179296fc28d15f00be3f8982bf8c70a7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
