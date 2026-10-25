# Expr.renameVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d948950293d7f62b90556e3e4eda0f8e4caf58b21a4983875c77a85899221ab0",
  "kind": "def",
  "lexical_name": "Expr.renameVars",
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
  "slug": "expr-renamevars--30cd1ad1474e3bf9e60da9ae",
  "source": {
    "blob": "61befedde387b006d3e9c1f11106f0e951a121e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30cd1ad1474e3bf9e60da9aef6fb05bcdf8604b7cdd9f54f3434f74fdb1af20a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d948950293d7f62b90556e3e4eda0f8e4caf58b21a4983875c77a85899221ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .num .. => e
  | .var x => .var (f x)
  | .neg a => .neg (renameVars a f)
  | .add a b => .add (renameVars a f) (renameVars b f)
  | .sub a b => .sub (renameVars a f) (renameVars b f)
  | .mulL k a => .mulL k (renameVars a f)
  | .mulR a k => .mulR (renameVars a f) k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61befedde387b006d3e9c1f11106f0e951a121e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
