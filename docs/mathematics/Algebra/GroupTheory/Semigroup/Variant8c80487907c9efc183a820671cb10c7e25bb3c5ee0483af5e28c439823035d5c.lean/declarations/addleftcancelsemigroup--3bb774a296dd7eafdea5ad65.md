# AddLeftCancelSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3df7feb2e97476d6113d65967d21626297c10e07eb6c4c0009958c702c990bb",
  "kind": "class",
  "lexical_name": "AddLeftCancelSemigroup",
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
  "slug": "addleftcancelsemigroup--3bb774a296dd7eafdea5ad65",
  "source": {
    "blob": "e4f438f7ce2bad8d7a0dcb9911d76948e6a194f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 284,
    "path": "GRWTSK/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bb774a296dd7eafdea5ad657ea5b29c7ef02e478c47a2ea6e4d9f219ecd0d72",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3df7feb2e97476d6113d65967d21626297c10e07eb6c4c0009958c702c990bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddLeftCancelSemigroup (G : Type*) extends AddSemigroup G, IsLeftCancelAdd G

attribute [instance 75] AddLeftCancelSemigroup.toAddSemigroup -- See note [lower cancel priority]

attribute [to_additive] LeftCancelSemigroup

/-- Any `LeftCancelSemigroup` satisfies `IsLeftCancelMul`. -/
add_decl_doc LeftCancelSemigroup.toIsLeftCancelMul

/-- Any `AddLeftCancelSemigroup` satisfies `IsLeftCancelAdd`. -/
add_decl_doc AddLeftCancelSemigroup.toIsLeftCancelAdd

/-- A `RightCancelSemigroup` is a semigroup such that `a * b = c * b` implies `a = c`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Semigroup/Variant8c80487907c9efc183a820671cb10c7e25bb3c5ee0483af5e28c439823035d5c.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4f438f7ce2bad8d7a0dcb9911d76948e6a194f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
