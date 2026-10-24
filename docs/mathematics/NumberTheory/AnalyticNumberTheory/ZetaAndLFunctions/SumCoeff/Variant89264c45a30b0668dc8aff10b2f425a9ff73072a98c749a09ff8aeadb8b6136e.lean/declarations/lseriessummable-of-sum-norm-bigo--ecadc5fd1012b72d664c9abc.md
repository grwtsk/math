# LSeriesSummable_of_sum_norm_bigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9636175b-4fac-5429-626a-1b9e7b6d2bac",
  "kind": "theorem",
  "lexical_name": "LSeriesSummable_of_sum_norm_bigO",
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
  "slug": "lseriessummable-of-sum-norm-bigo--ecadc5fd1012b72d664c9abc",
  "source": {
    "blob": "82528f0cd256b1099d59b3b009eb099f66f9f87d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecadc5fd1012b72d664c9abce2f23bf17f5346eb023a756c081d1f27dd102094",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9636175b-4fac-5429-626a-1b9e7b6d2bac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeriesSummable_of_sum_norm_bigO
    (hO : (fun n ↦ ∑ k ∈ Icc 1 n, ‖f k‖) =O[atTop] fun n ↦ (n : ℝ) ^ r)
    (hr : 0 ≤ r) (hs : r < s.re) :
    LSeriesSummable f s := by
  have h₁ : (fun n ↦ if n = 0 then 0 else f n) =ᶠ[atTop] f := by
    filter_upwards [eventually_ne_atTop 0] with n hn using by simp_rw [if_neg hn]
  refine (LSeriesSummable_of_sum_norm_bigO_aux (if_pos rfl) ?_ hr hs).congr' _ h₁
  refine hO.congr' (Eventually.of_forall fun _ ↦ Finset.sum_congr rfl fun _ h ↦ ?_) EventuallyEq.rfl
  rw [if_neg (zero_lt_one.trans_le (mem_Icc.mp h).1).ne']

/-- If `f` takes nonnegative real values and the partial sums `∑ k ∈ Icc 1 n, f k` are `O(n ^ r)`
for some real `0 ≤ r`, then the L-series `LSeries f` converges at `s : ℂ` for all `s`
such that `r < s.re`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variant89264c45a30b0668dc8aff10b2f425a9ff73072a98c749a09ff8aeadb8b6136e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82528f0cd256b1099d59b3b009eb099f66f9f87d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
