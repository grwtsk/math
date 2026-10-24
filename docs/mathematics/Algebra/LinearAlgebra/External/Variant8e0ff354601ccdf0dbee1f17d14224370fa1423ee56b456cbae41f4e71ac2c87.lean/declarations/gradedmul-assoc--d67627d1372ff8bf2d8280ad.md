# gradedMul_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cdca0da-f6b2-fc1f-4f47-9a76677c397e",
  "kind": "theorem",
  "lexical_name": "gradedMul_assoc",
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
  "slug": "gradedmul-assoc--d67627d1372ff8bf2d8280ad",
  "source": {
    "blob": "f5ee8cd012f0f550712fc01902938e036c3a6b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 248,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d67627d1372ff8bf2d8280ada54a65066efa52e5606716bdee4269f8d7f6c538",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cdca0da-f6b2-fc1f-4f47-9a76677c397e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedMul_assoc (x y z : DirectSum _ 𝒜 ⊗[R] DirectSum _ ℬ) :
    gradedMul R 𝒜 ℬ (gradedMul R 𝒜 ℬ x y) z = gradedMul R 𝒜 ℬ x (gradedMul R 𝒜 ℬ y z) := by
  let mA := gradedMul R 𝒜 ℬ
    -- restate as an equality of morphisms so that we can use `ext`
  suffices LinearMap.llcomp R _ _ _ mA ∘ₗ mA =
      (LinearMap.llcomp R _ _ _ LinearMap.lflip.toLinearMap <|
        LinearMap.llcomp R _ _ _ mA.flip ∘ₗ mA).flip by
    exact DFunLike.congr_fun (DFunLike.congr_fun (DFunLike.congr_fun this x) y) z
  ext ixa xa ixb xb iya ya iyb yb iza za izb zb
  dsimp [mA]
  simp_rw [tmul_of_gradedMul_of_tmul, Units.smul_def, ← Int.cast_smul_eq_zsmul R,
    LinearMap.map_smul₂, map_smul, DirectSum.lof_eq_of, DirectSum.of_mul_of,
    ← DirectSum.lof_eq_of R, tmul_of_gradedMul_of_tmul, DirectSum.lof_eq_of, ← DirectSum.of_mul_of,
    ← DirectSum.lof_eq_of R, mul_assoc]
  simp_rw [Int.cast_smul_eq_zsmul R, ← Units.smul_def, smul_smul, ← uzpow_add, add_mul, mul_add]
  congr 2
  abel

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variant8e0ff354601ccdf0dbee1f17d14224370fa1423ee56b456cbae41f4e71ac2c87.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ee8cd012f0f550712fc01902938e036c3a6b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
