# multipliable_of_summable_log'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c2c3fe0d760c2292a5285bdb3d131e35c789669",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d9ba67a-8a5d-47a4-4a78-451c6fad5c03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf08baf6-34a9-ce5f-24d5-f187a9195420",
  "kind": "lemma",
  "lexical_name": "multipliable_of_summable_log'",
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
  "slug": "multipliable-of-summable-log--b1fdcf96d6be1c919c70314f",
  "source": {
    "blob": "0c2c3fe0d760c2292a5285bdb3d131e35c789669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1fdcf96d6be1c919c70314f3f56b70e42ed583d660fdd24c042fe59438f7779",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf08baf6-34a9-ce5f-24d5-f187a9195420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multipliable_of_summable_log' (hfn : ∀ᶠ i in cofinite, 0 < f i)
    (hf : Summable fun i ↦ log (f i)) : Multipliable f := by
  have : Summable fun i ↦ log (if 0 < f i then f i else 1) := by
    apply hf.congr_cofinite
    filter_upwards [hfn] with i hi using by simp [hi]
  have : Multipliable fun i ↦ if 0 < f i then f i else 1 := by
    refine multipliable_of_summable_log (fun i ↦ ?_) this
    split_ifs with h <;> simp [h]
  refine this.congr_cofinite₀ (fun i ↦ ?_) ?_
  · split_ifs with h <;> simp [h, ne_of_gt]
  · filter_upwards [hfn] with i hi using by simp [hi]

/-- The exponential of a convergent sum of real logs is the corresponding infinite product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2c3fe0d760c2292a5285bdb3d131e35c789669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
