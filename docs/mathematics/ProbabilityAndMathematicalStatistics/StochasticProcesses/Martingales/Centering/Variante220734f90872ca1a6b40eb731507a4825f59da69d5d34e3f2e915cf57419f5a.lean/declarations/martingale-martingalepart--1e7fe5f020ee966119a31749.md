# martingale_martingalePart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:393a3177-c6d4-7b99-30c7-31c26bdbe21c",
  "kind": "theorem",
  "lexical_name": "martingale_martingalePart",
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
  "slug": "martingale-martingalepart--1e7fe5f020ee966119a31749",
  "source": {
    "blob": "0f1d95c99b523cf18c2281e130c4d1ffda0ac7cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 101,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e7fe5f020ee966119a31749f6a22be6a60b9470b4c54d14d90210eb8e0d8098",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:393a3177-c6d4-7b99-30c7-31c26bdbe21c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem martingale_martingalePart (hf : Adapted ℱ f) (hf_int : ∀ n, Integrable (f n) μ)
    [SigmaFiniteFiltration μ ℱ] : Martingale (martingalePart f ℱ μ) ℱ μ := by
  refine' ⟨adapted_martingalePart hf, fun i j hij => _⟩
  -- ⊢ μ[martingalePart f ℱ μ j | ℱ i] =ᵐ[μ] martingalePart f ℱ μ i
  have h_eq_sum : μ[martingalePart f ℱ μ j|ℱ i] =ᵐ[μ]
      f 0 + ∑ k in Finset.range j, (μ[f (k + 1) - f k|ℱ i] - μ[μ[f (k + 1) - f k|ℱ k]|ℱ i]) := by
    rw [martingalePart_eq_sum]
    refine' (condexp_add (hf_int 0) _).trans _
    · exact integrable_finset_sum' _ fun i _ => ((hf_int _).sub (hf_int _)).sub integrable_condexp
    refine' (EventuallyEq.add EventuallyEq.rfl (condexp_finset_sum fun i _ => _)).trans _
    · exact ((hf_int _).sub (hf_int _)).sub integrable_condexp
    refine' EventuallyEq.add _ _
    · rw [condexp_of_stronglyMeasurable (ℱ.le _) _ (hf_int 0)]
      · exact (hf 0).mono (ℱ.mono (zero_le i))
    · exact eventuallyEq_sum fun k _ => condexp_sub ((hf_int _).sub (hf_int _)) integrable_condexp
  refine' h_eq_sum.trans _
  have h_ge : ∀ k, i ≤ k → μ[f (k + 1) - f k|ℱ i] - μ[μ[f (k + 1) - f k|ℱ k]|ℱ i] =ᵐ[μ] 0 := by
    intro k hk
    have : μ[μ[f (k + 1) - f k|ℱ k]|ℱ i] =ᵐ[μ] μ[f (k + 1) - f k|ℱ i] :=
      condexp_condexp_of_le (ℱ.mono hk) (ℱ.le k)
    filter_upwards [this] with x hx
    rw [Pi.sub_apply, Pi.zero_apply, hx, sub_self]
  have h_lt : ∀ k, k < i → μ[f (k + 1) - f k|ℱ i] - μ[μ[f (k + 1) - f k|ℱ k]|ℱ i] =ᵐ[μ]
      f (k + 1) - f k - μ[f (k + 1) - f k|ℱ k] := by
    refine' fun k hk => EventuallyEq.sub _ _
    · rw [condexp_of_stronglyMeasurable]
      · exact ((hf (k + 1)).mono (ℱ.mono (Nat.succ_le_of_lt hk))).sub ((hf k).mono (ℱ.mono hk.le))
      · exact (hf_int _).sub (hf_int _)
    · rw [condexp_of_stronglyMeasurable]
      · exact stronglyMeasurable_condexp.mono (ℱ.mono hk.le)
      · exact integrable_condexp
  rw [martingalePart_eq_sum]
  refine' EventuallyEq.add EventuallyEq.rfl _
  rw [← Finset.sum_range_add_sum_Ico _ hij, ←
    add_zero (∑ i in Finset.range i, (f (i + 1) - f i - μ[f (i + 1) - f i|ℱ i]))]
  refine' (eventuallyEq_sum fun k hk => h_lt k (Finset.mem_range.mp hk)).add _
  refine' (eventuallyEq_sum fun k hk => h_ge k (Finset.mem_Ico.mp hk).1).trans _
  simp only [Finset.sum_const_zero, Pi.zero_apply]
  rfl
#align measure_theory.martingale_martingale_part MeasureTheory.martingale_martingalePart

-- The following two lemmas demonstrate the essential uniqueness of the decomposition
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Centering/Variante220734f90872ca1a6b40eb731507a4825f59da69d5d34e3f2e915cf57419f5a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f1d95c99b523cf18c2281e130c4d1ffda0ac7cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
