# transform_square_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5af186a99e2103e66b20b5c51058d1ea3f378055",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ce356ef-e6ba-8fe8-28fd-8030b2ba3e42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96dc1bfc-0d3b-3be2-c63f-280b3d8a84ac",
  "kind": "theorem",
  "lexical_name": "transform_square_norm_le",
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
  "slug": "transform-square-norm-le--e9703b85b2b84fb3b60db40c",
  "source": {
    "blob": "5af186a99e2103e66b20b5c51058d1ea3f378055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 102,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9703b85b2b84fb3b60db40cd24eb58cf51b81d36f531d56917d760f35e192fb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96dc1bfc-0d3b-3be2-c63f-280b3d8a84ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transform_square_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z ^ 2‖ ≤
      (64 * decayConstant A ^ 2) * (1 + ‖z‖) ^ (-6 : ℝ) := by
  have hr : 0 < ‖z‖ := by linarith
  have hr1 : 0 < 1 + ‖z‖ := by positivity
  have hpow : (1 + ‖z‖) ^ 6 ≤ 64 * ‖z‖ ^ 6 := by
    calc
      _ ≤ (2 * ‖z‖) ^ 6 := by gcongr; linarith
      _ = _ := by ring
  have hinv : 1 / ‖z‖ ^ 6 ≤ 64 / (1 + ‖z‖) ^ 6 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    simpa only [one_mul] using hpow
  have hs := pow_le_pow_left₀ (norm_nonneg (bilateralTransform A z))
    (transform_norm_le A hA z hzre hz) 2
  calc
    _ ≤ (decayConstant A / ‖z‖ ^ 3) ^ 2 := by simpa only [norm_pow] using hs
    _ = decayConstant A ^ 2 * (1 / ‖z‖ ^ 6) := by ring
    _ ≤ decayConstant A ^ 2 * (64 / (1 + ‖z‖) ^ 6) :=
      mul_le_mul_of_nonneg_left hinv (sq_nonneg _)
    _ = _ := by
      rw [show (-6 : ℝ) = -(6 : ℕ) by norm_num, Real.rpow_neg hr1.le,
        Real.rpow_natCast]
      ring

/-- Only finitely many actual occurrence slots have shifted norm below one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroSquareAxioms/Varianta5cd53d9d3a35ec1845fdd0ed70734217106222522492e6bc9f4df64ee8c51ad.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af186a99e2103e66b20b5c51058d1ea3f378055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
