# atanh_evalSet_correct'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4355a083-aeb0-0363-7620-f447e8f4e779",
  "kind": "theorem",
  "lexical_name": "atanh_evalSet_correct'",
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
  "slug": "atanh-evalset-correct--846b51d306630806c8d02e68",
  "source": {
    "blob": "bf961c73085cd288d6c5efc32e854e4510fee259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 803,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:846b51d306630806c8d02e68ef26a0a357c88b20e70b235e13cabea40b564c84",
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

Occurrence: `result:4355a083-aeb0-0363-7620-f447e8f4e779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 803–836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atanh_evalSet_correct'
    (f : ℝ → ℝ) (tm result : TaylorModel) (degree : ℕ)
    (hf : ∀ x ∈ tm.domain, f x ∈ tm.evalSet x)
    (hatanh : atanh? tm degree = some result) :
    ∀ x ∈ tm.domain, Real.atanh (f x) ∈ result.evalSet x := by
  intro x hx
  -- Extract that the domain is safe from the fact that atanh? succeeded
  unfold atanh? at hatanh
  split at hatanh
  · rename_i hsafe
    simp only [Option.some.injEq] at hatanh
    subst hatanh
    simp only [evalSet, Set.mem_setOf_eq]
    refine ⟨Real.atanh (f x), ?_, ?_⟩
    · have hfbound : f x ∈ tm.bound := taylorModel_correct tm f hf x hx
      have hsafe_bound : max (|tm.bound.lo|) (|tm.bound.hi|) ≤ 99/100 := by
        simp only [atanhSafe, decide_eq_true_eq] at hsafe
        exact_mod_cast hsafe
      have habs : |f x| < 1 := abs_lt_one_of_atanhSafe hsafe hfbound
      have hdomain : (tmAtanh tm.bound degree).domain = tm.bound := rfl
      have hfx_in_dom : f x ∈ (tmAtanh tm.bound degree).domain := hdomain ▸ hfbound
      have hatanh_bound : Real.atanh (f x) ∈ (tmAtanh tm.bound degree).bound := by
        apply taylorModel_correct (tmAtanh tm.bound degree) Real.atanh
          (fun z hz => tmAtanh_correct tm.bound degree hsafe_bound z hz
            (abs_lt_one_of_atanhSafe hsafe hz)) (f x) hfx_in_dom
      exact hatanh_bound
    · simp only [Polynomial.aeval_zero]; ring
  · simp at hatanh

end TaylorModel

/-! ### Main fromExpr correctness -/

/-- Helper: fromExpr? produces TaylorModels with matching domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean#L803).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf961c73085cd288d6c5efc32e854e4510fee259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
