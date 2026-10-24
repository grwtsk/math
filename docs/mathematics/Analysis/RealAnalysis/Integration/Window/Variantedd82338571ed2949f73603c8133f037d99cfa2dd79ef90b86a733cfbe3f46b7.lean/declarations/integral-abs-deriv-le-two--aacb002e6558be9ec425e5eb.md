# integral_abs_deriv_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:131e6cd9-98bf-5aa5-0507-921e85a9bf32",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv_le_two",
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
  "slug": "integral-abs-deriv-le-two--aacb002e6558be9ec425e5eb",
  "source": {
    "blob": "a019f028b82eba44fbc64defaec246667013fd7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 186,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aacb002e6558be9ec425e5eb3663c5285177d351a832a4957b02c18d29aae2f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:131e6cd9-98bf-5aa5-0507-921e85a9bf32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_abs_deriv_le_two {f : ℝ → ℝ} {M : ℝ} (hM : 0 < M)
    (hf : ContDiff ℝ 1 f) (heven : ∀ x, f (-x) = f x) (hanti : AntitoneOn f (Set.Ici 0))
    (h1 : ∀ x, f x ≤ 1) (hsupp : ∀ x, M ≤ |x| → f x = 0) :
    ∫ u, |deriv f u| ≤ 2 := by
  have hd : Differentiable ℝ f := hf.differentiable (by norm_num)
  have hd' : Continuous (deriv f) := hf.continuous_deriv le_rfl
  -- deriv vanishes beyond the support
  have hderiv0 : ∀ x : ℝ, M < |x| → deriv f x = 0 := by
    intro x hx
    have hopen : IsOpen {v : ℝ | M < |v|} :=
      (continuous_abs).isOpen_preimage _ isOpen_Ioi
    have hEq : f =ᶠ[nhds x] (fun _ => (0:ℝ)) := by
      filter_upwards [hopen.mem_nhds hx] with v hv
      exact hsupp v (le_of_lt hv)
    rw [hEq.deriv_eq, deriv_const]
  -- |deriv f| is even
  have hodd : ∀ x : ℝ, |deriv f (-x)| = |deriv f x| := by
    intro x
    have hfe : (fun y : ℝ => f (-y)) = f := funext heven
    have h := deriv_comp_neg (f := f) (x := x)
    rw [hfe] at h
    have h' : deriv f (-x) = -deriv f x := by linarith
    rw [h', abs_neg]
  -- reduce to (0, ∞)
  have habs : (fun u : ℝ => |deriv f u|) = fun u => (fun t => |deriv f t|) |u| := by
    funext u
    show |deriv f u| = |deriv f (|u|)|
    rcases le_or_gt 0 u with h | h
    · rw [abs_of_nonneg h]
    · rw [abs_of_neg h, hodd]
  have hhalf : ∫ u, |deriv f u| = 2 * ∫ u in Set.Ioi 0, |deriv f u| := by
    conv_lhs => rw [habs]
    exact integral_comp_abs (f := fun t => |deriv f t|)
  -- integrability
  have hcs : HasCompactSupport (deriv f) := by
    apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := -M) (b := M))
    intro x hx
    rw [Function.mem_support] at hx
    by_contra hmem
    apply hx
    apply hderiv0
    rw [Set.mem_Icc, not_and_or, not_le, not_le] at hmem
    rcases hmem with h | h
    · rw [abs_of_neg (by linarith)]; linarith
    · rw [abs_of_pos (by linarith)]; linarith
  have hint : Integrable (fun u => |deriv f u|) :=
    (hd'.integrable_of_hasCompactSupport hcs).abs
  -- split (0, ∞) = (0, M] ∪ (M, ∞); the far part vanishes
  have hsplit : ∫ u in Set.Ioi 0, |deriv f u|
      = (∫ u in Set.Ioc 0 M, |deriv f u|) + ∫ u in Set.Ioi M, |deriv f u| := by
    rw [← MeasureTheory.setIntegral_union (Set.Ioc_disjoint_Ioi le_rfl) measurableSet_Ioi
      hint.integrableOn hint.integrableOn, Set.Ioc_union_Ioi_eq_Ioi hM.le]
  have hfar : ∫ u in Set.Ioi M, |deriv f u| = 0 := by
    apply MeasureTheory.setIntegral_eq_zero_of_forall_eq_zero
    intro x hx
    rw [hderiv0 x (by rw [abs_of_pos (lt_trans hM hx)]; exact hx), abs_zero]
  -- on (0, M]: |f'| = −f' (antitone), and FTC
  have hneg : ∀ x ∈ Set.Ioc 0 M, |deriv f x| = -deriv f x := by
    intro x hx
    have hx0 : 0 < x := hx.1
    have hle : deriv f x ≤ 0 := by
      have hmem : Set.Ici (0:ℝ) ∈ nhds x := Ici_mem_nhds hx0
      rw [← derivWithin_of_mem_nhds hmem]
      exact hanti.derivWithin_nonpos
    rw [abs_of_nonpos hle]
  have hFTC : ∫ u in (0:ℝ)..M, deriv f u = f M - f 0 :=
    intervalIntegral.integral_deriv_eq_sub (fun x _ => hd x)
      ((hd'.intervalIntegrable) 0 M)
  have hnear : ∫ u in Set.Ioc 0 M, |deriv f u| = f 0 - f M := by
    rw [MeasureTheory.setIntegral_congr_fun measurableSet_Ioc hneg]
    rw [← intervalIntegral.integral_of_le hM.le] at *
    rw [intervalIntegral.integral_neg, hFTC]
    ring
  have hfM : f M = 0 := hsupp M (by rw [abs_of_pos hM])
  have hf0 : f 0 ≤ 1 := h1 0
  rw [hhalf, hsplit, hfar, hnear, hfM]
  linarith

/-- ‖φ_D'‖₁ ≤ 2 (even, nonincreasing in |u|, 0 ≤ φ_D ≤ 1, compact support). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a019f028b82eba44fbc64defaec246667013fd7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
