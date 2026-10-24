# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4002cabcb0bc8c717be508a18f7c527e087053f53fd6b5ac9c225d09a52c79a2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--65f484b02ba6735d0a9e1ea5",
  "source": {
    "blob": "7b12de232eec785e363c336ce20e3edb74a56abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 221,
    "path": "GRWTSK/Topology/MetricTopology/Weak/Variantd49af4c3b666c735d826151cdeaaa1912083a0ca63cde5f8da5c81e22b06586e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65f484b02ba6735d0a9e1ea51c07b83ecb2931a9ea5ed4b6e2007eb5eaee8ba2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Weak/Variantd49af4c3b666c735d826151cdeaaa1912083a0ca63cde5f8da5c81e22b06586e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4002cabcb0bc8c717be508a18f7c527e087053f53fd6b5ac9c225d09a52c79a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [EDist α] : EDist (OnePoint α) where
  edist
  | ∞, (x : α) => none
  | ∞, ∞ => 0
  | (x : α), ∞ => none
  | (x : α), (y : α) => edist x y

/-- The one point compactification of a weak pseudo extended metric space is again a weak pseudo
extended metric space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Weak/Variantd49af4c3b666c735d826151cdeaaa1912083a0ca63cde5f8da5c81e22b06586e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Weak/Variantd49af4c3b666c735d826151cdeaaa1912083a0ca63cde5f8da5c81e22b06586e.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b12de232eec785e363c336ce20e3edb74a56abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
