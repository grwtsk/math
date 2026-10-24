# atanh_evalSet_correct'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 795,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d7eb24e-2b3e-bc2b-2c8d-7c082d756b8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e51ad666-1044-50d4-8577-122c47187a79",
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
  "slug": "atanh-evalset-correct--8d2bf4e1626599be67789726",
  "source": {
    "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 828,
    "line": 795,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d2bf4e1626599be67789726b7325c6c0a80caff40d9a1ccf43a71187a20c8ec",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e51ad666-1044-50d4-8577-122c47187a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 795–828.

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

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean#L795).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebe49a751e3b8bebc58fb10136b82b3825c65a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
