# hasSum_coeFn_tsum_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a04a3270470bf1935756deb791def3d6ce68b5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b80d0f00-9354-4d18-b2bb-960e5fa73810",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:832e6c6e-fdee-8af3-6bd8-4f6dc1f4be0f",
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
  "slug": "hassum-coefn-tsum-nat--e824b06c664ad5bc6cfa8f81",
  "source": {
    "blob": "0a04a3270470bf1935756deb791def3d6ce68b5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 110,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e824b06c664ad5bc6cfa8f81566c3c4ad08f1b30a915502fe5db284c3c54d9e2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:832e6c6e-fdee-8af3-6bd8-4f6dc1f4be0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–128.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant15c3f38f129a0a74832cefe26799e583fb0d926aad8d44cde3c04480d10c4f29.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a04a3270470bf1935756deb791def3d6ce68b5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
