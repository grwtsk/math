# toCharTwoNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19c2ff4ff673a9125b9f88d444121fb78111a53adec07f25dc114a4c56534c38",
  "kind": "def",
  "lexical_name": "toCharTwoNF",
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
  "slug": "tochartwonf--47993dfd79ad6c8974e0e007",
  "source": {
    "blob": "07054e09ffb71b29a619f0db2b929ec5ec65532a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 683,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47993dfd79ad6c8974e0e007bd047eaf5d9c90f93cdfb15e03d309437d564e43",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19c2ff4ff673a9125b9f88d444121fb78111a53adec07f25dc114a4c56534c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCharTwoNF [DecidableEq F] : VariableChange F :=
  if ha₁ : W.a₁ = 0 then W.toCharTwoJEqZeroNF else W.toCharTwoJNeZeroNF ha₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07054e09ffb71b29a619f0db2b929ec5ec65532a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
