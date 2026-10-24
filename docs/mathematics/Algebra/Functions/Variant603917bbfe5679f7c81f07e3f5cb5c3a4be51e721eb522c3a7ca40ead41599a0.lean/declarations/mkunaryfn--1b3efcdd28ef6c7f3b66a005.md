# mkUnaryFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5b5be8ef6e085929881dbe8a496253cf0dc6aabcb50d4ec2371a45d4c91d0b9",
  "kind": "def",
  "lexical_name": "mkUnaryFn",
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
  "slug": "mkunaryfn--1b3efcdd28ef6c7f3b66a005",
  "source": {
    "blob": "441560896bea710f3b4bf7cd5e8b78634cf1516e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 21,
    "path": "GRWTSK/Algebra/Functions/Variant603917bbfe5679f7c81f07e3f5cb5c3a4be51e721eb522c3a7ca40ead41599a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b3efcdd28ef6c7f3b66a005de1fc9eb8fbe21a376ddd8498fd9505005137361",
  "verification": {
    "reference": "docs/verification/Algebra/Functions/Variant603917bbfe5679f7c81f07e3f5cb5c3a4be51e721eb522c3a7ca40ead41599a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5b5be8ef6e085929881dbe8a496253cf0dc6aabcb50d4ec2371a45d4c91d0b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUnaryFn (type : Expr) (u : Level) (instDeclName : Name) (declName : Name) (expectedInst : Expr) : m Expr := do
  let inst ← MonadCanon.synthInstance <| mkApp (mkConst instDeclName [u]) type
  checkInst declName inst expectedInst
  canonExpr <| mkApp2 (mkConst declName [u]) type inst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Functions/Variant603917bbfe5679f7c81f07e3f5cb5c3a4be51e721eb522c3a7ca40ead41599a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Functions/Variant603917bbfe5679f7c81f07e3f5cb5c3a4be51e721eb522c3a7ca40ead41599a0.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `441560896bea710f3b4bf7cd5e8b78634cf1516e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
