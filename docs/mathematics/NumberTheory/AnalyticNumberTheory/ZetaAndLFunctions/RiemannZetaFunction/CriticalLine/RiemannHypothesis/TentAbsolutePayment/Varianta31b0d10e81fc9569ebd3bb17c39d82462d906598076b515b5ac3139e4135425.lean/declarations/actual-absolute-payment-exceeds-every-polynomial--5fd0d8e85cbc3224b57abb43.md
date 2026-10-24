# actual_absolute_payment_exceeds_every_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe3394e0-141a-aa1e-f42c-ba99d39fb917",
  "kind": "theorem",
  "lexical_name": "actual_absolute_payment_exceeds_every_polynomial",
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
  "slug": "actual-absolute-payment-exceeds-every-polynomial--5fd0d8e85cbc3224b57abb43",
  "source": {
    "blob": "9e030d29cba1687a8818237b6994bcf3eaf4829e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Varianta31b0d10e81fc9569ebd3bb17c39d82462d906598076b515b5ac3139e4135425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fd0d8e85cbc3224b57abb4370f38972daf78527fe14ee40799a936775d0ca6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Varianta31b0d10e81fc9569ebd3bb17c39d82462d906598076b515b5ac3139e4135425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe3394e0-141a-aa1e-f42c-ba99d39fb917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_absolute_payment_exceeds_every_polynomial (C : ℝ) (m : ℕ)
    {R : ℝ} (hR : 1 ≤ R) :
    ∃ t : ℝ, R ≤ t ∧ C * t ^ m < logarithmicAbsoluteMass t := by
  have hevent : ∀ᶠ u : ℝ in atTop,
      24 * C * (2 : ℝ) ^ m + 1 < Real.exp u / u ^ m :=
    (Real.tendsto_exp_div_pow_atTop m).eventually
      (eventually_gt_atTop (24 * C * (2 : ℝ) ^ m + 1))
  obtain ⟨U, hU⟩ := eventually_atTop.mp hevent
  let u := max U (max R (max (Real.log 6) 1))
  have huU : U ≤ u := le_max_left _ _
  have huR : R ≤ u := (le_max_left _ _).trans (le_max_right _ _)
  have huL : Real.log 6 ≤ u :=
    (le_max_left _ _).trans ((le_max_right _ _).trans (le_max_right _ _))
  have hu1 : 1 ≤ u := hR.trans huR
  have hu0 : 0 < u := by linarith
  have hp : 0 < u ^ m := pow_pos hu0 _
  have hbig := (lt_div_iff₀ hp).mp (hU u huU)
  have hlow := literal_logarithmic_lower (by linarith : Real.log 6 ≤ 2 * u)
  rw [show 2 * u / 2 = u by ring] at hlow
  refine ⟨2 * u, by linarith, ?_⟩
  rw [mul_pow]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Varianta31b0d10e81fc9569ebd3bb17c39d82462d906598076b515b5ac3139e4135425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Varianta31b0d10e81fc9569ebd3bb17c39d82462d906598076b515b5ac3139e4135425.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e030d29cba1687a8818237b6994bcf3eaf4829e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
