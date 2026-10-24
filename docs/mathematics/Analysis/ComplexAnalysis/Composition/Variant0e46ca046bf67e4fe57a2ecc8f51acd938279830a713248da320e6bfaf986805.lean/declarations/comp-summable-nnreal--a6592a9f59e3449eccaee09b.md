# comp_summable_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:929c5617-a3f4-a3d8-2d5e-3bdf4ff7c197",
  "kind": "theorem",
  "lexical_name": "comp_summable_nnreal",
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
  "slug": "comp-summable-nnreal--a6592a9f59e3449eccaee09b",
  "source": {
    "blob": "3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 444,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6592a9f59e3449eccaee09b6da1c2a54e755d9f154c119ae1d504100567e412",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:929c5617-a3f4-a3d8-2d5e-3bdf4ff7c197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_summable_nnreal (q : FormalMultilinearSeries 𝕜 F G) (p : FormalMultilinearSeries 𝕜 E F)
    (hq : 0 < q.radius) (hp : 0 < p.radius) :
    ∃ r > (0 : ℝ≥0),
      Summable fun i : Σ n, Composition n => ‖q.compAlongComposition p i.2‖₊ * r ^ i.1 := by
  /- This follows from the fact that the growth rate of `‖qₙ‖` and `‖pₙ‖` is at most geometric,
    giving a geometric bound on each `‖q.compAlongComposition p op‖`, together with the
    fact that there are `2^(n-1)` compositions of `n`, giving at most a geometric loss. -/
  rcases ENNReal.lt_iff_exists_nnreal_btwn.1 (lt_min zero_lt_one hq) with ⟨rq, rq_pos, hrq⟩
  rcases ENNReal.lt_iff_exists_nnreal_btwn.1 (lt_min zero_lt_one hp) with ⟨rp, rp_pos, hrp⟩
  simp only [lt_min_iff, ENNReal.coe_lt_one_iff, ENNReal.coe_pos] at hrp hrq rp_pos rq_pos
  obtain ⟨Cq, _hCq0, hCq⟩ : ∃ Cq > 0, ∀ n, ‖q n‖₊ * rq ^ n ≤ Cq :=
    q.nnnorm_mul_pow_le_of_lt_radius hrq.2
  obtain ⟨Cp, hCp1, hCp⟩ : ∃ Cp ≥ 1, ∀ n, ‖p n‖₊ * rp ^ n ≤ Cp := by
    rcases p.nnnorm_mul_pow_le_of_lt_radius hrp.2 with ⟨Cp, -, hCp⟩
    exact ⟨max Cp 1, le_max_right _ _, fun n => (hCp n).trans (le_max_left _ _)⟩
  let r0 : ℝ≥0 := (4 * Cp)⁻¹
  have r0_pos : 0 < r0 := inv_pos.2 (mul_pos zero_lt_four (zero_lt_one.trans_le hCp1))
  set r : ℝ≥0 := rp * rq * r0
  have r_pos : 0 < r := mul_pos (mul_pos rp_pos rq_pos) r0_pos
  have I :
    ∀ i : Σ n : ℕ, Composition n, ‖q.compAlongComposition p i.2‖₊ * r ^ i.1 ≤ Cq / 4 ^ i.1 := by
    rintro ⟨n, c⟩
    have A := calc
      ‖q c.length‖₊ * rq ^ n ≤ ‖q c.length‖₊ * rq ^ c.length :=
        mul_le_mul' le_rfl (pow_le_pow_of_le_one rq.2 hrq.1.le c.length_le)
      _ ≤ Cq := hCq _
    have B := calc
      (∏ i, ‖p (c.blocksFun i)‖₊) * rp ^ n = ∏ i, ‖p (c.blocksFun i)‖₊ * rp ^ c.blocksFun i := by
        simp only [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum, c.sum_blocksFun]
      _ ≤ ∏ _i : Fin c.length, Cp := Finset.prod_le_prod' fun i _ => hCp _
      _ = Cp ^ c.length := by simp
      _ ≤ Cp ^ n := pow_right_mono₀ hCp1 c.length_le
    calc
      ‖q.compAlongComposition p c‖₊ * r ^ n ≤
          (‖q c.length‖₊ * ∏ i, ‖p (c.blocksFun i)‖₊) * r ^ n :=
        mul_le_mul' (q.compAlongComposition_nnnorm p c) le_rfl
      _ = ‖q c.length‖₊ * rq ^ n * ((∏ i, ‖p (c.blocksFun i)‖₊) * rp ^ n) * r0 ^ n := by
        ring
      _ ≤ Cq * Cp ^ n * r0 ^ n := mul_le_mul' (mul_le_mul' A B) le_rfl
      _ = Cq / 4 ^ n := by
        simp only [r0]
        field_simp [mul_pow, (zero_lt_one.trans_le hCp1).ne']
        ring
  refine ⟨r, r_pos, NNReal.summable_of_le I ?_⟩
  simp_rw [div_eq_mul_inv]
  refine Summable.mul_left _ ?_
  have : ∀ n : ℕ, HasSum (fun c : Composition n => (4 ^ n : ℝ≥0)⁻¹) (2 ^ (n - 1) / 4 ^ n) := by
    intro n
    convert hasSum_fintype fun c : Composition n => (4 ^ n : ℝ≥0)⁻¹
    simp [Finset.card_univ, composition_card, div_eq_mul_inv]
  refine NNReal.summable_sigma.2 ⟨fun n => (this n).summable, (NNReal.summable_nat_add_iff 1).1 ?_⟩
  convert (NNReal.summable_geometric (NNReal.div_lt_one_of_lt one_lt_two)).mul_left (1 / 4) using 1
  ext1 n
  rw [(this _).tsum_eq, add_tsub_cancel_right]
  field_simp [← mul_assoc, pow_succ, mul_pow, show (4 : ℝ≥0) = 2 * 2 by norm_num,
    mul_right_comm]

end

/-- Bounding below the radius of the composition of two formal multilinear series assuming
summability over all compositions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
