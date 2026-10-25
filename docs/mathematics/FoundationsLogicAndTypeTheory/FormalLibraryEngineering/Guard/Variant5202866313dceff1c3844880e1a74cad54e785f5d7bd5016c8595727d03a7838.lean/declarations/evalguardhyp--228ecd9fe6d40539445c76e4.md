# evalGuardHyp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b4e3683f21c08a33f4a091e0b2c21a97f008fe389907fe948ab5fb46b36b3ef",
  "kind": "def",
  "lexical_name": "evalGuardHyp",
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
  "slug": "evalguardhyp--228ecd9fe6d40539445c76e4",
  "source": {
    "blob": "d91ea70106ea9825e0d5c69d484bbd7024a39862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Variant5202866313dceff1c3844880e1a74cad54e785f5d7bd5016c8595727d03a7838.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:228ecd9fe6d40539445c76e430ed9665637f617f961eaaeb432ba4e4f08758b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Variant5202866313dceff1c3844880e1a74cad54e785f5d7bd5016c8595727d03a7838.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b4e3683f21c08a33f4a091e0b2c21a97f008fe389907fe948ab5fb46b36b3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalGuardHyp : Tactic := fun
  | `(tactic| guard_hyp $h $[$c $ty]? $[$eq $val]?)
  | `(conv| guard_hyp $h $[$c $ty]? $[$eq $val]?) => withMainContext do
    let fvarid ← getFVarId h
    let lDecl ←
      match (← getLCtx).find? fvarid with
      | none => throwError m!"Hypothesis `{h}` not found"
      | some lDecl => pure lDecl
    if let (some c, some p) := (c, ty) then
      let some mk := colon.toMatchKind c | throwUnsupportedSyntax
      let e ← elabTerm p none
      let hty ← instantiateMVars lDecl.type
      unless ← mk.isEq e hty do
        throwError m!"Hypothesis `{h}` has type{indentExpr hty}\nbut was expected to have type{indentExpr e}"
    match lDecl.value?, val with
    | none, some _        => throwError m!"`{h}` is not a let binding"
    | some _, none        => throwError m!"`{h}` is a let binding"
    | some hval, some val =>
      let some mk := eq.bind colonEq.toMatchKind | throwUnsupportedSyntax
      let e ← elabTerm val lDecl.type
      let hval ← instantiateMVars hval
      unless ← mk.isEq e hval do
        throwError m!"Hypothesis `{h}` has value{indentExpr hval}\nbut was expected to have value{indentExpr e}"
    | none, none          => pure ()
  | _ => throwUnsupportedSyntax

@[builtin_tactic guardHypConv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Variant5202866313dceff1c3844880e1a74cad54e785f5d7bd5016c8595727d03a7838.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Variant5202866313dceff1c3844880e1a74cad54e785f5d7bd5016c8595727d03a7838.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d91ea70106ea9825e0d5c69d484bbd7024a39862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
