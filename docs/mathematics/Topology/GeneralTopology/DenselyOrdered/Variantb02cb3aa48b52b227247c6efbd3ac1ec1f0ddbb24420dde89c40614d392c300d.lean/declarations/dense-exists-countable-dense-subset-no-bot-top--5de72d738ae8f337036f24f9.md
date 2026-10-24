# Dense.exists_countable_dense_subset_no_bot_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6158d1cc81003eb1ac571469b7ac645e2e7b31f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22e21bbb-d9a0-cf1e-70b3-2e585b3f95b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a7dd2d8-ed25-b1fc-a76e-f011e6735b70",
  "kind": "theorem",
  "lexical_name": "Dense.exists_countable_dense_subset_no_bot_top",
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
  "slug": "dense-exists-countable-dense-subset-no-bot-top--5de72d738ae8f337036f24f9",
  "source": {
    "blob": "6158d1cc81003eb1ac571469b7ac645e2e7b31f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variantb02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5de72d738ae8f337036f24f9d3b40fd8faed9728082e69d0a300a3f6c6eca136",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenselyOrdered/Variantb02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a7dd2d8-ed25-b1fc-a76e-f011e6735b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.exists_countable_dense_subset_no_bot_top [Nontrivial α] {s : Set α} [SeparableSpace s]
    (hs : Dense s) :
    ∃ t, t ⊆ s ∧ t.Countable ∧ Dense t ∧ (∀ x, IsBot x → x ∉ t) ∧ ∀ x, IsTop x → x ∉ t := by
  rcases hs.exists_countable_dense_subset with ⟨t, hts, htc, htd⟩
  refine ⟨t \ ({ x | IsBot x } ∪ { x | IsTop x }), ?_, ?_, ?_, fun x hx => ?_, fun x hx => ?_⟩
  · exact sdiff_subset.trans hts
  · exact htc.mono sdiff_subset
  · exact htd.sdiff_finite ((subsingleton_isBot α).finite.union (subsingleton_isTop α).finite)
  · simp [hx]
  · simp [hx]

variable (α) in
/-- If `α` is a nontrivial separable dense linear order, then there exists a
countable dense set `s : Set α` that contains neither top nor bottom elements of `α`.
For a dense set containing both bot and top elements, see
`exists_countable_dense_bot_top`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenselyOrdered/Variantb02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variantb02cb3aa48b52b227247c6efbd3ac1ec1f0ddbb24420dde89c40614d392c300d.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6158d1cc81003eb1ac571469b7ac645e2e7b31f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
