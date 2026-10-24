# Slice.stripPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60d12cf8b4ce4ed8c0dc4c778f5a2d97b708a2230ab1758ff51ddca21e77a106",
  "kind": "def",
  "lexical_name": "Slice.stripPrefix",
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
  "slug": "slice-stripprefix--72d09df0848f02b2e9b1fdcb",
  "source": {
    "blob": "b55ab71e52840d7b1aabb912149e952207b33104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 552,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc887749e6b430d55629a80355d53ad1632910e95d641fe67f9934869c54cb861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72d09df0848f02b2e9b1fdcbf1e4025c2f2b74f87c14946916a8bfa9d29a69e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc887749e6b430d55629a80355d53ad1632910e95d641fe67f9934869c54cb861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60d12cf8b4ce4ed8c0dc4c778f5a2d97b708a2230ab1758ff51ddca21e77a106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Slice.stripPrefix (s pre : Slice) : Slice :=
  s.dropPrefix pre

/--
If {name}`pat` matches a suffix of {name}`s`, returns the remainder. Returns {name}`s` unmodified
otherwise.

Use {name}`String.dropSuffix?` to return {name}`none` when {name}`pat` does not match a prefix.

This is a cheap operation because it does not allocate a new string to hold the result.
To convert the result into a string, use {name}`String.Slice.copy`.

This function is generic over all currently supported patterns.

Examples:
 * {lean}`"red green blue".dropSuffix " blue" == "red green".toSlice`
 * {lean}`"red green blue".dropSuffix "bluu " == "red green blue".toSlice`
 * {lean}`"red green blue".dropSuffix 'e' == "red green blu".toSlice`
 * {lean}`"red green blue".dropSuffix Char.isLower == "red green blu".toSlice`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc887749e6b430d55629a80355d53ad1632910e95d641fe67f9934869c54cb861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc887749e6b430d55629a80355d53ad1632910e95d641fe67f9934869c54cb861.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b55ab71e52840d7b1aabb912149e952207b33104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
