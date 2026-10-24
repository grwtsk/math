# le_comp_radius_of_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a002e7ca-42ec-2bd5-3aac-e154fcbec836",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26748433-025d-216b-4448-23cc0432fe36",
  "kind": "theorem",
  "lexical_name": "le_comp_radius_of_summable",
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
  "slug": "le-comp-radius-of-summable--079fecfd0b806b2fe9e38901",
  "source": {
    "blob": "9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 497,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:079fecfd0b806b2fe9e38901f07e2fad386881b6fe476a697a2f822073366000",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26748433-025d-216b-4448-23cc0432fe36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_comp_radius_of_summable (q : FormalMultilinearSeries 𝕜 F G)
    (p : FormalMultilinearSeries 𝕜 E F) (r : ℝ≥0)
    (hr : Summable fun i : Σ n, Composition n => ‖q.compAlongComposition p i.2‖₊ * r ^ i.1) :
    (r : ℝ≥0∞) ≤ (q.comp p).radius := by
  refine
    le_radius_of_bound_nnreal _
      (∑' i : Σ n, Composition n, ‖compAlongComposition q p i.snd‖₊ * r ^ i.fst) fun n => ?_
  calc
    ‖FormalMultilinearSeries.comp q p n‖₊ * r ^ n ≤
        ∑' c : Composition n, ‖compAlongComposition q p c‖₊ * r ^ n := by
      rw [tsum_fintype, ← Finset.sum_mul]
      exact mul_le_mul' (nnnorm_sum_le _ _) le_rfl
    _ ≤ ∑' i : Σ n : ℕ, Composition n, ‖compAlongComposition q p i.snd‖₊ * r ^ i.fst :=
      NNReal.tsum_comp_le_tsum_of_inj hr sigma_mk_injective

/-!
### Composing analytic functions

Now, we will prove that the composition of the partial sums of `q` and `p` up to order `N` is
given by a sum over some large subset of `Σ n, Composition n` of `q.compAlongComposition p`, to
deduce that the series for `q.comp p` indeed converges to `g ∘ f` when `q` is a power series for
`g` and `p` is a power series for `f`.

This proof is a big reindexing argument of a sum. Since it is a bit involved, we define first
the source of the change of variables (`compPartialSumSource`), its target
(`compPartialSumTarget`) and the change of variables itself (`compChangeOfVariables`) before
giving the main statement in `comp_partialSum`. -/


/-- Source set in the change of variables to compute the composition of partial sums of formal
power series.
See also `comp_partialSum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
