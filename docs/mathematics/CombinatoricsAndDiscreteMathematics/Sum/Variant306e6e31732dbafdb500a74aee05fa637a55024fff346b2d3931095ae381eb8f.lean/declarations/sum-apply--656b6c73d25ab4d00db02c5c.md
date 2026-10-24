# sum_apply₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37f92c9c479dc627c20ca8a92ccf3e3400f820aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef45e088-6137-3a97-2a90-55fb6019f7f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff5db4bc-3ca4-2999-f7dc-45c10755bbcf",
  "kind": "theorem",
  "lexical_name": "sum_apply₀",
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
  "slug": "sum-apply--656b6c73d25ab4d00db02c5c",
  "source": {
    "blob": "37f92c9c479dc627c20ca8a92ccf3e3400f820aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:656b6c73d25ab4d00db02c5c7b7238586bf9e9dda852449e59c33be08d051fc7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff5db4bc-3ca4-2999-f7dc-45c10755bbcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_apply₀ (μ : ι → Measure α) (hs : NullMeasurableSet s (sum μ)) :
    sum μ s = ∑' i, μ i s := by
  apply le_antisymm ?_ (le_sum_apply _ _)
  rcases hs.exists_measurable_subset_ae_eq with ⟨t, ts, t_meas, ht⟩
  calc
  sum μ s = sum μ t := measure_congr ht.symm
  _ = ∑' i, μ i t := sum_apply _ t_meas
  _ ≤ ∑' i, μ i s := ENNReal.tsum_le_tsum fun i ↦ measure_mono ts

/-! For the next theorem, the countability assumption is necessary. For a counterexample, consider
an uncountable space, with a distinguished point `x₀`, and the sigma-algebra made of countable sets
not containing `x₀`, and their complements. All points but `x₀` are measurable.
Consider the sum of the Dirac masses at points different from `x₀`, and `s = {x₀}`. For any Dirac
mass `δ_x`, we have `δ_x (x₀) = 0`, so `∑' x, δ_x (x₀) = 0`. On the other hand, the measure
`sum δ_x` gives mass one to each point different from `x₀`, so it gives infinite mass to any
measurable set containing `x₀` (as such a set is uncountable), and by outer regularity one gets
`sum δ_x {x₀} = ∞`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant306e6e31732dbafdb500a74aee05fa637a55024fff346b2d3931095ae381eb8f.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f92c9c479dc627c20ca8a92ccf3e3400f820aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
