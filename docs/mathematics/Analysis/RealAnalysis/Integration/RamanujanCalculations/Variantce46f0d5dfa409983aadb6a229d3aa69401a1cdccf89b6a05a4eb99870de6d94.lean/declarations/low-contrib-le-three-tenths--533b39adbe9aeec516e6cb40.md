# low_contrib_le_three_tenths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1af89846-ef93-a4ee-f0cc-340916a83512",
  "kind": "theorem",
  "lexical_name": "low_contrib_le_three_tenths",
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
  "slug": "low-contrib-le-three-tenths--533b39adbe9aeec516e6cb40",
  "source": {
    "blob": "570e76c38ddee829cb5740278651fdf506e91cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 232,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:533b39adbe9aeec516e6cb407e5efb0e3aed8615d6442bb0b9e535b66ebfc7ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af89846-ef93-a4ee-f0cc-340916a83512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem low_contrib_le_three_tenths :
    (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) *
      (exp (-(44 : ℝ)) / (3870 : ℝ) ^ 7
        + 7 * (exp (-(1979 : ℝ)) / (log 2) ^ 8
          + (2 : ℝ) ^ 8 * exp (-(44 : ℝ)) / (3870 : ℝ) ^ 8))
      ≤ (3 : ℝ) / 10 := by
  have hAcoeff :
      (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) / (3870 : ℝ) ^ 7 ≤
        (30000000000000000 : ℝ) := by
    norm_num
  have hCcoeff :
      (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * (7 * (2 : ℝ) ^ 8) / (3870 : ℝ) ^ 8
        ≤ (20000000000000000 : ℝ) := by
    norm_num
  have hBcoeff0 :
      (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * 7 ≤
        (30000000000000000000000000000000000000000000 : ℝ) := by
    norm_num
  have hA :
      (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * exp (-(44 : ℝ)) / (3870 : ℝ) ^ 7 ≤
        (1 : ℝ) / 20 := by
    rw [show (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * exp (-(44 : ℝ)) / (3870 : ℝ) ^ 7
        = ((3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) / (3870 : ℝ) ^ 7) *
            exp (-(44 : ℝ)) by ring]
    exact le_trans (mul_le_mul hAcoeff exp_neg44_small (by positivity) (by positivity))
      (by norm_num)
  have hC :
      (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) *
        (7 * (2 : ℝ) ^ 8) * exp (-(44 : ℝ)) / (3870 : ℝ) ^ 8 ≤ (1 : ℝ) / 20 := by
    rw [show (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) *
          (7 * (2 : ℝ) ^ 8) * exp (-(44 : ℝ)) / (3870 : ℝ) ^ 8
        = ((3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * (7 * (2 : ℝ) ^ 8) /
              (3870 : ℝ) ^ 8) * exp (-(44 : ℝ)) by ring]
    exact le_trans (mul_le_mul hCcoeff exp_neg44_small (by positivity) (by positivity))
      (by norm_num)
  have hB :
      (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * 7 *
        (exp (-(1979 : ℝ)) / (log 2) ^ 8) ≤ (1 : ℝ) / 20 := by
    have hBcoeff :
        (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * 7 / (log 2) ^ 8
          ≤ (30000000000000000000000000000000000000000000 : ℝ) * 1000 := by
      rw [show (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * 7 / (log 2) ^ 8
          = ((3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * 7) * (1 / (log 2) ^ 8) by ring]
      exact le_trans (mul_le_mul_of_nonneg_left inv_log2_pow8_le_1000 (by positivity))
        (mul_le_mul_of_nonneg_right hBcoeff0 (by positivity))
    rw [show (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * 7 *
          (exp (-(1979 : ℝ)) / (log 2) ^ 8)
        = ((3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * 7 / (log 2) ^ 8) *
            exp (-(1979 : ℝ)) by ring]
    exact le_trans (mul_le_mul hBcoeff exp_neg1979_small (by positivity) (by positivity))
      (by norm_num)
  have hrewrite_main :
      (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) *
        (exp (-(44 : ℝ)) / (3870 : ℝ) ^ 7
          + 7 * (exp (-(1979 : ℝ)) / (log 2) ^ 8
            + (2 : ℝ) ^ 8 * exp (-(44 : ℝ)) / (3870 : ℝ) ^ 8))
      = (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * exp (-(44 : ℝ)) / (3870 : ℝ) ^ 7
        + (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) * 7 *
            (exp (-(1979 : ℝ)) / (log 2) ^ 8)
        + (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) *
            (7 * (2 : ℝ) ^ 8) * exp (-(44 : ℝ)) / (3870 : ℝ) ^ 8 := by
    ring
  rw [hrewrite_main]
  nlinarith [hA, hB, hC]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570e76c38ddee829cb5740278651fdf506e91cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
