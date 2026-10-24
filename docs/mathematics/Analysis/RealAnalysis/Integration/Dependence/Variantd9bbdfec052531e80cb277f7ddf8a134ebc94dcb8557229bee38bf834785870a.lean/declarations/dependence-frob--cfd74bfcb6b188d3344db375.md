# dependence_frob

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ba25aca-ce5c-ed0f-14bd-dce5c53ee80a",
  "kind": "theorem",
  "lexical_name": "dependence_frob",
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
  "slug": "dependence-frob--cfd74bfcb6b188d3344db375",
  "source": {
    "blob": "4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 420,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfd74bfcb6b188d3344db375333eab96fc5a7a1423827f344ff447d8815b0469",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ba25aca-ce5c-ed0f-14bd-dce5c53ee80a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dependence_frob (hF : LocalHypsCore cϱ p Fn) {e : ℕ → ℕ → ℂ} {g : ℕ → ℕ → ℕ → ℂ}
    {δm : ℕ → ℕ → ℝ} (hδ0 : ∀ k l, 0 ≤ δm k l) (hδ1 : ∀ k l, δm k l ≤ 1 / 2)
    (hexp : ∀ k, k < p.d → ∀ l, l < p.d → ∀ N ∈ Finset.Ioc 0 ⌊p.X⌋₊,
      HasSum (fun r : ℕ => e (r + 1) N * (δm k l : ℂ) ^ (r + 1)) (g k l N))
    {K₁ K₀ ρ : ℝ} (hK₁ : 0 ≤ K₁) (hK₀ : 0 ≤ K₀) (hρ0 : 0 ≤ ρ) (hρ1 : ρ ≤ 1)
    (hQ : ∀ r : ℕ, 1 ≤ r → (∑ k ∈ Finset.range p.d, ∑ l ∈ Finset.range p.d,
      GentryNu (Pc p.X (e r)) p Fn k l ^ 2) ≤ K₁ * ρ ^ (2 * r) + K₀) :
    (∑ k ∈ Finset.range p.d, ∑ l ∈ Finset.range p.d, GentryNu (Pc p.X (g k l)) p Fn k l ^ 2)
      ≤ 2 * (K₁ * ρ ^ 2 + K₀) := by
  set d := p.d with hd
  set D : Matrix (Fin d) (Fin d) ℂ :=
    fun k l => ((GentryNu (Pc p.X (g k l)) p Fn k l : ℝ) : ℂ) with hD
  set Q : ℕ → Matrix (Fin d) (Fin d) ℂ :=
    fun r k l => ((GentryNu (Pc p.X (e r)) p Fn k l : ℝ) : ℂ) with hQdef
  set S : ℕ → Matrix (Fin d) (Fin d) ℂ :=
    fun r k l => ((δm k l ^ (r + 1) : ℝ) : ℂ) * Q (r + 1) k l with hSdef
  set s : ℕ → ℝ := fun r => (1 / 2) ^ (r + 1) * (Real.sqrt K₁ * ρ ^ (r + 1) + Real.sqrt K₀) with hs
  have hfrobQ : ∀ r, 1 ≤ r → frobSq (Q r) ≤ K₁ * ρ ^ (2 * r) + K₀ := by
    intro r hr
    have e1 : frobSq (Q r) = ∑ k ∈ Finset.range d, ∑ l ∈ Finset.range d,
        GentryNu (Pc p.X (e r)) p Fn k l ^ 2 :=
      frobSq_ofReal_fin d (fun k l => GentryNu (Pc p.X (e r)) p Fn k l)
    rw [e1]; exact hQ r hr
  have hs0 : ∀ r, 0 ≤ s r := fun r => by positivity
  have hS : ∀ r, frobSq (S r) ≤ s r ^ 2 := by
    intro r
    have h1 : frobSq (S r) ≤ ((1 / 2 : ℝ) ^ (r + 1)) ^ 2 * frobSq (Q (r + 1)) := by
      refine frobSq_hadamard_le (fun (k l : Fin d) => δm k l ^ (r + 1)) (Q (r + 1)) (fun k l => ?_)
      rw [abs_of_nonneg (pow_nonneg (hδ0 _ _) _)]
      exact pow_le_pow_left₀ (hδ0 _ _) (hδ1 _ _) _
    have h2 := hfrobQ (r + 1) (by omega)
    have h3 : K₁ * ρ ^ (2 * (r + 1)) + K₀ ≤ (Real.sqrt K₁ * ρ ^ (r + 1) + Real.sqrt K₀) ^ 2 := by
      have e1 : (Real.sqrt K₁ * ρ ^ (r + 1)) ^ 2 = K₁ * ρ ^ (2 * (r + 1)) := by
        rw [mul_pow, Real.sq_sqrt hK₁, ← pow_mul, mul_comm (r + 1) 2]
      have e2 : Real.sqrt K₀ ^ 2 = K₀ := Real.sq_sqrt hK₀
      nlinarith [mul_nonneg (mul_nonneg (Real.sqrt_nonneg K₁) (pow_nonneg hρ0 (r + 1)))
        (Real.sqrt_nonneg K₀)]
    calc frobSq (S r) ≤ ((1 / 2 : ℝ) ^ (r + 1)) ^ 2 * frobSq (Q (r + 1)) := h1
      _ ≤ ((1 / 2 : ℝ) ^ (r + 1)) ^ 2 * (K₁ * ρ ^ (2 * (r + 1)) + K₀) := by gcongr
      _ ≤ ((1 / 2 : ℝ) ^ (r + 1)) ^ 2 * (Real.sqrt K₁ * ρ ^ (r + 1) + Real.sqrt K₀) ^ 2 := by gcongr
      _ = s r ^ 2 := by rw [hs]; ring
  have hB : ∀ R, ∑ r ∈ Finset.range R, s r ≤ Real.sqrt K₁ * ρ + Real.sqrt K₀ := by
    intro R
    have hK : 0 ≤ Real.sqrt K₁ * ρ + Real.sqrt K₀ := by positivity
    have h1 : ∀ r, s r ≤ (Real.sqrt K₁ * ρ + Real.sqrt K₀) * (1 / 2 : ℝ) ^ (r + 1) := by
      intro r
      rw [hs]
      have : ρ ^ (r + 1) ≤ ρ := by
        calc ρ ^ (r + 1) = ρ * ρ ^ r := pow_succ' _ _
          _ ≤ ρ * 1 := by gcongr; exact pow_le_one₀ hρ0 hρ1
          _ = ρ := mul_one _
      have h0 : (0:ℝ) ≤ (1 / 2 : ℝ) ^ (r + 1) := by positivity
      have : Real.sqrt K₁ * ρ ^ (r + 1) + Real.sqrt K₀ ≤ Real.sqrt K₁ * ρ + Real.sqrt K₀ := by
        gcongr
      nlinarith
    calc ∑ r ∈ Finset.range R, s r
        ≤ ∑ r ∈ Finset.range R, (Real.sqrt K₁ * ρ + Real.sqrt K₀) * (1 / 2 : ℝ) ^ (r + 1) :=
          Finset.sum_le_sum fun r _ => h1 r
      _ = (Real.sqrt K₁ * ρ + Real.sqrt K₀) * ∑ r ∈ Finset.range R, (1 / 2 : ℝ) ^ (r + 1) := by
          rw [Finset.mul_sum]
      _ ≤ (Real.sqrt K₁ * ρ + Real.sqrt K₀) * (2 * (1 / 2)) := by
          gcongr; exact geom_partial_le (by norm_num) le_rfl R
      _ = Real.sqrt K₁ * ρ + Real.sqrt K₀ := by ring
  have hlim : ∀ i j : Fin d, Tendsto (fun R => ∑ r ∈ Finset.range R, S r i j) atTop (𝓝 (D i j)) := by
    intro i j
    have h := hasSum_gentryNu_Pc hF (i : ℤ) (j : ℤ) (hexp i i.isLt j j.isLt)
    have h2 := (Complex.ofRealCLM.hasSum h).tendsto_sum_nat
    simp only [Complex.ofRealCLM_apply, Complex.ofReal_mul] at h2
    convert h2 using 1
  have hfin := frobSq_le_of_tendsto_partialSums D S s hs0 hS hB hlim
  have eD : frobSq D = ∑ k ∈ Finset.range d, ∑ l ∈ Finset.range d,
      GentryNu (Pc p.X (g k l)) p Fn k l ^ 2 :=
    frobSq_ofReal_fin d (fun k l => GentryNu (Pc p.X (g k l)) p Fn k l)
  rw [eD] at hfin
  calc _ ≤ (Real.sqrt K₁ * ρ + Real.sqrt K₀) ^ 2 := hfin
    _ ≤ 2 * (K₁ * ρ ^ 2 + K₀) := by
        have e1 : (Real.sqrt K₁ * ρ) ^ 2 = K₁ * ρ ^ 2 := by rw [mul_pow, Real.sq_sqrt hK₁]
        have e2 : Real.sqrt K₀ ^ 2 = K₀ := Real.sq_sqrt hK₀
        nlinarith [sq_nonneg (Real.sqrt K₁ * ρ - Real.sqrt K₀)]

/-- translation: the diagonal entry as ∫ φ̂(s)² P_c(τ_k + s) ds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dependence/Variantd9bbdfec052531e80cb277f7ddf8a134ebc94dcb8557229bee38bf834785870a.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af9d9fe540f9a8fb57fe2ededbb81ea0f6a4444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
