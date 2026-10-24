# Path.ins

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0acb15c5dc6a4f7bb30a9ff30d7cf2c5f8e29060a8b86edea5f43221009494ab",
  "kind": "def",
  "lexical_name": "Path.ins",
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
  "slug": "path-ins--4e8d06ae552fff5ab0a3fe0d",
  "source": {
    "blob": "2921df75acbbb01ebd61ad5c318ef687c0161d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 471,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e8d06ae552fff5ab0a3fe0d619092b883ee87a3f54b49506e70d43b9300fcfa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0acb15c5dc6a4f7bb30a9ff30d7cf2c5f8e29060a8b86edea5f43221009494ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Path.ins : Path α → RBNode α → RBNode α
  | .root, t => t.setBlack
  | .left red parent y b, a
  | .right red a y parent, b => parent.ins (node red a y b)
  | .left black parent y b, a => parent.ins (balance1 a y b)
  | .right black a y parent, b => parent.ins (balance2 a y b)

/--
`path.insertNew v` inserts element `v` into the tree, assuming that `path` is zoomed in
on a `nil` node such that inserting a new element at this position is valid.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant96f91109d2b432e4c7c3ad4b009dcb22b7baff3942e2670b1efbb8cd6f0ec9a3.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2921df75acbbb01ebd61ad5c318ef687c0161d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
