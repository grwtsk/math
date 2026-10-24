# literal_half_integer_native_readout_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe16afbe-ef70-9b72-ba3b-eb07953ad66a",
  "kind": "theorem",
  "lexical_name": "literal_half_integer_native_readout_lower",
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
  "slug": "literal-half-integer-native-readout-lower--0cbbd6d512df29dacbfbc847",
  "source": {
    "blob": "8e22936d6338a5e35d624c506e5e5cdc319f5c0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCountermodel/Variant1c2c13790a8e8674b1191e51980648d57ab7598ef2c41c33ac67cdf82d408014.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cbbd6d512df29dacbfbc8474f5e577fdd9e8f910bec540489dfd2592c2e24b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCountermodel/Variant1c2c13790a8e8674b1191e51980648d57ab7598ef2c41c33ac67cdf82d408014.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe16afbe-ef70-9b72-ba3b-eb07953ad66a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_half_integer_native_readout_lower (n : ℕ) (hn : 100 ≤ n) :
    (9 / 8) * (Real.exp (((n : ℝ) + 1 / 2) / 2) / ((n : ℝ) + 1 / 2) ^ 9) ≤
      densityReadout ((n : ℝ) + 1 / 2) := by
  have hnR : (100 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have hA : (100 : ℝ) ≤ (n : ℝ) + 1 / 2 := by linarith
  have h := literal_native_density_full_moment_error (by linarith : 1 ≤ (n : ℝ) + 1 / 2)
  rw [literal_half_integer_selected_source_formula n (by linarith : 1 ≤ (n : ℝ) + 1 / 2)] at h
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] at h
  have hr := (literal_endpoint_correction_square_real_bounds hA).1
  have hM := literal_mode_magnitude_gt_eight hA
  have hML := literal_mode_magnitude_lower hA
  have hl := (abs_le.mp h).1
  have hquarter : (1 / 4) * modeMagnitude ((n : ℝ) + 1 / 2) ≤
      densityReadout ((n : ℝ) + 1 / 2) := by nlinarith
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCountermodel/Variant1c2c13790a8e8674b1191e51980648d57ab7598ef2c41c33ac67cdf82d408014.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCountermodel/Variant1c2c13790a8e8674b1191e51980648d57ab7598ef2c41c33ac67cdf82d408014.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e22936d6338a5e35d624c506e5e5cdc319f5c0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
