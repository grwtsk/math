# mulLeftEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:386758245240c835967a996874cec3227e052d8930c7b9734da89babc4aa572c",
  "kind": "def",
  "lexical_name": "mulLeftEmbedding",
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
  "slug": "mulleftembedding--ee8844b49561d67cb25b91b0",
  "source": {
    "blob": "252fa733fc4adef5aebdf9ef1fd4de880712af6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 26,
    "path": "GRWTSK/Algebra/GroupTheory/Embedding/Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee8844b49561d67cb25b91b0336b2e7e796af8a0e78013859b5cd648f1ac03bf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Embedding/Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:386758245240c835967a996874cec3227e052d8930c7b9734da89babc4aa572c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulLeftEmbedding {G : Type*} [LeftCancelSemigroup G] (g : G) : G ↪ G where
  toFun h := g * h
  inj' := mul_right_injective g
#align mul_left_embedding mulLeftEmbedding
#align add_left_embedding addLeftEmbedding
#align add_left_embedding_apply addLeftEmbedding_apply
#align mul_left_embedding_apply mulLeftEmbedding_apply

/-- The embedding of a right cancellative semigroup into itself
by right multiplication by a fixed element.
 -/
@[to_additive (attr := simps)
      "The embedding of a right cancellative additive semigroup into itself
         by right translation by a fixed element."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Embedding/Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Embedding/Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `252fa733fc4adef5aebdf9ef1fd4de880712af6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
