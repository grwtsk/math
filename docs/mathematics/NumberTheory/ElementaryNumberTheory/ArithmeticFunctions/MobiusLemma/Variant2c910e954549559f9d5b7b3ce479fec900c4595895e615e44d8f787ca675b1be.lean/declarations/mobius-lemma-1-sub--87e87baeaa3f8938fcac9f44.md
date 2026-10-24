# mobius_lemma_1_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e2b3a36-0c06-b14f-9302-0ca3188740ae",
  "kind": "theorem",
  "lexical_name": "mobius_lemma_1_sub",
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
  "slug": "mobius-lemma-1-sub--87e87baeaa3f8938fcac9f44",
  "source": {
    "blob": "7774530b068098c253438684ce708e5cd50f6a30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 180,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87e87baeaa3f8938fcac9f4469492d52199cfaea8f39fc3e623a8e6aed189e74",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e2b3a36-0c06-b14f-9302-0ca3188740ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_lemma_1_sub (x : ℝ) (hx : x > 0) :
    Q x = ∑ k ∈ Ioc 0 ⌊x⌋₊, M (sqrt (x / k)) := by
  have h_exercise : ∑ n ∈ Ioc 0 ⌊x⌋₊, (if Squarefree n then 1 else 0) =
      ∑ k ∈ Ioc 0 ⌊x⌋₊, ∑ d ∈ filter (fun d ↦ d ^ 2 ∣ k) (Nat.divisors k), (moebius d : ℤ) :=
    sum_congr rfl fun n hn ↦ by
      rw [← sum_sq_div_moebius_eq_squarefree n (mem_Ioc.mp hn).1]; rfl
  have h_rewrite : ∑ k ∈ Ioc 0 ⌊x⌋₊, ∑ d ∈ filter (fun d ↦ d ^ 2 ∣ k) (Nat.divisors k),
      (moebius d : ℤ) = ∑ d ∈ Icc 1 ⌊sqrt x⌋₊, ∑ k ∈ Icc 1 ⌊x / (d ^ 2)⌋₊, (moebius d : ℤ) := by
    have h_reorder : ∑ k ∈ Ioc 0 ⌊x⌋₊, ∑ d ∈ filter (fun d ↦ d ^ 2 ∣ k) (Nat.divisors k),
        (moebius d : ℤ) =
          ∑ d ∈ Icc 1 ⌊sqrt x⌋₊, ∑ k ∈ filter (fun k ↦ d ^ 2 ∣ k) (Ioc 0 ⌊x⌋₊),
            (moebius d : ℤ) := by
      repeat rw [sum_sigma']
      apply sum_bij (fun p hp ↦ ⟨p.snd, p.fst⟩)
      · simp only [mem_sigma, mem_Ioc, mem_filter, Nat.mem_divisors, mem_Icc, and_imp] at *
        exact fun a ha₁ ha₂ ha₃ ha₄ ha₅ ↦ ⟨⟨Nat.pos_of_dvd_of_pos ha₃ ha₁, Nat.le_floor <|
          le_sqrt_of_sq_le <| le_trans (mod_cast Nat.le_of_dvd ha₁ ha₅) (Nat.floor_le hx.le |>
            le_trans (Nat.cast_le.mpr ha₂))⟩, ⟨ha₁, ha₂⟩, ha₅⟩
      · aesop
      · simp only [mem_sigma, mem_Icc, mem_filter, mem_Ioc, Nat.mem_divisors, Sigma.exists,
          and_imp]
        exact fun b hb₁ hb₂ hb₃ hb₄ hb₅ ↦
          ⟨b.snd, b.fst, ⟨⟨hb₃, hb₄⟩, ⟨dvd_of_mul_left_dvd hb₅, by grind⟩, hb₅⟩, rfl⟩
      · grind
    have h_div : ∀ d ∈ Icc 1 ⌊sqrt x⌋₊,
        filter (fun k ↦ d ^ 2 ∣ k) (Ioc 0 ⌊x⌋₊) =
          image (fun m ↦ d ^ 2 * m) (Icc 1 ⌊x / (d ^ 2)⌋₊) := by
      intro d hd
      ext k
      simp only [mem_filter, mem_Ioc, mem_image, mem_Icc]
      refine ⟨fun hk ↦ ?_, ?_⟩
      · obtain ⟨a, rfl⟩ := hk.2
        refine ⟨a, ⟨by nlinarith [mem_Icc.mp hd], Nat.le_floor ?_⟩, rfl⟩
        rw [le_div_iff₀ (by norm_cast; nlinarith [mem_Icc.mp hd])]
        exact Nat.floor_le hx.le |> le_trans (mod_cast by nlinarith)
      · simp only [mem_Icc, forall_exists_index, and_imp] at *
        rintro m hm₁ hm₂ rfl
        refine ⟨⟨by nlinarith, ?_⟩, dvd_mul_right _ _⟩
        rw [Nat.le_floor_iff (by positivity), le_div_iff₀ (by norm_cast; nlinarith)] at *
        norm_cast at *
        simpa [mul_comm] using hm₂
    simp_all only [sum_const]
    exact sum_congr rfl fun i hi ↦ by
      rw [card_image_of_injective _ fun a b h ↦
        mul_left_cancel₀ (pow_ne_zero 2 <| Nat.ne_of_gt <| (mem_Icc.mp hi).1) h]
  have h_interchange : ∑ d ∈ Icc 1 ⌊Real.sqrt x⌋₊, ∑ k ∈ Icc 1 ⌊x / (d ^ 2)⌋₊, (moebius d : ℤ) =
      ∑ k ∈ Ioc 0 ⌊x⌋₊, ∑ d ∈ Icc 1 ⌊Real.sqrt (x / k)⌋₊, (moebius d : ℤ) := by
    rw [sum_sigma', sum_sigma']
    apply sum_bij (fun p hp ↦ ⟨p.snd, p.fst⟩)
    · norm_num at *
      refine fun a ha₁ ha₂ ha₃ ha₄ ↦ ⟨⟨ha₃, ha₄.trans (Nat.floor_mono <| div_le_self hx.le <|
        mod_cast Nat.one_le_pow _ _ ha₁)⟩, ha₁, ?_⟩
      rw [Nat.le_floor_iff (by positivity), le_div_iff₀ (by positivity)] at *
      exact le_sqrt_of_sq_le (by nlinarith [mul_self_sqrt (Nat.cast_nonneg a.snd)])
    · grind
    · simp only [Nat.cast_nonneg, sqrt_div', mem_sigma, mem_Ioc, mem_Icc, Sigma.exists,
        and_imp] at *
      refine fun ⟨a, b⟩ ha hb ha' hb' ↦ ⟨b, a, ?_, rfl⟩
      rw [Nat.le_floor_iff (by positivity), le_div_iff₀] at * <;> norm_num at *
      · refine ⟨⟨ha', le_trans (le_mul_of_one_le_right (by positivity)
          (le_sqrt_of_sq_le (mod_cast ha))) hb'⟩, ha, Nat.le_floor ?_⟩
        rw [le_div_iff₀ (by positivity)]
        nlinarith [mul_self_sqrt (Nat.cast_nonneg a), mul_self_sqrt (show 0 ≤ x by positivity),
          sqrt_nonneg a, sqrt_nonneg x, mul_le_mul_of_nonneg_left hb' (sqrt_nonneg a),
            mul_le_mul_of_nonneg_left hb' (sqrt_nonneg a)]
      · positivity
    · intro a ha; simp_all
  simp_all only [Q, M, sum_boole, Nat.cast_id]; rfl

/-- The sum `∑' n, μ(n) / n² = 1 / ζ(2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7774530b068098c253438684ce708e5cd50f6a30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
