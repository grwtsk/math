# tendsto_of_lintegral_tendsto_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:395a9be5-76e0-1a84-839d-9a8bedf5d750",
  "kind": "lemma",
  "lexical_name": "tendsto_of_lintegral_tendsto_of_monotone",
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
  "slug": "tendsto-of-lintegral-tendsto-of-monotone--dc6c87738f89d633a7801089",
  "source": {
    "blob": "5a2b936a3ea5d10ab3f40084b1f37182b408124a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc6c87738f89d633a7801089e5c0a3f2903ca9d99c21c81953fc88f84b9e2811",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:395a9be5-76e0-1a84-839d-9a8bedf5d750`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_of_lintegral_tendsto_of_monotone {α : Type*} {mα : MeasurableSpace α}
    {f : ℕ → α → ℝ≥0∞} {F : α → ℝ≥0∞} {μ : Measure α}
    (hF_meas : AEMeasurable F μ)
    (hf_tendsto : Tendsto (fun i ↦ ∫⁻ a, f i a ∂μ) atTop (𝓝 (∫⁻ a, F a ∂μ)))
    (hf_mono : ∀ᵐ a ∂μ, Monotone (fun i ↦ f i a))
    (h_bound : ∀ᵐ a ∂μ, ∀ i, f i a ≤ F a) (h_int_finite : ∫⁻ a, F a ∂μ ≠ ∞) :
    ∀ᵐ a ∂μ, Tendsto (fun i ↦ f i a) atTop (𝓝 (F a)) := by
  have : ∀ n, ∃ g : α → ℝ≥0∞, Measurable g ∧ g ≤ f n ∧ ∫⁻ a, f n a ∂μ = ∫⁻ a, g a ∂μ :=
    fun n ↦ exists_measurable_le_lintegral_eq _ _
  choose g gmeas gf hg using this
  let g' : ℕ → α → ℝ≥0∞ := Nat.rec (g 0) (fun n I x ↦ max (g (n+1) x) (I x))
  have M n : Measurable (g' n) := by
    induction n with
    | zero => simp [g', gmeas 0]
    | succ n ih => exact Measurable.max (gmeas (n+1)) ih
  have I : ∀ n x, g n x ≤ g' n x := by
    intro n x
    cases n with | zero | succ => simp [g']
  have I' : ∀ᵐ x ∂μ, ∀ n, g' n x ≤ f n x := by
    filter_upwards [hf_mono] with x hx n
    induction n with
    | zero => simpa [g'] using gf 0 x
    | succ n ih => exact max_le (gf (n+1) x) (ih.trans (hx (Nat.le_succ n)))
  have Int_eq n : ∫⁻ x, g' n x ∂μ = ∫⁻ x, f n x ∂μ := by
    apply le_antisymm
    · apply lintegral_mono_ae
      filter_upwards [I'] with x hx using hx n
    · rw [hg n]
      exact lintegral_mono (I n)
  have : ∀ᵐ a ∂μ, Tendsto (fun i ↦ g' i a) atTop (𝓝 (F a)) := by
    apply tendsto_of_lintegral_tendsto_of_monotone_aux _ hF_meas _ _ _ h_int_finite
    · exact fun n ↦ (M n).aemeasurable
    · simp_rw [Int_eq]
      exact hf_tendsto
    · exact Eventually.of_forall (fun x ↦ monotone_nat_of_le_succ (fun n ↦ le_max_right _ _))
    · filter_upwards [h_bound, I'] with x h'x hx n using (hx n).trans (h'x n)
  filter_upwards [this, I', h_bound] with x hx h'x h''x
  exact tendsto_of_tendsto_of_tendsto_of_le_of_le hx tendsto_const_nhds h'x h''x

/-- If an antitone sequence of functions has a lower bound and the sequence of integrals of these
functions tends to the integral of the lower bound, then the sequence of functions converges
almost everywhere to the lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2b936a3ea5d10ab3f40084b1f37182b408124a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
