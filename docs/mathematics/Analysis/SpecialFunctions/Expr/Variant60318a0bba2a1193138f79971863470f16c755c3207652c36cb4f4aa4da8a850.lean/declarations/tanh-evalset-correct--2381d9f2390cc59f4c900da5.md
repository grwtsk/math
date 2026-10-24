# tanh_evalSet_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b89f72c6-290e-b878-a3b9-3747567b0356",
  "kind": "theorem",
  "lexical_name": "tanh_evalSet_correct",
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
  "slug": "tanh-evalset-correct--2381d9f2390cc59f4c900da5",
  "source": {
    "blob": "bf961c73085cd288d6c5efc32e854e4510fee259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 802,
    "line": 760,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2381d9f2390cc59f4c900da54f902aafa437cb7b388dcbad9971e39a4571bbd1",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b89f72c6-290e-b878-a3b9-3747567b0356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 760–802.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tanh_evalSet_correct
    (f : ℝ → ℝ) (tm : TaylorModel) (degree : ℕ)
    (hf : ∀ x ∈ tm.domain, f x ∈ tm.evalSet x) :
    ∀ x ∈ tm.domain, Real.tanh (f x) ∈ (TaylorModel.tanh tm degree).evalSet x := by
  intro x hx
  simp only [tanh, evalSet, Set.mem_setOf_eq]
  refine ⟨Real.tanh (f x), ?_, ?_⟩
  · have htanh_bound := tanh_mem_Icc (f x)
    simp only [Set.mem_Icc] at htanh_bound
    simp only [tmTanh]
    split_ifs with h
    · apply bound_contains_neg_one_one _ _ htanh_bound.1 htanh_bound.2 rfl rfl rfl
    · have hfbound : f x ∈ tm.bound := taylorModel_correct tm f hf x hx
      have hsinh_evalSet : Real.sinh (f x) ∈ (tmSinh tm.bound degree).evalSet (f x) :=
        tmSinh_correct tm.bound degree (f x) hfbound
      have hcosh_evalSet : Real.cosh (f x) ∈ (tmCosh tm.bound degree).evalSet (f x) :=
        tmCosh_correct tm.bound degree (f x) hfbound
      have hinv_evalSet : (Real.cosh (f x))⁻¹ ∈ (inv (tmCosh tm.bound degree) h).evalSet (f x) := by
        apply inv_evalSet_correct Real.cosh (tmCosh tm.bound degree) h
        · intro z hz
          exact tmCosh_correct tm.bound degree z hz
        · exact hfbound
      have htanh_eq : Real.tanh (f x) = Real.sinh (f x) * (Real.cosh (f x))⁻¹ := by
        rw [Real.tanh_eq_sinh_div_cosh, div_eq_mul_inv]
      rw [htanh_eq]
      have hmul_evalSet := mul_evalSet_correct Real.sinh (fun y => (Real.cosh y)⁻¹)
        (tmSinh tm.bound degree) (inv (tmCosh tm.bound degree) h) degree rfl rfl
        (fun z hz => tmSinh_correct tm.bound degree z hz)
        (fun z hz => inv_evalSet_correct Real.cosh (tmCosh tm.bound degree) h
          (fun w hw => tmCosh_correct tm.bound degree w hw) z hz)
        (f x) hfbound
      exact taylorModel_correct
        (mul (tmSinh tm.bound degree) (inv (tmCosh tm.bound degree) h) degree)
        (fun y => Real.sinh y * (Real.cosh y)⁻¹)
        (fun z hz => mul_evalSet_correct Real.sinh (fun w => (Real.cosh w)⁻¹)
          (tmSinh tm.bound degree) (inv (tmCosh tm.bound degree) h) degree rfl rfl
          (fun w hw => tmSinh_correct tm.bound degree w hw)
          (fun w hw => inv_evalSet_correct Real.cosh (tmCosh tm.bound degree) h
            (fun v hv => tmCosh_correct tm.bound degree v hv) w hw) z hz)
        (f x) hfbound
  · simp only [Polynomial.aeval_zero]; ring

/-- atanh preserves evalSet membership when atanh? succeeds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean#L760).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf961c73085cd288d6c5efc32e854e4510fee259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
