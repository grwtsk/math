# eLpNorm_smul_measure_of_ne_zero_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d38a4373-bfd5-d96a-2c89-605cbb20c097",
  "kind": "theorem",
  "lexical_name": "eLpNorm_smul_measure_of_ne_zero_of_ne_top",
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
  "slug": "elpnorm-smul-measure-of-ne-zero-of-ne-top--e4ff7494ebb7a8a16a5409aa",
  "source": {
    "blob": "624840488e6c617cbdb0e982148df08dc075ea6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 921,
    "line": 912,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4ff7494ebb7a8a16a5409aa2a1fd8e099f856ae3e2772ccc73d3b47fd3dd5d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d38a4373-bfd5-d96a-2c89-605cbb20c097`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 912–921.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eLpNorm_smul_measure_of_ne_zero_of_ne_top {p : ℝ≥0∞} (hp_ne_zero : p ≠ 0)
    (hp_ne_top : p ≠ ∞) {f : α → ε} (c : ℝ≥0∞) :
    eLpNorm f p (c • μ) = c ^ (1 / p).toReal • eLpNorm f p μ := by
  simp_rw [eLpNorm_eq_eLpNorm' hp_ne_zero hp_ne_top]
  rw [eLpNorm'_smul_measure ENNReal.toReal_nonneg]
  congr
  simp_rw [one_div]
  rw [ENNReal.toReal_inv]

/-- See `eLpNorm_smul_measure_of_ne_zero'` for a version with scalar multiplication by `ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean#L912).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624840488e6c617cbdb0e982148df08dc075ea6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
