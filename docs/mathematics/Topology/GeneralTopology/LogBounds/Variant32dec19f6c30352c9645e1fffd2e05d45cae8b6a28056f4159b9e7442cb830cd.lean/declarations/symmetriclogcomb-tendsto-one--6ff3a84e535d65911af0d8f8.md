# symmetricLogComb_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d818859-0157-6cc4-5d93-887c5f7a6c1a",
  "kind": "theorem",
  "lexical_name": "symmetricLogComb_tendsto_one",
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
  "slug": "symmetriclogcomb-tendsto-one--6ff3a84e535d65911af0d8f8",
  "source": {
    "blob": "e23fcf52bff736a11cb9f88cef61f370d9e54480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 419,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff3a84e535d65911af0d8f86d5fccd2c2b2931289fd19f98a15c8413a18ee7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d818859-0157-6cc4-5d93-887c5f7a6c1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogComb_tendsto_one :
    Filter.Tendsto symmetricLogComb (nhdsWithin 0 (Set.Ioi 0)) (nhds 1) := by
  -- Use the alternative form for t ∈ (0, 1)
  have heventually : ∀ᶠ t in nhdsWithin 0 (Set.Ioi 0), symmetricLogComb t =
      log (1 - t^2) / (log (1 + t) * log (1 - t)) := by
    rw [Filter.eventually_iff_exists_mem]
    use Set.Ioo 0 1
    constructor
    · rw [mem_nhdsWithin]
      use Set.Iio 1
      refine ⟨isOpen_Iio, ?_, ?_⟩
      · norm_num
      · intro x ⟨hx1, hx2⟩
        exact ⟨hx2, hx1⟩
    · intro t ht
      exact symmetricLogComb_alt t ht.1 ht.2
  apply Filter.Tendsto.congr' (Filter.EventuallyEq.symm heventually)
  -- Rewrite as ratio: [log(1-t²)/t²] / [(log(1+t)/t) · (log(1-t)/t)]
  have hrewrite : ∀ᶠ t in nhdsWithin 0 (Set.Ioi 0),
      log (1 - t^2) / (log (1 + t) * log (1 - t)) =
      (log (1 - t^2) / t^2) / ((log (1 + t) / t) * (log (1 - t) / t)) := by
    filter_upwards [self_mem_nhdsWithin] with t ht
    have ht_ne : t ≠ 0 := ne_of_gt ht
    field_simp
  apply Filter.Tendsto.congr' (Filter.EventuallyEq.symm hrewrite)
  -- Apply the limits
  have h1 := tendsto_log_one_sub_sq_div_sq  -- log(1-t²)/t² → -1
  have h2 := tendsto_log_one_add_div_self   -- log(1+t)/t → 1
  have h3 := tendsto_log_one_sub_div_self   -- log(1-t)/t → -1
  -- The product (log(1+t)/t) * (log(1-t)/t) → 1 * (-1) = -1
  have hprod : Filter.Tendsto (fun t => (log (1 + t) / t) * (log (1 - t) / t))
      (nhdsWithin 0 (Set.Ioi 0)) (nhds (-1)) := by
    have := h2.mul h3
    simp only [one_mul] at this
    exact this
  -- The ratio (-1) / (-1) = 1
  have hdiv : Filter.Tendsto (fun t => (log (1 - t^2) / t^2) /
      ((log (1 + t) / t) * (log (1 - t) / t)))
      (nhdsWithin 0 (Set.Ioi 0)) (nhds 1) := by
    have hne : (-1 : ℝ) ≠ 0 := by norm_num
    have := h1.div hprod hne
    simp only [neg_div_neg_eq] at this
    convert this using 1
    norm_num
  exact hdiv

end LeanCert.Core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23fcf52bff736a11cb9f88cef61f370d9e54480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
