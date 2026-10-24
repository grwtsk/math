# gaussian_zero_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0deeefa-dca6-72e2-c076-89612f77b9b8",
  "kind": "theorem",
  "lexical_name": "gaussian_zero_lt",
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
  "slug": "gaussian-zero-lt--90e81a4fa50fb99c92382f35",
  "source": {
    "blob": "c9a5bb3161f7658c9687037c08d8eccac0e6f1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 24,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90e81a4fa50fb99c92382f3574f05ad9891b6acf1fce64ed6b79510fc5c3fb42",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0deeefa-dca6-72e2-c076-89612f77b9b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gaussian_zero_lt : gaussianMode 3 0 < 1 / 16 := by
  have h := pow_lt_pow_left₀ exp_three_gt_sixteen (by norm_num : (0 : ℝ) ≤ 16)
    (by decide : (3 : ℕ) ≠ 0)
  have he : Real.exp (9 : ℝ) = Real.exp 3 ^ 3 := by
    convert! Real.exp_nat_mul (3 : ℝ) 3 using 1
    norm_num
  norm_num [gaussianMode, Real.exp_neg] at h ⊢
  rw [he]
  apply (div_lt_iff₀ (by positivity)).mpr
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9a5bb3161f7658c9687037c08d8eccac0e6f1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
