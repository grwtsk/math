# exact_source_power_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af90b7c0-5679-5015-7c9e-a8aece87c31f",
  "kind": "theorem",
  "lexical_name": "exact_source_power_ratio",
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
  "slug": "exact-source-power-ratio--42551f64de09f4d8f70ec770",
  "source": {
    "blob": "c8f6354f4ebf4d2435667c0ed5bbad0ee4207123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 28,
    "path": "GRWTSK/Analysis/TriangularPulseRealP/Variant16a794a7e2be7308c607bd6b2abf6b656d9c9ead2433ff1cd8af8be7b5278c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42551f64de09f4d8f70ec7706a1281ca0ea030b505399b0fba36884a90077572",
  "verification": {
    "reference": "docs/verification/Analysis/TriangularPulseRealP/Variant16a794a7e2be7308c607bd6b2abf6b656d9c9ead2433ff1cd8af8be7b5278c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af90b7c0-5679-5015-7c9e-a8aece87c31f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exact_source_power_ratio {m a : ℝ} (hm : 0 < m) (ha : 0 ≤ a) (p : ℝ) :
    (a / (16 * m)) ^ p / (3 / m ^ 2) ^ (p - 1) =
      a ^ p / ((16 : ℝ) ^ p * (3 : ℝ) ^ (p - 1)) * m ^ (p - 2) := by
  have hmp : (m ^ (2 : ℕ)) ^ (p - 1) = m ^ (2 * (p - 1)) := by
    rw [← Real.rpow_natCast m 2, ← Real.rpow_mul hm.le]
    norm_num
  rw [Real.div_rpow ha (by positivity), Real.mul_rpow (by norm_num) hm.le,
    Real.div_rpow (by norm_num : (0 : ℝ) ≤ 3) (sq_nonneg m), hmp]
  rw [show (2 : ℝ) * (p - 1) = (p - 2) + p by ring, Real.rpow_add hm]
  field_simp [(Real.rpow_pos_of_pos hm p).ne',
    (Real.rpow_pos_of_pos hm (p - 2)).ne',
    (Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 16) p).ne',
    (Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 3) (p - 1)).ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TriangularPulseRealP/Variant16a794a7e2be7308c607bd6b2abf6b656d9c9ead2433ff1cd8af8be7b5278c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TriangularPulseRealP/Variant16a794a7e2be7308c607bd6b2abf6b656d9c9ead2433ff1cd8af8be7b5278c78.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8f6354f4ebf4d2435667c0ed5bbad0ee4207123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
