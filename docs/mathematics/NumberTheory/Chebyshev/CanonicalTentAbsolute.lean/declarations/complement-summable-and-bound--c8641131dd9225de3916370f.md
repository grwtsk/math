# complement_summable_and_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e10f71d-dc8b-fe79-ba4f-ff9aefc04503",
  "kind": "theorem",
  "lexical_name": "complement_summable_and_bound",
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
  "slug": "complement-summable-and-bound--c8641131dd9225de3916370f",
  "source": {
    "blob": "58a4d8739d6737642536160d52a6efb156317854",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8641131dd9225de3916370fed19598eb29d6abf52fc8f4c13097a0945e12206",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e10f71d-dc8b-fe79-ba4f-ff9aefc04503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complement_summable_and_bound (x h T : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hT : 2 ≤ T) :
    Summable (fun z : {z : ZeroPoint // z ∉ heightHead T} =>
      ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1‖) ∧
    Summable (fun z : {z : ZeroPoint // z ∉ heightHead T} =>
      (multiplicity z.1 : ℂ) * tentKernel x h z.1.1) ∧
    (∑' z : {z : ZeroPoint // z ∉ heightHead T},
      ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1‖) ≤ canonicalTailBudget x h T := by
  classical
  let e : {z : ZeroPoint // z ∉ heightHead T} ↪ ZeroPoint :=
    ⟨Subtype.val, Subtype.val_injective⟩
  let C : ℝ := 4 * Real.exp (2 * Real.log (x + h)) / h
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hlower (z : {z : ZeroPoint // z ∉ heightHead T}) : T < height z.1 :=
    height_gt_of_not_mem_head T z.1 z.2
  have hcount : ∀ S : Finset {z : ZeroPoint // z ∉ heightHead T}, ∀ t, T ≤ t →
      finiteCountingMass S (fun z => height z.1) (fun z => (multiplicity z.1 : ℝ)) t ≤
        countingCoefficient * (t * Real.log t) := by
    intro S t ht
    have hc := finiteCountingMass_high_le (S.map e) t (hT.trans ht) (by
      intro z hz
      obtain ⟨v, hv, rfl⟩ := Finset.mem_map.mp hz
      exact hT.trans_lt (hlower v))
    rw [finiteCountingMass_map] at hc
    exact hc
  have hdom (z : {z : ZeroPoint // z ∉ heightHead T}) :
      ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1‖ ≤
        C * ((multiplicity z.1 : ℝ) / (height z.1) ^ 2) := by
    have him : z.1.1.im ≠ 0 := by
      intro hz
      have ht := hlower z
      simp only [height, hz, abs_zero] at ht
      linarith
    have hk := norm_tentKernel_le_inverse_height_sq x h 1 hh ha (by norm_num)
      z.1.1 (point_mem_strip z.1).2.le him
    calc
      _ = (multiplicity z.1 : ℝ) * ‖tentKernel x h z.1.1‖ := by
        simp only [norm_mul, Complex.norm_natCast]
      _ ≤ (multiplicity z.1 : ℝ) *
          (4 * Real.exp ((1 + 1) * Real.log (x + h)) / (h * z.1.1.im ^ 2)) :=
        mul_le_mul_of_nonneg_left hk (Nat.cast_nonneg _)
      _ = _ := by
        dsimp [C, height]
        rw [sq_abs]
        norm_num only [one_add_one_eq_two]
        simp only [div_eq_mul_inv, mul_inv_rev]
        ring
  have hout := dominated_family_scaled (fun z : {z : ZeroPoint // z ∉ heightHead T} => height z.1)
    (fun z => (multiplicity z.1 : ℝ))
    (fun z => (multiplicity z.1 : ℂ) * tentKernel x h z.1.1)
    T C countingCoefficient (by linarith) hC countingCoefficient_pos
    (fun z => Nat.cast_nonneg _) hlower hcount hdom
  refine ⟨hout.1, hout.2.1, hout.2.2.trans_eq ?_⟩
  unfold C inverseSquareBudget canonicalTailBudget tentTailBudget
  norm_num only [one_add_one_eq_two]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The finite low head is added only AFTER the complete high tail is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a4d8739d6737642536160d52a6efb156317854` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
