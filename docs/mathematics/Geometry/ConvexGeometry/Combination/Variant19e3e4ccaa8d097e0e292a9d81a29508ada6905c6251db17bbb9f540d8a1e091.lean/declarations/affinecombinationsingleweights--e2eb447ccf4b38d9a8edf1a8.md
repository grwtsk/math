# affineCombinationSingleWeights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:719a1a4d81ac39926dbe756edfd868dea348eec477b83239f3ae8059882c73d7",
  "kind": "def",
  "lexical_name": "affineCombinationSingleWeights",
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
  "slug": "affinecombinationsingleweights--e2eb447ccf4b38d9a8edf1a8",
  "source": {
    "blob": "3a09b52d58651d9ae49fbb7b4571b28f367a6007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 611,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2eb447ccf4b38d9a8edf1a8c9f195755eb425c926937a36bcf2cef130ceb39b",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:719a1a4d81ac39926dbe756edfd868dea348eec477b83239f3ae8059882c73d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def affineCombinationSingleWeights [DecidableEq ι] (i : ι) : ι → k :=
  Pi.single i 1

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a09b52d58651d9ae49fbb7b4571b28f367a6007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
