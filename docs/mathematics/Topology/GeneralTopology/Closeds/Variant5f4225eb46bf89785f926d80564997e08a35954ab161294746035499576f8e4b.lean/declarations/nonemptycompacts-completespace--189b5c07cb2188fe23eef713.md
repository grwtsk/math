# NonemptyCompacts.completeSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27de2e23b065e7dd3478a64d30e36ae02c35d8d59e8770b23cb3e41e6a45f273",
  "kind": "instance",
  "lexical_name": "NonemptyCompacts.completeSpace",
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
  "slug": "nonemptycompacts-completespace--189b5c07cb2188fe23eef713",
  "source": {
    "blob": "805416ce25b28ddd9e00b42dc5f28beb17eb86c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:189b5c07cb2188fe23eef713a0cb3fad8b7ec20f28487ce04133017b16d8fe6f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27de2e23b065e7dd3478a64d30e36ae02c35d8d59e8770b23cb3e41e6a45f273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NonemptyCompacts.completeSpace [CompleteSpace α] : CompleteSpace (NonemptyCompacts α) :=
  (completeSpace_iff_isComplete_range
        NonemptyCompacts.ToCloseds.isUniformEmbedding.isUniformInducing).2 <|
    NonemptyCompacts.isClosed_in_closeds.isComplete

/-- In a compact space, the type of nonempty compact subsets is compact. This follows from
the same statement for closed subsets -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `805416ce25b28ddd9e00b42dc5f28beb17eb86c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
