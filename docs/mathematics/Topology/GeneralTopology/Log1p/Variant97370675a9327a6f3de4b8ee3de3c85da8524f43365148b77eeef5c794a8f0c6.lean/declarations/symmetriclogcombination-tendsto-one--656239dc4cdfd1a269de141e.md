# symmetricLogCombination_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90dfc134-5303-8189-5003-6482fee46114",
  "kind": "theorem",
  "lexical_name": "symmetricLogCombination_tendsto_one",
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
  "slug": "symmetriclogcombination-tendsto-one--656239dc4cdfd1a269de141e",
  "source": {
    "blob": "bf9e8892b67e403f0ebaf17412bc3ebafbeb336d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 445,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:656239dc4cdfd1a269de141eed0cf255723b5fbde503cf3517071ca8da6dbeb9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90dfc134-5303-8189-5003-6482fee46114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogCombination_tendsto_one :
    Filter.Tendsto symmetricLogCombination (nhdsWithin 0 (Set.Ioi 0)) (nhds 1) := by
  -- Use the alternative form for t ∈ (0, 1)
  have heventually : ∀ᶠ t in nhdsWithin 0 (Set.Ioi 0), symmetricLogCombination t =
      Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) := by
    rw [Filter.eventually_iff_exists_mem]
    use Set.Ioo 0 1
    constructor
    · rw [mem_nhdsWithin]
      use Set.Iio 1
      refine ⟨isOpen_Iio, ?_, ?_⟩
      · norm_num
      · intro x ⟨hx1, hx2⟩
        exact ⟨hx2, hx1⟩  -- hx2 : x ∈ Ioi 0 = (0 < x), hx1 : x ∈ Iio 1 = (x < 1)
    · intro t ht
      exact symmetricLogCombination_alt t ht.1 ht.2
  apply Filter.Tendsto.congr' (Filter.EventuallyEq.symm heventually)
  -- Rewrite as ratio: [log(1-t²)/t²] / [(log(1+t)/t) · (log(1-t)/t)]
  have hrewrite : ∀ᶠ t in nhdsWithin 0 (Set.Ioi 0),
      Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) =
      (Real.log (1 - t^2) / t^2) / ((Real.log (1 + t) / t) * (Real.log (1 - t) / t)) := by
    filter_upwards [self_mem_nhdsWithin] with t ht
    have ht_ne : t ≠ 0 := ne_of_gt ht
    field_simp
  apply Filter.Tendsto.congr' (Filter.EventuallyEq.symm hrewrite)
  -- Apply the limits
  have h1 := tendsto_log_one_sub_sq_div_sq  -- log(1-t²)/t² → -1
  have h2 := tendsto_log_one_add_div_self   -- log(1+t)/t → 1
  have h3 := tendsto_log_one_sub_div_self   -- log(1-t)/t → -1
  -- The product (log(1+t)/t) * (log(1-t)/t) → 1 * (-1) = -1
  have hprod : Filter.Tendsto (fun t => (Real.log (1 + t) / t) * (Real.log (1 - t) / t))
      (nhdsWithin 0 (Set.Ioi 0)) (nhds (-1)) := by
    have := h2.mul h3
    simp only [one_mul] at this
    exact this
  -- The ratio (-1) / (-1) = 1
  have hdiv : Filter.Tendsto (fun t => (Real.log (1 - t^2) / t^2) /
      ((Real.log (1 + t) / t) * (Real.log (1 - t) / t)))
      (nhdsWithin 0 (Set.Ioi 0)) (nhds 1) := by
    have hne : (-1 : ℝ) ≠ 0 := by norm_num
    have := h1.div hprod hne
    simp only [neg_div_neg_eq, div_one] at this
    exact this
  exact hdiv

/-- Symmetric combination bound: |g(t)| ≤ C for t ∈ (0, δ) where δ < 1.

For small t, using Taylor analysis:
  g(t) = 1 + t²/2 · (1/log(1-t²) - 1/log(1+t) - 1/log(1-t)) + O(t⁴)

A crude but sufficient bound: for t ∈ (0, 1/2), |g(t)| ≤ 2.
This can be refined using Taylor model arithmetic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf9e8892b67e403f0ebaf17412bc3ebafbeb336d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
