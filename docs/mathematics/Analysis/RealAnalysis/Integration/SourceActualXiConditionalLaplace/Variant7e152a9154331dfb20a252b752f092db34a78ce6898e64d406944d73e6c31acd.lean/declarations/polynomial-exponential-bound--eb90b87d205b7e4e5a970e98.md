# polynomial_exponential_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0a21e25-4f6b-9b69-38df-efee0b2fc927",
  "kind": "theorem",
  "lexical_name": "polynomial_exponential_bound",
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
  "slug": "polynomial-exponential-bound--eb90b87d205b7e4e5a970e98",
  "source": {
    "blob": "018b783375b2c7473c330ffd2cefda523a5412e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 118,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb90b87d205b7e4e5a970e989dc65e0657a7df161a762518db0ba1b5a7db58fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0a21e25-4f6b-9b69-38df-efee0b2fc927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem polynomial_exponential_bound {M T₀ σ b : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ) (hb : Real.log 7 ≤ b) :
    (∫ t in Real.log 7..b, M * (t + T₀) * Real.exp (-σ * t)) ≤
      M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * Real.log 7) := by
  let q : ℝ → ℝ := fun t => -M * ((t + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * t)
  have hi : IntervalIntegrable (fun t => M * (t + T₀) * Real.exp (-σ * t))
      volume (Real.log 7) b := (by fun_prop : Continuous _).intervalIntegrable _ _
  have hd (t : ℝ) : HasDerivAt q (M * (t + T₀) * Real.exp (-σ * t)) t := by
    have hlin := (((hasDerivAt_id t).add_const T₀).div_const σ).add_const (1 / σ ^ 2)
    have hexp := ((hasDerivAt_id t).const_mul (-σ)).exp
    convert (hlin.const_mul (-M)).mul hexp using 1 <;> first | rfl | skip
    dsimp
    field_simp
    ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hi
  rw [he]
  have hq : q b ≤ 0 := by
    have hb0 := lower_nonneg.trans hb
    have hT0 := lower_nonneg.trans hT₀
    dsimp [q]
    have hp : 0 ≤ (b + T₀) / σ + 1 / σ ^ 2 := by positivity
    exact mul_nonpos_of_nonpos_of_nonneg
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hM) hp) (Real.exp_pos _).le
  dsimp [q] at hq ⊢
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `018b783375b2c7473c330ffd2cefda523a5412e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
