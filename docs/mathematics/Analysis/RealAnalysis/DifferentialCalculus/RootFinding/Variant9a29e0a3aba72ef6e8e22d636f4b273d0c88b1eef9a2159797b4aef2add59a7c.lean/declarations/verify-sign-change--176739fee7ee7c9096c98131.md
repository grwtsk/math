# verify_sign_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac7779d8-4006-28da-f891-67accc96e1d4",
  "kind": "theorem",
  "lexical_name": "verify_sign_change",
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
  "slug": "verify-sign-change--176739fee7ee7c9096c98131",
  "source": {
    "blob": "315d17660f460f5b4b197971d55addc12669fe53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 797,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:176739fee7ee7c9096c9813186445c3add89b94a1b1c71218b5cb07a1786a736",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac7779d8-4006-28da-f891-67accc96e1d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 797–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_sign_change (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (cfg : EvalConfig)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi))
    (h_cert : checkSignChange e I cfg = true) :
    ∃ x ∈ I, Expr.eval (fun _ => x) e = 0 := by
  simp only [checkSignChange, Bool.and_eq_true, Bool.or_eq_true, decide_eq_true_eq] at h_cert
  -- Extract domain validity from certificate
  have hdom_lo := checkDomainValid1_correct e (IntervalRat.singleton I.lo) cfg h_cert.1.1
  have hdom_hi := checkDomainValid1_correct e (IntervalRat.singleton I.hi) cfg h_cert.1.2
  -- Define f for convenience
  set f := fun x : ℝ => Expr.eval (fun _ => x) e with hf
  -- Get singleton memberships
  have hlo_sing : (I.lo : ℝ) ∈ IntervalRat.singleton I.lo := IntervalRat.mem_singleton I.lo
  have hhi_sing : (I.hi : ℝ) ∈ IntervalRat.singleton I.hi := IntervalRat.mem_singleton I.hi
  -- Apply evalIntervalCore1_correct to get bounds on f(lo) and f(hi)
  have hflo := evalIntervalCore1_correct e hsupp I.lo (IntervalRat.singleton I.lo) hlo_sing cfg hdom_lo
  have hfhi := evalIntervalCore1_correct e hsupp I.hi (IntervalRat.singleton I.hi) hhi_sing cfg hdom_hi
  simp only [IntervalRat.mem_def] at hflo hfhi
  -- Get the interval bound
  have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
  -- Extract sign change condition
  have h_sign := h_cert.2
  -- Handle the two cases of signChange
  cases h_sign with
  | inl hcase =>
    -- Case: f(lo).hi < 0 ∧ 0 < f(hi).lo, meaning f(lo) < 0 < f(hi)
    have hflo_neg : f I.lo < 0 := by
      have hbound : f I.lo ≤ (evalIntervalCore1 e (IntervalRat.singleton I.lo) cfg).hi := hflo.2
      have hcast : ((evalIntervalCore1 e (IntervalRat.singleton I.lo) cfg).hi : ℝ) < 0 := by
        exact_mod_cast hcase.1
      linarith
    have hfhi_pos : 0 < f I.hi := by
      have hbound : (evalIntervalCore1 e (IntervalRat.singleton I.hi) cfg).lo ≤ f I.hi := hfhi.1
      have hcast : (0 : ℝ) < (evalIntervalCore1 e (IntervalRat.singleton I.hi) cfg).lo := by
        exact_mod_cast hcase.2
      linarith
    -- Apply IVT: since f(lo) < 0 < f(hi), 0 ∈ Icc (f lo) (f hi) ⊆ f '' Icc lo hi
    have h0_in_range : (0 : ℝ) ∈ Set.Icc (f I.lo) (f I.hi) := ⟨le_of_lt hflo_neg, le_of_lt hfhi_pos⟩
    have hivt := intermediate_value_Icc (α := ℝ) (δ := ℝ) hle hCont
    have h0_in_image := hivt h0_in_range
    obtain ⟨c, hc_mem, hc_eq⟩ := h0_in_image
    refine ⟨c, ?_, hc_eq⟩
    simp only [IntervalRat.mem_def]
    exact hc_mem
  | inr hcase =>
    -- Case: f(hi).hi < 0 ∧ 0 < f(lo).lo, meaning f(hi) < 0 < f(lo)
    have hfhi_neg : f I.hi < 0 := by
      have hbound : f I.hi ≤ (evalIntervalCore1 e (IntervalRat.singleton I.hi) cfg).hi := hfhi.2
      have hcast : ((evalIntervalCore1 e (IntervalRat.singleton I.hi) cfg).hi : ℝ) < 0 := by
        exact_mod_cast hcase.1
      linarith
    have hflo_pos : 0 < f I.lo := by
      have hbound : (evalIntervalCore1 e (IntervalRat.singleton I.lo) cfg).lo ≤ f I.lo := hflo.1
      have hcast : (0 : ℝ) < (evalIntervalCore1 e (IntervalRat.singleton I.lo) cfg).lo := by
        exact_mod_cast hcase.2
      linarith
    -- f '' [lo, hi] is an interval containing both f(lo) and f(hi)
    have hflo_in_image : f I.lo ∈ f '' Set.Icc (↑I.lo) (↑I.hi) :=
      Set.mem_image_of_mem f (Set.left_mem_Icc.mpr hle)
    have hfhi_in_image : f I.hi ∈ f '' Set.Icc (↑I.lo) (↑I.hi) :=
      Set.mem_image_of_mem f (Set.right_mem_Icc.mpr hle)
    -- The image is connected (as continuous image of connected set)
    have hconn : IsConnected (f '' Set.Icc (↑I.lo) (↑I.hi)) :=
      (isConnected_Icc hle).image f hCont
    -- Use IsConnected.Icc_subset: the image contains [f(hi), f(lo)] since it's connected
    have hsub := hconn.Icc_subset hfhi_in_image hflo_in_image
    have h0_mem : (0 : ℝ) ∈ Set.Icc (f I.hi) (f I.lo) := ⟨le_of_lt hfhi_neg, le_of_lt hflo_pos⟩
    have h0_in_img := hsub h0_mem
    obtain ⟨c, hc_mem, hc_eq⟩ := h0_in_img
    refine ⟨c, ?_, hc_eq⟩
    simp only [IntervalRat.mem_def]
    exact hc_mem

/-! ### Bisection-Based Root Existence -/

/-- Check if bisection finds a root (returns hasRoot for some sub-interval).
    This runs the bisection algorithm and checks if any interval has hasRoot status.

    Note: This is noncomputable because bisectRoot uses evalInterval1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean#L797).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `315d17660f460f5b4b197971d55addc12669fe53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
