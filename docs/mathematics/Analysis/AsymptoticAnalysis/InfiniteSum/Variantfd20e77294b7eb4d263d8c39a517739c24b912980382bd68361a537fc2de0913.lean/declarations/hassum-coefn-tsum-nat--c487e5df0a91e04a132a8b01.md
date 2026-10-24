# hasSum_coeFn_tsum_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d49b852-817d-4246-5c31-d279c9776b45",
  "kind": "theorem",
  "lexical_name": "hasSum_coeFn_tsum_nat",
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
  "slug": "hassum-coefn-tsum-nat--c487e5df0a91e04a132a8b01",
  "source": {
    "blob": "bc0e48481bd364de15f2b7c2713a97f24936a5f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c487e5df0a91e04a132a8b016921a73c5618e5f1646c492cc345eec93dd91f3f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d49b852-817d-4246-5c31-d279c9776b45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem hasSum_coeFn_tsum_nat {p : ℝ≥0∞} [hp : Fact (1 ≤ p)]
    [CompleteSpace E] {f : ℕ → Lp E p μ} (hf : ∑' n, ‖f n‖ₑ ≠ ∞) :
    ∀ᵐ a ∂μ, HasSum (fun n ↦ f n a) (⇑(∑' n, f n) a) := by
  have A : ∀ᵐ a ∂μ, Summable (fun n ↦ ‖f n a‖) := by
    apply summable_norm_of_tsum_eLpNorm_ne_top hp.out
    simpa [enorm_def] using hf
  have B : ∀ᵐ x ∂μ, ∀ n, ⇑(∑ i ∈ range n, f i) x = ∑ i ∈ range n, f i x := by
    rw [ae_all_iff]
    exact fun i ↦ coeFn_fun_finsetSum _ _
  obtain ⟨ns, hns, nslim⟩ : ∃ ns : ℕ → ℕ, StrictMono ns ∧ ∀ᵐ x ∂μ,
      Tendsto (fun i ↦ (∑ j ∈ range (ns i), f j : Lp E p μ) x) atTop (𝓝 ((∑' n, f n) x)) := by
    have : Tendsto (fun i ↦ (∑ j ∈ range i, f j)) atTop (𝓝 (∑' n, f n)) :=
      Summable.tendsto_sum_tsum_nat (Summable.of_enorm hf)
    exact (tendstoInMeasure_of_tendsto_Lp this).exists_seq_tendsto_ae
  filter_upwards [A, B, nslim] with x S h'x h''x
  apply hasSum_of_subseq_of_summable S (tendsto_finset_range.comp hns.tendsto_atTop)
  simpa only [h'x, Function.comp] using h''x

/-- If a series is converging in `L^p`, then it also converges pointwise almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc0e48481bd364de15f2b7c2713a97f24936a5f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
