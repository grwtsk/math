# actualXiReturnDensity_origin_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6066891c-551b-6caf-21b9-613096f915df",
  "kind": "theorem",
  "lexical_name": "actualXiReturnDensity_origin_abs_le",
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
  "slug": "actualxireturndensity-origin-abs-le--45e5905dfb69536799e02fb9",
  "source": {
    "blob": "72490017df632992c32c43beee8c2b432c0fdf2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt05/Variant5d3de49c3a1ea53cc09a2a70ddad9aa77951df59934ab20431299b010dea3efe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45e5905dfb69536799e02fb97c063aedea5d90e7bfd6dcfe1902c6f34172e3a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt05/Variant5d3de49c3a1ea53cc09a2a70ddad9aa77951df59934ab20431299b010dea3efe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6066891c-551b-6caf-21b9-613096f915df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiReturnDensity_origin_abs_le {A t : ℝ} (hA : 91 ≤ A) :
    |actualDampedXiReturnDensity A t| ≤
      Real.exp (t / 2) * (67 / A ^ 4 + 5 / A ^ 2) * |t| := by
  have h3 := actualCorrelation_third_abs_le hA t
  have h1 := actualCorrelation_first_abs_le hA t
  unfold actualDampedXiReturnDensity
  simp only [iteratedDeriv_succ, iteratedDeriv_zero]
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  have hs := abs_sub
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t)
    (deriv (sourceCorrelation explicitSecondDerivative A) t / 4)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)] at hs
  have hh : |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t -
      deriv (sourceCorrelation explicitSecondDerivative A) t / 4| ≤
      (67 / A ^ 4 + 5 / A ^ 2) * |t| := by
    have hh1 : |deriv (sourceCorrelation explicitSecondDerivative A) t| / 4 ≤
        5 / A ^ 2 * |t| := by
      calc
        _ ≤ (20 / A ^ 2 * |t|) / 4 := div_le_div_of_nonneg_right h1 (by norm_num)
        _ = _ := by ring
    calc
      _ ≤ |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| +
          |deriv (sourceCorrelation explicitSecondDerivative A) t| / 4 := hs
      _ ≤ 67 / A ^ 4 * |t| + 5 / A ^ 2 * |t| := add_le_add h3 hh1
      _ = _ := by ring
  calc
    _ ≤ Real.exp (t / 2) * ((67 / A ^ 4 + 5 / A ^ 2) * |t|) :=
      mul_le_mul_of_nonneg_left hh (Real.exp_pos _).le
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt05/Variant5d3de49c3a1ea53cc09a2a70ddad9aa77951df59934ab20431299b010dea3efe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt05/Variant5d3de49c3a1ea53cc09a2a70ddad9aa77951df59934ab20431299b010dea3efe.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72490017df632992c32c43beee8c2b432c0fdf2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
