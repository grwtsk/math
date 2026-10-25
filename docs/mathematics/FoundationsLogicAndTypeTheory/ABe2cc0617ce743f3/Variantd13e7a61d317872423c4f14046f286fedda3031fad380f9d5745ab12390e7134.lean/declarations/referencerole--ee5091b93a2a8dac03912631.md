# ReferenceRole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4ded924b106d2b7aa7ca4712b98454ef2dfac9464cb4bdc11e99adebbfccebd",
  "kind": "inductive",
  "lexical_name": "ReferenceRole",
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
  "slug": "referencerole--ee5091b93a2a8dac03912631",
  "source": {
    "blob": "495cf34b68eab3d6dec20dc0e1c7c38aaf614cee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ABe2cc0617ce743f3/Variantd13e7a61d317872423c4f14046f286fedda3031fad380f9d5745ab12390e7134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee5091b93a2a8dac039126319e3ebebc75bed1b6acf1a1b3f03f7d1243f3b333",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ABe2cc0617ce743f3/Variantd13e7a61d317872423c4f14046f286fedda3031fad380f9d5745ab12390e7134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4ded924b106d2b7aa7ca4712b98454ef2dfac9464cb4bdc11e99adebbfccebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ReferenceRole
  | uses
  | dependsOn
  | returns
  | accepts
  | proves
  | assumes
  | constructs
  | preserves
  | refines
  | implements
  | represents
  | approximates
  | specializes
  | generalizes
  | transports
  | invalidates
  | documents
  | tests
  deriving DecidableEq, Inhabited

namespace PrimaryDisposition

end PrimaryDisposition

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ABe2cc0617ce743f3/Variantd13e7a61d317872423c4f14046f286fedda3031fad380f9d5745ab12390e7134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ABe2cc0617ce743f3/Variantd13e7a61d317872423c4f14046f286fedda3031fad380f9d5745ab12390e7134.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `495cf34b68eab3d6dec20dc0e1c7c38aaf614cee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
