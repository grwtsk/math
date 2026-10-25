# elabNativeDecideCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0309de29ce7378bde2a8d77cf9ee49665fa8adb4a1cda848d3f4c2bd1aa47f5a",
  "kind": "def",
  "lexical_name": "elabNativeDecideCore",
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
  "slug": "elabnativedecidecore--66207b8cd0e2ef6efdea2bc4",
  "source": {
    "blob": "f3804e78634c73e45e68da0e4aebaa72b5d53995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66207b8cd0e2ef6efdea2bc4ca7487be1a736590b412de27c970440fce406048",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0309de29ce7378bde2a8d77cf9ee49665fa8adb4a1cda848d3f4c2bd1aa47f5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabNativeDecideCore (tacticName : Name) (expectedType : Expr) : TacticM Expr := do
  let d ← mkDecide expectedType
  match (← nativeEqTrue tacticName d (axiomDeclRange? := (← getRef))) with
  | .notTrue =>
    throwError m!"\
      Tactic `{tacticName}` evaluated that the proposition\
      {indentExpr expectedType}\n\
      is false"
  | .success prf =>
    -- get instance from `d`
    let s := d.appArg!
    return mkApp3 (mkConst ``of_decide_eq_true) expectedType s prf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3804e78634c73e45e68da0e4aebaa72b5d53995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
