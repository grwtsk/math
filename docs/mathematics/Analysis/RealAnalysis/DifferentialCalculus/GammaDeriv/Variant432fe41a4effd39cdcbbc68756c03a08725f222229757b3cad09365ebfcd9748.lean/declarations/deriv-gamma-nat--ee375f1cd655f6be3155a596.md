# deriv_Gamma_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8f60a3b-3ba0-b573-151a-82a9358a16b4",
  "kind": "lemma",
  "lexical_name": "deriv_Gamma_nat",
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
  "slug": "deriv-gamma-nat--ee375f1cd655f6be3155a596",
  "source": {
    "blob": "f0c52719ee8db7a33e2c399748d854dd5b12ab6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee375f1cd655f6be3155a5965a64d40b64d07beac8d2eb71a8cfc8092e753c75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8f60a3b-3ba0-b573-151a-82a9358a16b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deriv_Gamma_nat (n : ℕ) :
    deriv Gamma (n + 1) = n ! * (-γ + harmonic n) := by
  /- This follows from two properties of the function `f n = log (Gamma n)`:
  firstly, the elementary computation that `deriv f (n + 1) = deriv f n + 1 / n`, so that
  `deriv f n = deriv f 1 + harmonic n`; secondly, the convexity of `f` (the Bohr-Mollerup theorem),
  which shows that `deriv f n` is `log n + o(1)` as `n → ∞`. -/
  let f := log ∘ Gamma
  -- First reduce to computing derivative of `log ∘ Gamma`.
  suffices deriv (log ∘ Gamma) (n + 1) = -γ + harmonic n by
    rwa [Function.comp_def, deriv.log (differentiableAt_Gamma (fun m ↦ by linarith))
      (by positivity), Gamma_nat_eq_factorial, div_eq_iff_mul_eq (by positivity),
      mul_comm, Eq.comm] at this
  have hc : ConvexOn ℝ (Ioi 0) f := convexOn_log_Gamma
  have h_rec (x : ℝ) (hx : 0 < x) : f (x + 1) = f x + log x := by simp only [f, Function.comp_apply,
      Gamma_add_one hx.ne', log_mul hx.ne' (Gamma_pos_of_pos hx).ne', add_comm]
  have hder {x : ℝ} (hx : 0 < x) : DifferentiableAt ℝ f x := by
    refine ((differentiableAt_Gamma ?_).log (Gamma_ne_zero ?_)) <;>
    exact fun m ↦ ne_of_gt (by linarith)
  -- Express derivative at general `n` in terms of value at `1` using recurrence relation
  have hder_rec (x : ℝ) (hx : 0 < x) : deriv f (x + 1) = deriv f x + 1 / x := by
    rw [← deriv_comp_add_const, one_div, ← deriv_log,
      ← deriv_add (hder <| by positivity) (differentiableAt_log hx.ne')]
    apply EventuallyEq.deriv_eq
    filter_upwards [eventually_gt_nhds hx] using h_rec
  have hder_nat (n : ℕ) : deriv f (n + 1) = deriv f 1 + harmonic n := by
    induction n with
    | zero => simp
    | succ n hn =>
      rw [cast_succ, hder_rec (n + 1) (by positivity), hn, harmonic_succ]
      push_cast
      ring
  suffices -deriv f 1 = γ by rw [hder_nat n, ← this, neg_neg]
  -- Use convexity to show derivative of `f` at `n + 1` is between `log n` and `log (n + 1)`
  have derivLB (n : ℕ) (hn : 0 < n) : log n ≤ deriv f (n + 1) := by
    refine (le_of_eq ?_).trans <| hc.slope_le_deriv (mem_Ioi.mpr <| Nat.cast_pos.mpr hn)
      (by positivity : _ < (_ : ℝ)) (by linarith) (hder <| by positivity)
    rw [slope_def_field, show n + 1 - n = (1 : ℝ) by ring, div_one, h_rec n (by positivity),
      add_sub_cancel_left]
  have derivUB (n : ℕ) : deriv f (n + 1) ≤ log (n + 1) := by
    refine (hc.deriv_le_slope (by positivity : (0 : ℝ) < n + 1) (by positivity : (0 : ℝ) < n + 2)
        (by linarith) (hder <| by positivity)).trans (le_of_eq ?_)
    rw [slope_def_field, show n + 2 - (n + 1) = (1 : ℝ) by ring, div_one,
      show n + 2 = (n + 1) + (1 : ℝ) by ring, h_rec (n + 1) (by positivity), add_sub_cancel_left]
  -- deduce `-deriv f 1` is bounded above + below by sequences which both tend to `γ`
  apply le_antisymm
  · apply ge_of_tendsto tendsto_harmonic_sub_log
    filter_upwards [eventually_gt_atTop 0] with n hn
    rw [le_sub_iff_add_le', ← sub_eq_add_neg, sub_le_iff_le_add', ← hder_nat]
    exact derivLB n hn
  · apply le_of_tendsto tendsto_harmonic_sub_log_add_one
    filter_upwards with n
    rw [sub_le_iff_le_add', ← sub_eq_add_neg, le_sub_iff_add_le', ← hder_nat]
    exact derivUB n


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0c52719ee8db7a33e2c399748d854dd5b12ab6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
