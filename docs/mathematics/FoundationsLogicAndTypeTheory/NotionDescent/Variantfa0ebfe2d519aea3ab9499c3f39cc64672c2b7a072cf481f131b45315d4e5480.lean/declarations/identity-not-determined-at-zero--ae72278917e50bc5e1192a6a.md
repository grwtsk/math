# identity_not_determined_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2d28b1b6a52afd6d8e95974a7c122eb11309e77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03faea39-e8e1-4fe8-c8bf-f89b1049c76e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9732492a-d1e5-6b39-8e46-64316dd2d0ed",
  "kind": "theorem",
  "lexical_name": "identity_not_determined_at_zero",
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
  "slug": "identity-not-determined-at-zero--ae72278917e50bc5e1192a6a",
  "source": {
    "blob": "f2d28b1b6a52afd6d8e95974a7c122eb11309e77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae72278917e50bc5e1192a6aa90d3df2059ecda4f9ada164311b5a2f85dbe4d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9732492a-d1e5-6b39-8e46-64316dd2d0ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem identity_not_determined_at_zero : ¬ DeterminesAt vectorPolicy 0 id := by
  intro determined
  have impossible := determined (equivalent_at_zero (false, false) (true, false))
  simp at impossible

/-- The reverse implication between budget relations fails for these explicit vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2d28b1b6a52afd6d8e95974a7c122eb11309e77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
