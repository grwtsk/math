# hasSum_integral_of_dominated_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3acd551a-f7dc-aebb-0392-1c2ef9d0f5c3",
  "kind": "theorem",
  "lexical_name": "hasSum_integral_of_dominated_convergence",
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
  "slug": "hassum-integral-of-dominated-convergence--22cbbe55cf2a654ee0e1ae64",
  "source": {
    "blob": "2fdb626dcfd6a29fc42271275f776c0e0af4969d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22cbbe55cf2a654ee0e1ae64ba48260fab40374344e58e5ec5d49c63bd7d62ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3acd551a-f7dc-aebb-0392-1c2ef9d0f5c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_integral_of_dominated_convergence {ι} [Countable ι] {F : ι → α → G} {f : α → G}
    (bound : ι → α → ℝ) (hF_meas : ∀ n, AEStronglyMeasurable (F n) μ)
    (h_bound : ∀ n, ∀ᵐ a ∂μ, ‖F n a‖ ≤ bound n a)
    (bound_summable : ∀ᵐ a ∂μ, Summable fun n => bound n a)
    (bound_integrable : Integrable (fun a => ∑' n, bound n a) μ)
    (h_lim : ∀ᵐ a ∂μ, HasSum (fun n => F n a) (f a)) :
    HasSum (fun n => ∫ a, F n a ∂μ) (∫ a, f a ∂μ) := by
  have hb_nonneg : ∀ᵐ a ∂μ, ∀ n, 0 ≤ bound n a :=
    eventually_countable_forall.2 fun n => (h_bound n).mono fun a => (norm_nonneg _).trans
  have hb_le_tsum : ∀ n, bound n ≤ᵐ[μ] fun a => ∑' n, bound n a := by
    intro n
    filter_upwards [hb_nonneg, bound_summable]
      with _ ha0 ha_sum using ha_sum.le_tsum _ fun i _ => ha0 i
  have hF_integrable : ∀ n, Integrable (F n) μ := by
    refine fun n => bound_integrable.mono' (hF_meas n) ?_
    exact EventuallyLE.trans (h_bound n) (hb_le_tsum n)
  simp only [HasSum, ← integral_finset_sum _ fun n _ => hF_integrable n]
  refine tendsto_integral_filter_of_dominated_convergence
      (fun a => ∑' n, bound n a) ?_ ?_ bound_integrable h_lim
  · exact Eventually.of_forall fun s => s.aestronglyMeasurable_sum fun n _ => hF_meas n
  · filter_upwards with s
    filter_upwards [eventually_countable_forall.2 h_bound, hb_nonneg, bound_summable]
      with a hFa ha0 has
    calc
      ‖∑ n ∈ s, F n a‖ ≤ ∑ n ∈ s, bound n a := norm_sum_le_of_le _ fun n _ => hFa n
      _ ≤ ∑' n, bound n a := has.sum_le_tsum _ (fun n _ => ha0 n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant99b2083f2f9fcffd40caa9dfdce333487ec6b8a1428efd67621fed38e93c64d6.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fdb626dcfd6a29fc42271275f776c0e0af4969d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
