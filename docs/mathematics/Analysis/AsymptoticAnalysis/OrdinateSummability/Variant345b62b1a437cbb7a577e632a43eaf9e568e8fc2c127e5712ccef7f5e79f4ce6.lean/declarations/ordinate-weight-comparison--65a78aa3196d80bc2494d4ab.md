# ordinate_weight_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7f1be7c-51b2-c735-c0d5-8113218b37d2",
  "kind": "theorem",
  "lexical_name": "ordinate_weight_comparison",
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
  "slug": "ordinate-weight-comparison--65a78aa3196d80bc2494d4ab",
  "source": {
    "blob": "f57efc8b9a8245cc29b6a272efedea83c1db5f1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 26,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant345b62b1a437cbb7a577e632a43eaf9e568e8fc2c127e5712ccef7f5e79f4ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a78aa3196d80bc2494d4abfbad0c179462d621dfa6fd7a3fbb5a4b1c155494",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant345b62b1a437cbb7a577e632a43eaf9e568e8fc2c127e5712ccef7f5e79f4ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7f1be7c-51b2-c735-c0d5-8113218b37d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinate_weight_comparison (T : ℝ) (hT : 3/2 ≤ T)
    (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).im) :
    1/(max T (ZeroObject.shiftedValue o).im)^6 ≤
      64*(1+‖ZeroObject.shiftedValue o‖)^(-6 : ℝ) := by
  let z := ZeroObject.shiftedValue o
  have hr : |z.re| ≤ (1/2 : ℝ) := by
    rw [abs_le]
    exact ⟨(ZeroObject.shiftedValue_strip o).1.le, (ZeroObject.shiftedValue_strip o).2.le⟩
  have hn : ‖z‖ ≤ 1/2+z.im := by
    have h := Complex.norm_le_abs_re_add_abs_im z
    rw [abs_of_pos ho] at h
    linarith
  have hp : 0 < max T z.im := ho.trans_le (le_max_right _ _)
  have hm : 1+‖z‖ ≤ 2*max T z.im := by
    have ht := hT.trans (le_max_left T z.im)
    have hi := le_max_right T z.im
    linarith
  have hs := pow_le_pow_left₀ (by positivity : (0 : ℝ) ≤ 1+‖z‖) hm 6
  have hw : (1+‖z‖)^(-6 : ℝ) = 1/(1+‖z‖)^6 := by
    rw [show (-6 : ℝ) = -((6 : ℕ) : ℝ) by norm_num,
      Real.rpow_neg (by positivity), Real.rpow_natCast]
    simp only [one_div]
  change 1/(max T z.im)^6 ≤ 64*(1+‖z‖)^(-6 : ℝ)
  rw [hw, ← mul_div_assoc, mul_one]
  apply (div_le_div_iff₀ (pow_pos hp _) (by positivity : (0 : ℝ) < (1+‖z‖)^6)).2
  simpa only [mul_pow, one_mul, show (2 : ℝ)^6=64 by norm_num] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant345b62b1a437cbb7a577e632a43eaf9e568e8fc2c127e5712ccef7f5e79f4ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant345b62b1a437cbb7a577e632a43eaf9e568e8fc2c127e5712ccef7f5e79f4ce6.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f57efc8b9a8245cc29b6a272efedea83c1db5f1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
