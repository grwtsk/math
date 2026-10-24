# lintegral_compProd'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b4f618a-90af-fab1-1b48-53845e7e3ffa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f216dc1e-ffe3-c4da-d068-40b9e0c66e5e",
  "kind": "theorem",
  "lexical_name": "lintegral_compProd'",
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
  "slug": "lintegral-compprod--5dddc0a30ceb5fd49277f25e",
  "source": {
    "blob": "a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 390,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dddc0a30ceb5fd49277f25ea47f9b14177ca66ae1f7dedb84395b2083c25ab6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f216dc1e-ffe3-c4da-d068-40b9e0c66e5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_compProd' (κ : Kernel α β) [IsSFiniteKernel κ] (η : Kernel (α × β) γ)
    [IsSFiniteKernel η] (a : α) {f : β → γ → ℝ≥0∞} (hf : Measurable (Function.uncurry f)) :
    ∫⁻ bc, f bc.1 bc.2 ∂(κ ⊗ₖ η) a = ∫⁻ b, ∫⁻ c, f b c ∂η (a, b) ∂κ a := by
  let F : ℕ → SimpleFunc (β × γ) ℝ≥0∞ := SimpleFunc.eapprox (Function.uncurry f)
  have h : ∀ a, ⨆ n, F n a = Function.uncurry f a := SimpleFunc.iSup_eapprox_apply hf
  simp only [Prod.forall, Function.uncurry_apply_pair] at h
  simp_rw [← h]
  have h_mono : Monotone F := fun i j hij b =>
    SimpleFunc.monotone_eapprox (Function.uncurry f) hij _
  rw [lintegral_iSup (fun n => (F n).measurable) h_mono]
  have : ∀ b, ∫⁻ c, ⨆ n, F n (b, c) ∂η (a, b) = ⨆ n, ∫⁻ c, F n (b, c) ∂η (a, b) := by
    intro a
    rw [lintegral_iSup]
    · exact fun n => (F n).measurable.comp measurable_prodMk_left
    · exact fun i j hij b => h_mono hij _
  simp_rw [this]
  have h_some_meas_integral :
    ∀ f' : SimpleFunc (β × γ) ℝ≥0∞, Measurable fun b => ∫⁻ c, f' (b, c) ∂η (a, b) := by
    intro f'
    have :
      (fun b => ∫⁻ c, f' (b, c) ∂η (a, b)) =
        (fun ab => ∫⁻ c, f' (ab.2, c) ∂η ab) ∘ fun b => (a, b) := by
      ext1 ab; rfl
    rw [this]
    fun_prop
  rw [lintegral_iSup]
  rotate_left
  · exact fun n => h_some_meas_integral (F n)
  · exact fun i j hij b => lintegral_mono fun c => h_mono hij _
  congr
  ext1 n
  refine SimpleFunc.induction ?_ ?_ (F n)
  · intro c s hs
    classical -- Porting note: Added `classical` for `Set.piecewise_eq_indicator`
    simp +unfoldPartialApp only [SimpleFunc.const_zero,
      SimpleFunc.coe_piecewise, SimpleFunc.coe_const, SimpleFunc.coe_zero,
      Set.piecewise_eq_indicator, Function.const, lintegral_indicator_const hs]
    rw [compProd_apply hs, ← lintegral_const_mul c _]
    swap
    · exact (measurable_kernel_prodMk_left ((measurable_fst.snd.prodMk measurable_snd) hs)).comp
        measurable_prodMk_left
    congr
    ext1 b
    rw [lintegral_indicator_const_comp measurable_prodMk_left hs]
  · intro f f' _ hf_eq hf'_eq
    simp_rw [SimpleFunc.coe_add, Pi.add_apply]
    change
      ∫⁻ x, (f : β × γ → ℝ≥0∞) x + f' x ∂(κ ⊗ₖ η) a =
        ∫⁻ b, ∫⁻ c : γ, f (b, c) + f' (b, c) ∂η (a, b) ∂κ a
    rw [lintegral_add_left (SimpleFunc.measurable _), hf_eq, hf'_eq, ← lintegral_add_left]
    swap
    · exact h_some_meas_integral f
    congr with b
    rw [lintegral_add_left]
    exact (SimpleFunc.measurable _).comp measurable_prodMk_left

/-- Lebesgue integral against the composition-product of two kernels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
