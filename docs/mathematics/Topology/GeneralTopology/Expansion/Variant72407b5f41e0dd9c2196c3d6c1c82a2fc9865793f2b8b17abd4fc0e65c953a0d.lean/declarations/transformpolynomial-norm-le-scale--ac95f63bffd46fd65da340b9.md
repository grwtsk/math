# transformPolynomial_norm_le_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9c5db46-cc39-9e46-9062-23a7eea367e2",
  "kind": "theorem",
  "lexical_name": "transformPolynomial_norm_le_scale",
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
  "slug": "transformpolynomial-norm-le-scale--ac95f63bffd46fd65da340b9",
  "source": {
    "blob": "5642226a22f8e4aed7932e83090b4a56b70167d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac95f63bffd46fd65da340b9f86dff457296010c4914daf6ca8c43ef2286d1bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9c5db46-cc39-9e46-9062-23a7eea367e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transformPolynomial_norm_le_scale
    (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    ‖transformPolynomial ((A : ℂ) * z)‖ ≤
      266 * A ^ 4 * (1 + ‖z‖) ^ 4 := by
  have hnorm :
      ‖(A : ℂ) * z‖ = A * ‖z‖ := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (by linarith)]
  have hlin :
      1 + A * ‖z‖ ≤ A * (1 + ‖z‖) := by
    nlinarith [norm_nonneg z]
  have hpow :
      (1 + A * ‖z‖) ^ 4 ≤
        (A * (1 + ‖z‖)) ^ 4 :=
    pow_le_pow_left₀ (by positivity) hlin 4
  calc
    _ ≤ 266 * (1 + ‖(A : ℂ) * z‖) ^ 4 :=
      transformPolynomial_norm_le_one_add _
    _ = 266 * (1 + A * ‖z‖) ^ 4 := by rw [hnorm]
    _ ≤ 266 * (A * (1 + ‖z‖)) ^ 4 := by
      exact mul_le_mul_of_nonneg_left hpow (by norm_num)
    _ = _ := by ring

/-- The equation-(17) coefficient contributes fourteen inverse powers in the
large-zero tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5642226a22f8e4aed7932e83090b4a56b70167d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
