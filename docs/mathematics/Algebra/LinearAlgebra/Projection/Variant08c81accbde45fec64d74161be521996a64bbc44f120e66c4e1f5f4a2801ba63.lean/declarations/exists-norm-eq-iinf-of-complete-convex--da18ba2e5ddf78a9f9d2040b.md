# exists_norm_eq_iInf_of_complete_convex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7499ae92-f25e-70b9-70c0-3a9ddcfd4f59",
  "kind": "theorem",
  "lexical_name": "exists_norm_eq_iInf_of_complete_convex",
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
  "slug": "exists-norm-eq-iinf-of-complete-convex--da18ba2e5ddf78a9f9d2040b",
  "source": {
    "blob": "9e0bb95bd0e70c01a34341ae30299a7a56af087e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da18ba2e5ddf78a9f9d2040b4945d09a80e7fae8b2aa63b2de3afa3e9788cc6c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7499ae92-f25e-70b9-70c0-3a9ddcfd4f59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_norm_eq_iInf_of_complete_convex {K : Set F} (ne : K.Nonempty) (h₁ : IsComplete K)
    (h₂ : Convex ℝ K) : ∀ u : F, ∃ v ∈ K, ‖u - v‖ = ⨅ w : K, ‖u - w‖ := fun u => by
  let δ := ⨅ w : K, ‖u - w‖
  letI : Nonempty K := ne.to_subtype
  have zero_le_δ : 0 ≤ δ := le_ciInf fun _ => norm_nonneg _
  have δ_le : ∀ w : K, δ ≤ ‖u - w‖ := ciInf_le ⟨0, Set.forall_range_iff.2 fun _ => norm_nonneg _⟩
  have δ_le' : ∀ w ∈ K, δ ≤ ‖u - w‖ := fun w hw => δ_le ⟨w, hw⟩
  -- Step 1: since `δ` is the infimum, can find a sequence `w : ℕ → K` in `K`
  -- such that `‖u - w n‖ < δ + 1 / (n + 1)` (which implies `‖u - w n‖ --> δ`);
  -- maybe this should be a separate lemma
  have exists_seq : ∃ w : ℕ → K, ∀ n, ‖u - w n‖ < δ + 1 / (n + 1) := by
    have hδ : ∀ n : ℕ, δ < δ + 1 / (n + 1) := fun n =>
      lt_add_of_le_of_pos le_rfl Nat.one_div_pos_of_nat
    have h := fun n => exists_lt_of_ciInf_lt (hδ n)
    let w : ℕ → K := fun n => Classical.choose (h n)
    exact ⟨w, fun n => Classical.choose_spec (h n)⟩
  rcases exists_seq with ⟨w, hw⟩
  have norm_tendsto : Tendsto (fun n => ‖u - w n‖) atTop (nhds δ) := by
    have h : Tendsto (fun _ : ℕ => δ) atTop (nhds δ) := tendsto_const_nhds
    have h' : Tendsto (fun n : ℕ => δ + 1 / (n + 1)) atTop (nhds δ) := by
      convert h.add tendsto_one_div_add_atTop_nhds_0_nat
      simp only [add_zero]
    exact tendsto_of_tendsto_of_tendsto_of_le_of_le h h' (fun x => δ_le _) fun x => le_of_lt (hw _)
  -- Step 2: Prove that the sequence `w : ℕ → K` is a Cauchy sequence
  have seq_is_cauchy : CauchySeq fun n => (w n : F) := by
    rw [cauchySeq_iff_le_tendsto_0]
    -- splits into three goals
    let b := fun n : ℕ => 8 * δ * (1 / (n + 1)) + 4 * (1 / (n + 1)) * (1 / (n + 1))
    use fun n => sqrt (b n)
    constructor
    -- first goal :  `∀ (n : ℕ), 0 ≤ sqrt (b n)`
    intro n
    exact sqrt_nonneg _
    constructor
    -- second goal : `∀ (n m N : ℕ), N ≤ n → N ≤ m → dist ↑(w n) ↑(w m) ≤ sqrt (b N)`
    intro p q N hp hq
    let wp := (w p : F)
    let wq := (w q : F)
    let a := u - wq
    let b := u - wp
    let half := 1 / (2 : ℝ)
    let div := 1 / ((N : ℝ) + 1)
    have :
      4 * ‖u - half • (wq + wp)‖ * ‖u - half • (wq + wp)‖ + ‖wp - wq‖ * ‖wp - wq‖ =
        2 * (‖a‖ * ‖a‖ + ‖b‖ * ‖b‖) :=
      calc
        4 * ‖u - half • (wq + wp)‖ * ‖u - half • (wq + wp)‖ + ‖wp - wq‖ * ‖wp - wq‖ =
            2 * ‖u - half • (wq + wp)‖ * (2 * ‖u - half • (wq + wp)‖) + ‖wp - wq‖ * ‖wp - wq‖ :=
          by ring
        _ =
            absR (2 : ℝ) * ‖u - half • (wq + wp)‖ * (absR (2 : ℝ) * ‖u - half • (wq + wp)‖) +
              ‖wp - wq‖ * ‖wp - wq‖ := by
          rw [_root_.abs_of_nonneg]
          exact zero_le_two
        _ =
            ‖(2 : ℝ) • (u - half • (wq + wp))‖ * ‖(2 : ℝ) • (u - half • (wq + wp))‖ +
              ‖wp - wq‖ * ‖wp - wq‖ :=
          by simp [norm_smul]
        _ = ‖a + b‖ * ‖a + b‖ + ‖a - b‖ * ‖a - b‖ := by
          rw [smul_sub, smul_smul, mul_one_div_cancel (_root_.two_ne_zero : (2 : ℝ) ≠ 0), ←
            one_add_one_eq_two, add_smul]
          simp only [one_smul]
          have eq₁ : wp - wq = a - b := (sub_sub_sub_cancel_left _ _ _).symm
          have eq₂ : u + u - (wq + wp) = a + b
          show u + u - (wq + wp) = u - wq + (u - wp)
          abel
          rw [eq₁, eq₂]
        _ = 2 * (‖a‖ * ‖a‖ + ‖b‖ * ‖b‖) := parallelogram_law_with_norm ℝ _ _
    have eq : δ ≤ ‖u - half • (wq + wp)‖ := by
      rw [smul_add]
      apply δ_le'
      apply h₂
      repeat' exact Subtype.mem _
      repeat' exact le_of_lt one_half_pos
      exact add_halves 1
    have eq₁ : 4 * δ * δ ≤ 4 * ‖u - half • (wq + wp)‖ * ‖u - half • (wq + wp)‖ := by
      simp_rw [mul_assoc]
      gcongr
    have eq₂ : ‖a‖ ≤ δ + div :=
        le_trans (le_of_lt <| hw q) (add_le_add_left (Nat.one_div_le_one_div hq) _)
    have eq₂' : ‖b‖ ≤ δ + div :=
        le_trans (le_of_lt <| hw p) (add_le_add_left (Nat.one_div_le_one_div hp) _)
    rw [dist_eq_norm]
    apply nonneg_le_nonneg_of_sq_le_sq
    · exact sqrt_nonneg _
    rw [mul_self_sqrt]
    calc
      ‖wp - wq‖ * ‖wp - wq‖ =
          2 * (‖a‖ * ‖a‖ + ‖b‖ * ‖b‖) - 4 * ‖u - half • (wq + wp)‖ * ‖u - half • (wq + wp)‖ := by
        simp [← this]
      _ ≤ 2 * (‖a‖ * ‖a‖ + ‖b‖ * ‖b‖) - 4 * δ * δ := by gcongr
      _ ≤ 2 * ((δ + div) * (δ + div) + (δ + div) * (δ + div)) - 4 * δ * δ := by gcongr
      _ = 8 * δ * div + 4 * div * div := by ring
    positivity
    -- third goal : `Tendsto (fun (n : ℕ) => sqrt (b n)) atTop (𝓝 0)`
    apply Tendsto.comp (f := b) (g := sqrt)
    · have : Tendsto sqrt (nhds 0) (nhds (sqrt 0)) := continuous_sqrt.continuousAt
      convert this
      exact sqrt_zero.symm
    have eq₁ : Tendsto (fun n : ℕ => 8 * δ * (1 / (n + 1))) atTop (nhds (0 : ℝ)) := by
      convert(@tendsto_const_nhds _ _ _ (8 * δ) _).mul tendsto_one_div_add_atTop_nhds_0_nat
      simp only [mul_zero]
    have : Tendsto (fun n : ℕ => (4 : ℝ) * (1 / (n + 1))) atTop (nhds (0 : ℝ)) := by
      convert(@tendsto_const_nhds _ _ _ (4 : ℝ) _).mul tendsto_one_div_add_atTop_nhds_0_nat
      simp only [mul_zero]
    have eq₂ :
        Tendsto (fun n : ℕ => (4 : ℝ) * (1 / (n + 1)) * (1 / (n + 1))) atTop (nhds (0 : ℝ)) := by
      convert this.mul tendsto_one_div_add_atTop_nhds_0_nat
      simp only [mul_zero]
    convert eq₁.add eq₂
    simp only [add_zero]
  -- Step 3: By completeness of `K`, let `w : ℕ → K` converge to some `v : K`.
  -- Prove that it satisfies all requirements.
  rcases cauchySeq_tendsto_of_isComplete h₁ (fun n => Subtype.mem _) seq_is_cauchy with
    ⟨v, hv, w_tendsto⟩
  use v
  use hv
  have h_cont : Continuous fun v => ‖u - v‖ :=
    Continuous.comp continuous_norm (Continuous.sub continuous_const continuous_id)
  have : Tendsto (fun n => ‖u - w n‖) atTop (nhds ‖u - v‖)
  convert Tendsto.comp h_cont.continuousAt w_tendsto
  exact tendsto_nhds_unique this norm_tendsto
#align exists_norm_eq_infi_of_complete_convex exists_norm_eq_iInf_of_complete_convex

/-- Characterization of minimizers for the projection on a convex set in a real inner product
space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e0bb95bd0e70c01a34341ae30299a7a56af087e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
