# rational_ldl_real_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c52d2e0a-c1b6-ad77-c98a-3df27debceb1",
  "kind": "theorem",
  "lexical_name": "rational_ldl_real_positive",
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
  "slug": "rational-ldl-real-positive--77f357d177b455143b317b0e",
  "source": {
    "blob": "65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 29,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77f357d177b455143b317b0e97d3902fb2511b452e5519efbb8bb03680b2fb1a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c52d2e0a-c1b6-ad77-c98a-3df27debceb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rational_ldl_real_positive {n : ℕ}
    (C L : Matrix (Fin n) (Fin n) ℚ) (d : Fin n → ℚ)
    (hldl : L * diagonal d * Lᵀ = C) (hdet : L.det = 1)
    (hp : ∀ i, 0 < d i) : (C.map (Rat.castHom ℝ)).PosDef := by
  let LR := L.map (Rat.castHom ℝ)
  let dR : Fin n → ℝ := fun i => (d i : ℝ)
  have hldlR : LR * diagonal dR * LRᵀ = C.map (Rat.castHom ℝ) := by
    have h := congrArg (fun M => M.map (Rat.castHom ℝ)) hldl
    rw [Matrix.map_mul, Matrix.map_mul, diagonal_map (map_zero _), transpose_map] at h
    simpa only [LR, dR, Rat.coe_castHom] using h
  have hdetR : LR.det = 1 := by
    have h := (Rat.castHom ℝ).map_det L
    rw [hdet] at h
    simpa [LR] using h.symm
  have hpR : ∀ i, 0 < dR i := by
    intro i
    change (0 : ℝ) < (d i : ℝ)
    exact_mod_cast hp i
  have hi : Function.Injective LRᵀ.mulVec := by
    apply mulVec_injective_of_isUnit
    apply (isUnit_iff_isUnit_det _).mpr
    rw [det_transpose, hdetR]
    exact isUnit_one
  have h := (PosDef.diagonal hpR).conjTranspose_mul_mul_same hi
  simpa only [conjTranspose_eq_transpose_of_trivial, transpose_transpose, hldlR] using h

/-- The frozen integer D4 Cartan form transported to the actual real carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
