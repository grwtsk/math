# sum_effectiveTypeIIShellPrefixPairs_eq_sum_relevantShellBlocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ec2755270e539552245ce1c920347bce3a21e4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c341787-d6e3-1420-ddc6-046325fa0b81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f47c210-b387-cb90-a753-b152c4a3eb0c",
  "kind": "theorem",
  "lexical_name": "sum_effectiveTypeIIShellPrefixPairs_eq_sum_relevantShellBlocks",
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
  "slug": "sum-effectivetypeiishellprefixpairs-eq-sum-relevantshellblocks--86ea51d9387f6474b35d4252",
  "source": {
    "blob": "1ec2755270e539552245ce1c920347bce3a21e4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 443,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86ea51d9387f6474b35d4252ea9018a71b29aeddba7181fe30a715a60c2383c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f47c210-b387-cb90-a753-b152c4a3eb0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_effectiveTypeIIShellPrefixPairs_eq_sum_relevantShellBlocks
    {N q x : ℕ} (hx : x ∈ typeIIProductShell N q) :
    (∑ pair ∈ effectiveTypeIIShellPrefixPairs N q x,
        conductorThreeTypeIIPairTerm pair) =
      ∑ B ∈ relevantShellBlocks N q,
        ∑ pair ∈ shellFactorBlockPrefixPairs B x,
          conductorThreeTypeIIPairTerm pair := by
  classical
  rw [effectiveTypeIIShellPrefixPairs_eq_biUnion_relevantBlocks hx]
  exact Finset.sum_biUnion relevantShellBlockPrefixPairs_pairwiseDisjoint

/-- The global finite Type II cutoff pairing is exactly the sum over the
effective pair carrier.  Coefficients outside the fixed Vaughan cutoffs
vanish, so no extra support hypothesis is needed. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant52010488d2d248e6182ba3676d920a9d3af2b1481cd0cc2c4b637cb63f6ede6e.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ec2755270e539552245ce1c920347bce3a21e4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
