# margin_reciprocal_le_error_of_small_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05908ded-c079-d4e0-ed31-46a20e91302b",
  "kind": "theorem",
  "lexical_name": "margin_reciprocal_le_error_of_small_card",
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
  "slug": "margin-reciprocal-le-error-of-small-card--b9e297959f3d16b6e83da7c6",
  "source": {
    "blob": "a54fcae51d539345f95e852a6623b313c05ada0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 127,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9e297959f3d16b6e83da7c6e6d86c3d8ee52fc562d3a9296dfc14ab87c1f8a4",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05908ded-c079-d4e0-ed31-46a20e91302b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem margin_reciprocal_le_error_of_small_card
    (n m : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    (hmn : m ≤ n) {ε : ℝ} (hε : 0 < ε)
    (hcard : (n : ℝ) ≤ sliceThreshold ε ^ 2) :
    1 / (ε * n) ≤
      largerSliceConstant ε * Real.sqrt (Real.log n) /
        ((n : ℝ) * Real.sqrt m) := by
  have hthreshold : 0 < sliceThreshold ε := by
    unfold sliceThreshold
    exact div_pos
      (mul_pos (by norm_num) source_constant_positive) hε
  have hmnR : (m : ℝ) ≤ n := by exact_mod_cast hmn
  have hrootM : Real.sqrt m ≤ sliceThreshold ε := by
    apply (sq_le_sq₀
      (Real.sqrt_nonneg (m : ℝ)) hthreshold.le).mp
    rw [Real.sq_sqrt (by positivity : (0 : ℝ) ≤ m)]
    exact hmnR.trans hcard
  have hrootL := sqrt_log_ge_half n hn
  have hcoef0 : 0 ≤ largerSliceConstant ε * ε :=
    mul_nonneg (larger_constant_positive hε).le hε.le
  have hscale :
      sliceThreshold ε ≤
        largerSliceConstant ε * ε * Real.sqrt (Real.log n) := by
    calc
      _ = largerSliceConstant ε * ε / 2 :=
        (larger_constant_half_mul hε).symm
      _ ≤ _ := by
        simpa only [div_eq_mul_inv, one_mul] using
          mul_le_mul_of_nonneg_left hrootL hcoef0
  exact margin_reciprocal_le_error n m hn hm hε
    (hrootM.trans hscale)

/-- The small-sample branch needs no large-cardinality hypothesis.
Using `C ≥ 1` avoids introducing `sqrt C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a54fcae51d539345f95e852a6623b313c05ada0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
