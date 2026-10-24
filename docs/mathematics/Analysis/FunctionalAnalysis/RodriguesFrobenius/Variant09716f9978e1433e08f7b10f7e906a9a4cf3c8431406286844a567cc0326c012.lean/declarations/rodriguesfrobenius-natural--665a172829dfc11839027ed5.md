# rodriguesFrobenius_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e20714831b2902952d8cecd5183c607ba55b7d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:faf7575c-1be8-6f66-1544-169614a8f106",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e879ce8-2b65-d6e2-872c-9116da6d302e",
  "kind": "theorem",
  "lexical_name": "rodriguesFrobenius_natural",
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
  "slug": "rodriguesfrobenius-natural--665a172829dfc11839027ed5",
  "source": {
    "blob": "1e20714831b2902952d8cecd5183c607ba55b7d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 154,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:665a172829dfc11839027ed53984ec3ba2ce7bc4b0a7009b60d0089a8a6980c5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e879ce8-2b65-d6e2-872c-9116da6d302e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rodriguesFrobenius_natural
    {Source : Type u}
    {Target : Type v}
    [NormedAddCommGroup Source]
    [InnerProductSpace ℝ Source]
    [NormedAddCommGroup Target]
    [InnerProductSpace ℝ Target]
    {source : RodriguesFrobenius Source}
    {target : RodriguesFrobenius Target}
    (naturality : RodriguesFrobeniusNaturality source target)
    (value : Source) :
    naturality.restrict (rodriguesFrobenius source value) =
      rodriguesFrobenius target (naturality.restrict value) :=
  naturality.natural value

end Mathematics.Operator
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e20714831b2902952d8cecd5183c607ba55b7d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
