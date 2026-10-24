# riemannZeta_half_real_euler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4b20568-140c-464b-c26e-a82ee2efeb54",
  "kind": "theorem",
  "lexical_name": "riemannZeta_half_real_euler",
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
  "slug": "riemannzeta-half-real-euler--5d7aa7eea32abde64d02b90b",
  "source": {
    "blob": "6549633d5465a18c253ebcde979aac5de984439d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Db61d8795f65aea0e2eaActualSamplingConstant/Variant53edc29d3bb8ca2424d554035d5bc85ffce9688b4b3051eda15371957f5e05e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d7aa7eea32abde64d02b90bfa7f74a55f268768fbbd8955e199a8bcbbff058f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Db61d8795f65aea0e2eaActualSamplingConstant/Variant53edc29d3bb8ca2424d554035d5bc85ffce9688b4b3051eda15371957f5e05e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b20568-140c-464b-c26e-a82ee2efeb54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_half_real_euler :
    (riemannZeta (1 / 2 : ℂ)).re =
      -(3 : ℝ) / 2 + (1 / 2 : ℝ) *
        ∫ u in Ioi (1 : ℝ), ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-(3 : ℝ) / 2) := by
  have hz := Zeta0EqZeta (N := 1) (by norm_num)
    (s := (1 / 2 : ℂ)) (by norm_num) (by norm_num)
  have he : (∫ u in Ioi (1 : ℝ),
      ((⌊u⌋ : ℂ) + 1 / 2 - u) * (u : ℂ) ^ (-((1 / 2 : ℂ) + 1))) =
      Complex.ofReal (∫ u in Ioi (1 : ℝ),
        ((⌊u⌋ : ℝ) + 1 / 2 - u) * (u ^ (-(3 : ℝ) / 2) : ℝ)) := by
    rw [← integral_complex_ofReal]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro u hu
    dsimp only
    have hu0 : 0 ≤ u := (by norm_num : (0 : ℝ) < 1).le.trans hu.le
    rw [show -((1 / 2 : ℂ) + 1) = ((-(3 : ℝ) / 2 : ℝ) : ℂ) by norm_num,
      ← Complex.ofReal_cpow hu0]
    push_cast
    rfl
  unfold riemannZeta0 at hz
  simp only [div_cpow_eq_cpow_neg, Nat.cast_one] at hz
  rw [he] at hz
  norm_num [Finset.sum_range_succ] at hz
  apply_fun Complex.re at hz
  simp only [Complex.add_re, Complex.mul_re,
    Complex.div_re, Complex.ofReal_re, Complex.ofReal_im] at hz
  norm_num at hz
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Db61d8795f65aea0e2eaActualSamplingConstant/Variant53edc29d3bb8ca2424d554035d5bc85ffce9688b4b3051eda15371957f5e05e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Db61d8795f65aea0e2eaActualSamplingConstant/Variant53edc29d3bb8ca2424d554035d5bc85ffce9688b4b3051eda15371957f5e05e4.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6549633d5465a18c253ebcde979aac5de984439d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
