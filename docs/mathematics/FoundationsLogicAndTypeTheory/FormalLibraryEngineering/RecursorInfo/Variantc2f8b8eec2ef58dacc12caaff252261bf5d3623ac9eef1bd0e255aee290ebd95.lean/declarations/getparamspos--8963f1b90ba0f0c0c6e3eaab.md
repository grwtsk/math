# getParamsPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3295d76ff0b4f6547d8df33e723caec20b853ef8fa28317ad73a0dffc2e48ada",
  "kind": "def",
  "lexical_name": "getParamsPos",
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
  "slug": "getparamspos--8963f1b90ba0f0c0c6e3eaab",
  "source": {
    "blob": "de349fb7bbf8c5f72c73724ba0e3ffd52420de08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8963f1b90ba0f0c0c6e3eaab83a13187568935bfb44b43144b5747f071b250cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3295d76ff0b4f6547d8df33e723caec20b853ef8fa28317ad73a0dffc2e48ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getParamsPos (declName : Name) (xs : Array Expr) (numParams : Nat) (Iargs : Array Expr) : MetaM (List (Option Nat)) := do
  let mut paramsPos := #[]
  for i in *...numParams do
    let x := xs[i]!
    match (← Iargs.findIdxM? fun Iarg => isDefEq Iarg x) with
    | some j => paramsPos := paramsPos.push (some j)
    | none   => do
      let localDecl ← x.fvarId!.getDecl
      if localDecl.binderInfo.isInstImplicit then
        paramsPos := paramsPos.push none
      else
        throwError"invalid user defined recursor `{.ofConstName declName}`, type of the major premise does not contain the recursor parameter"
  pure paramsPos.toList

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de349fb7bbf8c5f72c73724ba0e3ffd52420de08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
