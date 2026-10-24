# Lp.SecondCountableTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65320df2beffa67b2eff72332bb93eb827c9673040ab6dac45be3dd9b345bc7d",
  "kind": "instance",
  "lexical_name": "Lp.SecondCountableTopology",
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
  "slug": "lp-secondcountabletopology--5d6de8fe71fde29ffc714e98",
  "source": {
    "blob": "4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 427,
    "path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d6de8fe71fde29ffc714e98f67321f7ead20155a678707210b21eb3493aa4ba",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65320df2beffa67b2eff72332bb93eb827c9673040ab6dac45be3dd9b345bc7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Lp.SecondCountableTopology [IsSeparable μ] [TopologicalSpace.SeparableSpace E] :
    SecondCountableTopology (Lp E p μ) := by
  -- It is enough to show that the space is separable, i.e. admits a countable and dense subset.
  refine @UniformSpace.secondCountable_of_separable _ _ _ ?_
  -- There exists a countable and measure-dense family, and we can keep only the sets with finite
  -- measure while preserving the two properties. This family is denoted `𝒜₀`.
  rcases exists_countable_measureDense μ with ⟨𝒜, count_𝒜, h𝒜⟩
  have h𝒜₀ := Measure.MeasureDense.fin_meas h𝒜
  set 𝒜₀ := {s | s ∈ 𝒜 ∧ μ s ≠ ∞}
  have count_𝒜₀ : 𝒜₀.Countable := count_𝒜.mono fun _ ⟨h, _⟩ ↦ h
  -- `1 ≤ p` so `p ≠ 0`, we prove it now as it is often needed.
  have p_ne_zero : p ≠ 0 := ne_of_gt <| lt_of_lt_of_le (by simp) one_le_p.elim
  -- `E` is second-countable, therefore separable and admits a countable and dense subset `u`.
  rcases exists_countable_dense E with ⟨u, countable_u, dense_u⟩
  -- The countable and dense subset of `Lᵖ` we are going to build is the set of finite sums of
  -- constant indicators with support in `𝒜₀`, and is denoted `D`. To make manipulations easier,
  -- we define the function `key` which given an integer `n` and two families of `n` elements
  -- in `u` and `𝒜₀` associates the corresponding sum.
  let key (n : ℕ) (d : Fin n → u) (s : Fin n → 𝒜₀) : (Lp E p μ) :=
    ∑ i, indicatorConstLp p (h𝒜₀.measurable (s i) (Subtype.mem (s i))) (s i).2.2 (d i : E)
  let D := {s : Lp E p μ | ∃ n d t, s = key n d t}
  refine ⟨D, ?_, ?_⟩
  · -- Countability directly follows from countability of `u` and `𝒜₀`. The function `f` below
    -- is the uncurried version of `key`, which is easier to manipulate as countability of the
    -- domain is automatically inferred.
    let f (nds : Σ n : ℕ, (Fin n → u) × (Fin n → 𝒜₀)) : Lp E p μ := key nds.1 nds.2.1 nds.2.2
    have := count_𝒜₀.to_subtype
    have := countable_u.to_subtype
    have : D ⊆ range f := by
      rintro - ⟨n, d, s, rfl⟩
      use ⟨n, (d, s)⟩
    exact (countable_range f).mono this
  · -- Let's turn to the density. Thanks to the density of simple functions in `Lᵖ`, it is enough
    -- to show that the closure of `D` contains constant indicators which are in `Lᵖ` (i. e. the
    -- set has finite measure), is closed by sum and closed.
    -- This is given by `Lp.induction`.
    refine Lp.induction p_ne_top.elim (motive := fun f ↦ f ∈ closure D) ?_ ?_ isClosed_closure
    · intro a s ms hμs
      -- We want to approximate `a • 𝟙ₛ`.
      apply ne_of_lt at hμs
      rw [SeminormedAddCommGroup.mem_closure_iff]
      intro ε ε_pos
      have μs_pow_nonneg : 0 ≤ μ.real s ^ (1 / p.toReal) := by positivity
      -- To do so, we first pick `b ∈ u` such that `‖a - b‖ < ε / (3 * (1 + (μ s)^(1/p)))`.
      have approx_a_pos : 0 < ε / (3 * (1 + μ.real s ^ (1 / p.toReal))) :=
        div_pos ε_pos (by linarith [μs_pow_nonneg])
      have ⟨b, b_mem, hb⟩ := SeminormedAddCommGroup.mem_closure_iff.1 (dense_u a) _ approx_a_pos
      -- Then we pick `t ∈ 𝒜₀` such that `‖b • 𝟙ₛ - b • 𝟙ₜ‖ < ε / 3`.
      rcases SeminormedAddCommGroup.mem_closure_iff.1
        (h𝒜₀.indicatorConstLp_subset_closure p b ⟨s, ms, hμs, rfl⟩)
          (ε / 3) (by linarith [ε_pos]) with ⟨-, ⟨t, ht, hμt, rfl⟩, hst⟩
      have mt := h𝒜₀.measurable t ht
      -- We now show that `‖a • 𝟙ₛ - b • 𝟙ₜ‖ₚ < ε`, as follows:
      -- `‖a • 𝟙ₛ - b • 𝟙ₜ‖ₚ`
      --   `= ‖a • 𝟙ₛ - b • 𝟙ₛ + b • 𝟙ₛ - b • 𝟙ₜ‖ₚ`
      --   `≤ ‖a - b‖ * ‖𝟙ₛ‖ₚ + ε / 3`
      --   `= ‖a - b‖ * (μ s)^(1/p) + ε / 3`
      --   `< ε * (μ s)^(1/p) / (3 * (1 + (μ s)^(1/p))) + ε / 3`
      --   `≤ ε / 3 + ε / 3 < ε`.
      refine ⟨indicatorConstLp p mt hμt b,
        ⟨1, fun _ ↦ ⟨b, b_mem⟩, fun _ ↦ ⟨t, ht⟩, by simp [key]⟩, ?_⟩
      rw [Lp.simpleFunc.coe_indicatorConst,
        ← sub_add_sub_cancel _ (indicatorConstLp p ms hμs b), ← add_halves ε]
      refine lt_of_le_of_lt (b := ε / 3 + ε / 3) (norm_add_le_of_le ?_ hst.le) (by linarith [ε_pos])
      rw [indicatorConstLp_sub, norm_indicatorConstLp p_ne_zero p_ne_top.elim]
      calc
        ‖a - b‖ * μ.real s ^ (1 / p.toReal)
          ≤ (ε / (3 * (1 + μ.real s ^ (1 / p.toReal)))) * μ.real s ^ (1 / p.toReal) :=
              mul_le_mul_of_nonneg_right (le_of_lt hb) μs_pow_nonneg
        _ ≤ ε / 3 := by
            rw [← mul_one (ε / 3), div_mul_eq_div_mul_one_div, mul_assoc, one_div_mul_eq_div]
            exact mul_le_mul_of_nonneg_left
              ((div_le_one (by linarith [μs_pow_nonneg])).2 (by linarith))
              (by linarith [ε_pos])
    · -- Now we have to show that the closure of `D` is closed by sum. Let `f` and `g` be two
      -- functions in `Lᵖ` which are also in the closure of `D`.
      rintro f g hf hg - f_mem g_mem
      rw [SeminormedAddCommGroup.mem_closure_iff] at *
      intro ε ε_pos
      -- For `ε > 0`, there exists `bf, bg ∈ D` such that `‖f - bf‖ₚ < ε/2` and `‖g - bg‖ₚ < ε/2`.
      rcases f_mem (ε / 2) (by linarith [ε_pos]) with ⟨bf, ⟨nf, df, sf, bf_eq⟩, hbf⟩
      rcases g_mem (ε / 2) (by linarith [ε_pos]) with ⟨bg, ⟨ng, dg, sg, bg_eq⟩, hbg⟩
      -- It is obvious that `D` is closed by sum, it suffices to concatenate the family of
      -- elements of `u` and the family of elements of `𝒜₀`.
      let d := fun i : Fin (nf + ng) ↦ if h : i < nf
        then df (Fin.castLT i h)
        else dg (Fin.subNat nf (Fin.cast (Nat.add_comm ..) i) (le_of_not_gt h))
      let s := fun i : Fin (nf + ng) ↦ if h : i < nf
        then sf (Fin.castLT i h)
        else sg (Fin.subNat nf (Fin.cast (Nat.add_comm ..) i) (le_of_not_gt h))
      -- So we can use `bf + bg`.
      refine ⟨bf + bg, ⟨nf + ng, d, s, ?_⟩, ?_⟩
      · simp [key, d, s, Fin.sum_univ_add, bf_eq, bg_eq]
      · -- We have
        -- `‖f + g - (bf + bg)‖ₚ`
        --   `≤ ‖f - bf‖ₚ + ‖g - bg‖ₚ`
        --   `< ε/2 + ε/2 = ε`.
        calc
          ‖MemLp.toLp f hf + MemLp.toLp g hg - (bf + bg)‖
            = ‖(MemLp.toLp f hf) - bf + ((MemLp.toLp g hg) - bg)‖ := by congr; abel
          _ ≤ ‖(MemLp.toLp f hf) - bf‖ + ‖(MemLp.toLp g hg) - bg‖ := norm_add_le ..
          _ < ε := by linarith [hbf, hbg]

end SecondCountableLp

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
