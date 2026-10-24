# exists_measurable_le_forall_setLIntegral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4500fdc8-5143-bee5-3368-a3810b54a584",
  "kind": "theorem",
  "lexical_name": "exists_measurable_le_forall_setLIntegral_eq",
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
  "slug": "exists-measurable-le-forall-setlintegral-eq--05449b9ba6b774b25d5127ca",
  "source": {
    "blob": "c562802d04421b4b392bc1aa38c3c15bd0bfa291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05449b9ba6b774b25d5127ca38421179d1d648cc463517599abe0c1521afcfe8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4500fdc8-5143-bee5-3368-a3810b54a584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measurable_le_forall_setLIntegral_eq [SFinite μ] (f : α → ℝ≥0∞) :
    ∃ g : α → ℝ≥0∞, Measurable g ∧ g ≤ f ∧ ∀ s, ∫⁻ a in s, f a ∂μ = ∫⁻ a in s, g a ∂μ := by
  -- We only need to prove the `≤` inequality for the integrals, the other one follows from `g ≤ f`.
  rsuffices ⟨g, hgm, hgle, hleg⟩ :
      ∃ g : α → ℝ≥0∞, Measurable g ∧ g ≤ f ∧ ∀ s, ∫⁻ a in s, f a ∂μ ≤ ∫⁻ a in s, g a ∂μ
  · exact ⟨g, hgm, hgle, fun s ↦ (hleg s).antisymm (lintegral_mono hgle)⟩
  -- Without loss of generality, `μ` is a finite measure.
  wlog h : IsFiniteMeasure μ generalizing μ
  · choose g hgm hgle hgint using fun n ↦ @this (sfiniteSeq μ n) _ inferInstance
    refine ⟨fun x ↦ ⨆ n, g n x, .iSup hgm, fun x ↦ iSup_le (hgle · x), fun s ↦ ?_⟩
    rw [← sum_sfiniteSeq μ, Measure.restrict_sum_of_countable,
      lintegral_sum_measure, lintegral_sum_measure]
    exact ENNReal.tsum_le_tsum fun n ↦ (hgint n s).trans (lintegral_mono fun x ↦ le_iSup (g · x) _)
  -- According to `exists_measurable_le_lintegral_eq`, for any natural `n`
  -- we can choose a measurable function $g_{n}$
  -- such that $g_{n}(x) ≤ \min (f(x), n)$ for all $x$
  -- and both sides have the same integral over the whole space w.r.t. $μ$.
  have (n : ℕ): ∃ g : α → ℝ≥0∞, Measurable g ∧ g ≤ f ∧ g ≤ n ∧
      ∫⁻ a, min (f a) n ∂μ = ∫⁻ a, g a ∂μ := by
    simpa [and_assoc] using exists_measurable_le_lintegral_eq μ (f ⊓ n)
  choose g hgm hgf hgle hgint using this
  -- Let `φ` be the pointwise supremum of the functions $g_{n}$.
  -- Clearly, `φ` is a measurable function and `φ ≤ f`.
  set φ : α → ℝ≥0∞ := fun x ↦ ⨆ n, g n x
  have hφm : Measurable φ := by measurability
  have hφle : φ ≤ f := fun x ↦ iSup_le (hgf · x)
  refine ⟨φ, hφm, hφle, fun s ↦ ?_⟩
  -- Now we show the inequality between set integrals.
  -- Choose a simple function `ψ ≤ f` with values in `ℝ≥0` and prove for `ψ`.
  rw [lintegral_eq_nnreal]
  refine iSup₂_le fun ψ hψ ↦ ?_
  -- Choose `n` such that `ψ x ≤ n` for all `x`.
  obtain ⟨n, hn⟩ : ∃ n : ℕ, ∀ x, ψ x ≤ n := by
    rcases ψ.range.bddAbove with ⟨C, hC⟩
    exact ⟨⌈C⌉₊, fun x ↦ (hC <| ψ.mem_range_self x).trans (Nat.le_ceil _)⟩
  calc
    (ψ.map (↑)).lintegral (μ.restrict s) = ∫⁻ a in s, ψ a ∂μ :=
      SimpleFunc.lintegral_eq_lintegral .. |>.symm
    _ ≤ ∫⁻ a in s, min (f a) n ∂μ :=
      lintegral_mono fun a ↦ le_min (hψ _) (ENNReal.coe_le_coe.2 (hn a))
    _ ≤ ∫⁻ a in s, g n a ∂μ := by
      have : ∫⁻ a in (toMeasurable μ s)ᶜ, min (f a) n ∂μ ≠ ∞ :=
        IsFiniteMeasure.lintegral_lt_top_of_bounded_to_ennreal _ ⟨n, fun _ ↦ min_le_right ..⟩ |>.ne
      have hsm : MeasurableSet (toMeasurable μ s) := measurableSet_toMeasurable ..
      apply ENNReal.le_of_add_le_add_right this
      rw [← μ.restrict_toMeasurable_of_sFinite, lintegral_add_compl _ hsm, hgint,
        ← lintegral_add_compl _ hsm]
      gcongr with x
      exact le_min (hgf n x) (hgle n x)
    _ ≤ _ := lintegral_mono fun x ↦ le_iSup (g · x) n

/-- In a sigma-finite measure space, there exists an integrable function which is
positive everywhere (and with an arbitrarily small integral). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c562802d04421b4b392bc1aa38c3c15bd0bfa291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
