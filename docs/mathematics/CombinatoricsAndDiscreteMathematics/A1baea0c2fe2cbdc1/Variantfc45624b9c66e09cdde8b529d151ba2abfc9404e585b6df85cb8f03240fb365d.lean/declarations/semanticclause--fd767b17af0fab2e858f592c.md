# SemanticClause

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:120293300eb087aaf0723f55186de14679902ad9d5ac51e2e0409079ba561dd6",
  "kind": "structure",
  "lexical_name": "SemanticClause",
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
  "slug": "semanticclause--fd767b17af0fab2e858f592c",
  "source": {
    "blob": "d18a71627b2d7db5d0f7b8d67b3636ebe61083a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A1baea0c2fe2cbdc1/Variantfc45624b9c66e09cdde8b529d151ba2abfc9404e585b6df85cb8f03240fb365d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd767b17af0fab2e858f592c23b7ece7fb37d2b1be05a377156c2e439c6ae51d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A1baea0c2fe2cbdc1/Variantfc45624b9c66e09cdde8b529d151ba2abfc9404e585b6df85cb8f03240fb365d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:120293300eb087aaf0723f55186de14679902ad9d5ac51e2e0409079ba561dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemanticClause where
  id : StableId
  statement : String
  deriving DecidableEq, Inhabited

namespace Boundary

end Boundary

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A1baea0c2fe2cbdc1/Variantfc45624b9c66e09cdde8b529d151ba2abfc9404e585b6df85cb8f03240fb365d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A1baea0c2fe2cbdc1/Variantfc45624b9c66e09cdde8b529d151ba2abfc9404e585b6df85cb8f03240fb365d.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d18a71627b2d7db5d0f7b8d67b3636ebe61083a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
