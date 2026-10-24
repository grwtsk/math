# actual_sixth_bump_moment_edge_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f4c7016-233f-ef6d-ba70-c93ce3cca319",
  "kind": "theorem",
  "lexical_name": "actual_sixth_bump_moment_edge_lower",
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
  "slug": "actual-sixth-bump-moment-edge-lower--d4d4d166c6c1df7e9dae8173",
  "source": {
    "blob": "d9e23669f6630852e9664ff3161c86bfcf18b60f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4d4d166c6c1df7e9dae8173401f0d7a428f3c5c0f9c3434f53835e53d6672c4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f4c7016-233f-ef6d-ba70-c93ce3cca319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_bump_moment_edge_lower {A : ℝ} (hA : 8 ≤ A) :
    Real.exp ((A - 2) / 6) / (A ^ 4 * Real.sqrt A) ≤ bumpMoment A (1 / 6) := by
  have hA1 : 1 ≤ A := by linarith
  let S := Icc (A - 2) (A - 1)
  let f := fun x : ℝ ↦ Real.exp ((1 / 6) * x) * scaledBump A x
  let b := Real.exp ((A - 2) / 6) / (A ^ 4 * Real.sqrt A)
  have hf : Integrable f volume := weighted_bump_genuinely_integrable hA1 _
  have hc : IntegrableOn (fun _ : ℝ ↦ b) S := continuous_const.integrableOn_Icc
  have hl (x : ℝ) (hx : x ∈ S) : b ≤ f x := by
    have he : Real.exp ((A - 2) / 6) ≤ Real.exp ((1 / 6) * x) :=
      Real.exp_le_exp.mpr (by dsimp only [S] at hx; linarith [hx.1])
    have hb := actual_bump_edge_unit_lower hA
      (by dsimp only [S] at hx; linarith [hx.2] : 1 ≤ A - x)
      (by dsimp only [S] at hx; linarith [hx.1] : A - x ≤ 2)
    have hb' : 1 / (A ^ 4 * Real.sqrt A) ≤ scaledBump A x := by simpa using hb
    dsimp only [b, f]
    have hm := mul_le_mul he hb' (by positivity) (Real.exp_pos _).le
    simpa only [mul_one_div] using hm
  have hs := setIntegral_mono_on hc hf.integrableOn measurableSet_Icc hl
  have hfull : (∫ x in S, f x) ≤ bumpMoment A (1 / 6) :=
    setIntegral_le_integral hf (Filter.Eventually.of_forall
      (fun x ↦ mul_nonneg (Real.exp_pos _).le (actual_bump_globally_nonnegative hA1 x)))
  have hvalue : (∫ _ in S, b) = b := by
    rw [setIntegral_const]
    dsimp only [S]
    rw [Real.volume_real_Icc_of_le (by linarith : A - 2 ≤ A - 1)]
    simp only [smul_eq_mul]
    ring
  rw [hvalue] at hs
  exact hs.trans hfull

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9e23669f6630852e9664ff3161c86bfcf18b60f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
