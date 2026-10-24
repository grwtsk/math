# mul_evalSet_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2555f20-0727-9911-b813-3f45b2789725",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7364bf60-7dd3-389f-8a0c-15cd0b0b77c3",
  "kind": "theorem",
  "lexical_name": "mul_evalSet_correct",
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
  "slug": "mul-evalset-correct--f3d579ae7307b43686d97bd9",
  "source": {
    "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1362,
    "line": 1271,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3d579ae7307b43686d97bd9a8d321cd96f10f2bd7e923c603c99002dfdefa54",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7364bf60-7dd3-389f-8a0c-15cd0b0b77c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1271–1362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_evalSet_correct
    (f₁ f₂ : ℝ → ℝ) (tm1 tm2 : TaylorModel) (degree : ℕ)
    (hcenter : tm1.center = tm2.center)
    (hdomain : tm1.domain = tm2.domain)
    (hf1 : ∀ x ∈ tm1.domain, f₁ x ∈ tm1.evalSet x)
    (hf2 : ∀ x ∈ tm2.domain, f₂ x ∈ tm2.evalSet x) :
    ∀ x ∈ tm1.domain, (f₁ x) * (f₂ x) ∈ (TaylorModel.mul tm1 tm2 degree).evalSet x := by
  intro x hx
  have h1 := hf1 x hx
  have h2 := hf2 x (hdomain ▸ hx)
  simp only [TaylorModel.evalSet, Set.mem_setOf_eq] at h1 h2
  rcases h1 with ⟨r1, hr1_mem, hr1_eq⟩
  rcases h2 with ⟨r2, hr2_mem, hr2_eq⟩

  have hcenter_cast : (tm2.center : ℝ) = tm1.center := by exact_mod_cast hcenter.symm

  let prodPoly := tm1.poly * tm2.poly
  let truncatedPoly := truncPoly prodPoly degree
  let tail := tailPoly prodPoly degree
  let tailB := boundPolyAbs tail tm1.domain tm1.center
  let p1Bound := boundPolyAbs tm1.poly tm1.domain tm1.center
  let p2Bound := boundPolyAbs tm2.poly tm2.domain tm2.center
  let tailInterval : IntervalRat := ⟨-tailB, tailB, by linarith [boundPolyAbs_nonneg tail tm1.domain tm1.center]⟩
  let p1r2 := IntervalRat.mul ⟨-p1Bound, p1Bound, by linarith [boundPolyAbs_nonneg tm1.poly tm1.domain tm1.center]⟩ tm2.remainder
  let p2r1 := IntervalRat.mul ⟨-p2Bound, p2Bound, by linarith [boundPolyAbs_nonneg tm2.poly tm2.domain tm2.center]⟩ tm1.remainder
  let r1r2 := IntervalRat.mul tm1.remainder tm2.remainder
  let totalRemainder := IntervalRat.add tailInterval (IntervalRat.add p1r2 (IntervalRat.add p2r1 r1r2))

  let y := x - tm1.center
  let remainderTerm := Polynomial.aeval y tail +
                       Polynomial.aeval y tm1.poly * r2 +
                       Polynomial.aeval y tm2.poly * r1 +
                       r1 * r2

  have hp2Bound_eq : p2Bound = boundPolyAbs tm2.poly tm1.domain tm1.center := by
    show boundPolyAbs tm2.poly tm2.domain tm2.center = boundPolyAbs tm2.poly tm1.domain tm1.center
    simp only [hdomain, hcenter]

  have htailB_nn : 0 ≤ tailB := boundPolyAbs_nonneg tail tm1.domain tm1.center
  have hp1Bound_nn : 0 ≤ p1Bound := boundPolyAbs_nonneg tm1.poly tm1.domain tm1.center
  have hp2Bound_nn : 0 ≤ p2Bound := boundPolyAbs_nonneg tm2.poly tm2.domain tm2.center

  have htail_bounded : |Polynomial.aeval y tail| ≤ tailB :=
    tailPoly_eval_bounded prodPoly degree tm1.domain tm1.center x hx
  have hp1_bounded : |Polynomial.aeval y tm1.poly| ≤ p1Bound :=
    poly_eval_bounded tm1.poly tm1.domain tm1.center x hx
  have hp2_bounded : |Polynomial.aeval y tm2.poly| ≤ p2Bound := by
    rw [hp2Bound_eq]
    exact poly_eval_bounded tm2.poly tm1.domain tm1.center x hx

  have htail_mem : Polynomial.aeval y tail ∈ tailInterval :=
    mem_symmetric_interval_of_abs_le htailB_nn htail_bounded
  have hp1_mem : Polynomial.aeval y tm1.poly ∈ (⟨-p1Bound, p1Bound, by linarith⟩ : IntervalRat) :=
    mem_symmetric_interval_of_abs_le hp1Bound_nn hp1_bounded
  have hp2_mem : Polynomial.aeval y tm2.poly ∈ (⟨-p2Bound, p2Bound, by linarith⟩ : IntervalRat) :=
    mem_symmetric_interval_of_abs_le hp2Bound_nn hp2_bounded

  have hp1r2_mem : Polynomial.aeval y tm1.poly * r2 ∈ p1r2 :=
    IntervalRat.mem_mul hp1_mem hr2_mem
  have hp2r1_mem : Polynomial.aeval y tm2.poly * r1 ∈ p2r1 :=
    IntervalRat.mem_mul hp2_mem hr1_mem
  have hr1r2_mem : r1 * r2 ∈ r1r2 :=
    IntervalRat.mem_mul hr1_mem hr2_mem

  have hrem_mem : remainderTerm ∈ totalRemainder :=
    remainder_four_terms_mem htail_mem hp1r2_mem hp2r1_mem hr1r2_mem

  have hy_eq : x - (tm2.center : ℝ) = y := by
    simp only [hcenter_cast]
    rfl

  have hprod_expand : f₁ x * f₂ x =
      (Polynomial.aeval y tm1.poly + r1) * (Polynomial.aeval y tm2.poly + r2) := by
    rw [hr1_eq, hr2_eq, hy_eq]

  have hsplit : Polynomial.aeval y prodPoly =
      Polynomial.aeval y truncatedPoly + Polynomial.aeval y tail :=
    aeval_eq_truncPoly_add_tailPoly prodPoly degree y

  have hfinal : f₁ x * f₂ x = Polynomial.aeval y truncatedPoly + remainderTerm := by
    rw [hprod_expand]
    exact foil_to_trunc_remainder hsplit

  refine ⟨remainderTerm, hrem_mem, ?_⟩
  rw [hfinal]
  rfl

/-- Inversion preserves evalSet membership (conservative construction).

Since `TaylorModel.inv` uses poly = 0 and remainder = invBound, we show
that if `f(x) ∈ tm.evalSet x` for all x in domain, then `f(x)⁻¹ ∈ (inv tm hnz).evalSet x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean#L1271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f24d0e3165301f536c019c4032127a6854d8a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
