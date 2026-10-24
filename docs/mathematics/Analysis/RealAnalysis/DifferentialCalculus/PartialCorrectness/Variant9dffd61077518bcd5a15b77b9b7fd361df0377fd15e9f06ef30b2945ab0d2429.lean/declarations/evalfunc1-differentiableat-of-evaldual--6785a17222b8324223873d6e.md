# evalFunc1_differentiableAt_of_evalDual?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bf107ea2deeb87097242197ff29c69173d4a122",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a82b0e7c-3d55-5348-5015-0610535c4336",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:290858bd-0c0d-3f83-cee8-0945dc68c9d9",
  "kind": "theorem",
  "lexical_name": "evalFunc1_differentiableAt_of_evalDual?",
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
  "slug": "evalfunc1-differentiableat-of-evaldual--6785a17222b8324223873d6e",
  "source": {
    "blob": "8bf107ea2deeb87097242197ff29c69173d4a122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6785a17222b8324223873d6e72c5d23b6fb3ae68b4b59fa6f77f7c173b202e46",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:290858bd-0c0d-3f83-cee8-0945dc68c9d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalFunc1_differentiableAt_of_evalDual? (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (D : DualInterval) (x : ℝ) (hx : x ∈ I)
    (hsome : evalDual?1 e I = some D) :
    DifferentiableAt ℝ (evalFunc1 e) x := by
  induction hsupp generalizing D with
  | const q => exact differentiableAt_const _
  | var _ => exact differentiableAt_id
  | @add e₁ e₂ h₁ h₂ ih₁ ih₂ =>
    unfold evalDual?1 evalDual? at hsome
    cases heq₁ : evalDual? e₁ _ with
    | none => rw [heq₁] at hsome; exact absurd hsome (by simp)
    | some d₁ =>
      cases heq₂ : evalDual? e₂ _ with
      | none => rw [heq₁, heq₂] at hsome; exact absurd hsome (by simp)
      | some d₂ =>
        exact DifferentiableAt.add (ih₁ d₁ heq₁) (ih₂ d₂ heq₂)
  | @mul e₁ e₂ h₁ h₂ ih₁ ih₂ =>
    unfold evalDual?1 evalDual? at hsome
    cases heq₁ : evalDual? e₁ _ with
    | none => rw [heq₁] at hsome; exact absurd hsome (by simp)
    | some d₁ =>
      cases heq₂ : evalDual? e₂ _ with
      | none => rw [heq₁, heq₂] at hsome; exact absurd hsome (by simp)
      | some d₂ =>
        exact DifferentiableAt.mul (ih₁ d₁ heq₁) (ih₂ d₂ heq₂)
  | @neg e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      exact DifferentiableAt.neg (ih d heq)
  | @inv e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq] at hsome
      simp only [DualInterval.inv?] at hsome
      split at hsome
      · exact absurd hsome (by simp)
      · next hnotzero =>
        simp only [Option.some.injEq] at hsome
        have hval := evalDual?1_val_correct e' hs I d x hx heq
        -- Denominator is nonzero
        have hne : evalFunc1 e' x ≠ 0 := by
          intro heq_zero
          -- hval has type: Expr.eval (fun x_1 => x) e' ∈ d.val
          -- need to convert to: evalFunc1 e' x = 0
          have hval' : evalFunc1 e' x ∈ d.val := hval
          rw [heq_zero] at hval'
          simp only [IntervalRat.mem_def] at hval'
          simp only [IntervalRat.containsZero, not_and, not_le] at hnotzero
          rcases le_or_gt d.val.lo 0 with hlo | hlo
          · have hhi_nonneg : (0 : ℚ) ≤ d.val.hi := by
              have h : (0 : ℝ) ≤ d.val.hi := hval'.2
              exact_mod_cast h
            exact absurd (hnotzero hlo) (not_lt.mpr hhi_nonneg)
          · have hlo_pos : (0 : ℝ) < d.val.lo := by exact_mod_cast hlo
            exact absurd hval'.1 (not_le.mpr hlo_pos)
        exact DifferentiableAt.inv (ih d heq) hne
  | @sin e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      exact Real.differentiableAt_sin.comp x (ih d heq)
  | @cos e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      exact Real.differentiableAt_cos.comp x (ih d heq)
  | @exp e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      exact Real.differentiableAt_exp.comp x (ih d heq)
  | @log e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq] at hsome
      simp only [DualInterval.log?] at hsome
      split at hsome
      · next hpos =>
        simp only [Option.some.injEq] at hsome
        have hval := evalDual?1_val_correct e' hs I d x hx heq
        -- The argument is positive, so log is differentiable
        have hpos_x : 0 < evalFunc1 e' x := by
          have hval' : evalFunc1 e' x ∈ d.val := hval
          simp only [IntervalRat.mem_def] at hval'
          simp only [IntervalRat.isPositive] at hpos
          have hlo_pos : (0 : ℝ) < d.val.lo := by exact_mod_cast hpos
          exact lt_of_lt_of_le hlo_pos hval'.1
        exact Real.differentiableAt_log (ne_of_gt hpos_x) |>.comp x (ih d heq)
      · exact absurd hsome (by simp)
  | @atan e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      exact (Real.differentiable_arctan _).comp x (ih d heq)
  | @arsinh e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      exact (Real.differentiable_arsinh _).comp x (ih d heq)
  | @atanh _ _ _ =>
    -- evalDual? returns none for atanh, so hsome is a contradiction
    simp only [evalDual?1, evalDual?] at hsome
    contradiction
  | @sinc e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      -- sinc is differentiable everywhere
      -- sinc = dslope sin 0, which is differentiable:
      -- - At x ≠ 0: sinc x = sin x / x is differentiable
      -- - At x = 0: sinc is differentiable with derivative 0 (from sin's Taylor series)
      have hsinc_diff : Differentiable ℝ Real.sinc := Real.differentiable_sinc
      exact hsinc_diff.differentiableAt.comp x (ih d heq)
  | @erf e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      -- erf is differentiable everywhere using FTC
      -- erf(x) = (2/√π) * ∫₀ˣ exp(-t²) dt
      -- By FTC, the integral of a continuous function is differentiable
      have herf_diff : Differentiable ℝ Real.erf := by
        unfold Real.erf
        apply Differentiable.const_mul
        -- Use FTC: for continuous f, ∫ t in a..x, f t is differentiable in x
        intro y
        have hcont : Continuous (fun t => Real.exp (-(t^2))) :=
          Real.continuous_exp.comp (continuous_neg.comp (continuous_pow 2))
        exact (hcont.integral_hasStrictDerivAt 0 y).hasStrictFDerivAt.differentiableAt
      exact herf_diff.differentiableAt.comp x (ih d heq)
  | @sqrt e' hs ih =>
    unfold evalDual?1 evalDual? at hsome
    cases heq : evalDual? e' _ with
    | none => rw [heq] at hsome; exact absurd hsome (by simp)
    | some d =>
      rw [heq] at hsome
      simp only [DualInterval.sqrt?] at hsome
      split at hsome
      · next hpos =>
        simp only [Option.some.injEq] at hsome
        have hval := evalDual?1_val_correct e' hs I d x hx heq
        -- The argument is positive, so sqrt is differentiable
        have hpos_x : 0 < evalFunc1 e' x := by
          have hval' : evalFunc1 e' x ∈ d.val := hval
          simp only [IntervalRat.mem_def] at hval'
          simp only [IntervalRat.isPositive] at hpos
          have hlo_pos : (0 : ℝ) < d.val.lo := by exact_mod_cast hpos
          exact lt_of_lt_of_le hlo_pos hval'.1
        -- sqrt is differentiable at nonzero points
        have hne : evalFunc1 e' x ≠ 0 := ne_of_gt hpos_x
        exact (Real.hasDerivAt_sqrt hne).differentiableAt.comp x (ih d heq)
      · exact absurd hsome (by simp)
  | namedConst _ => exact differentiableAt_const _

/-- The derivative component of evalDual? is correct when it returns some.
    For a supported expression (with inv) evaluated at a point x in the interval I,
    the derivative of the expression lies in the computed derivative interval.

    This extends the AD correctness theorem to expressions with inv. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bf107ea2deeb87097242197ff29c69173d4a122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
