# insertEnterSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c07902e5805c3149403badaba185bddf2c80b28418560b7b306ba87cf33d0754",
  "kind": "def",
  "lexical_name": "insertEnterSyntax",
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
  "slug": "insertentersyntax--f45b2a74d5f5bbfe9f432140",
  "source": {
    "blob": "fd35bc52649d472583df0c04fbeca783a2eafcff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f45b2a74d5f5bbfe9f432140212770f4a3b1da1019c5ca095896a45b2e9853d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c07902e5805c3149403badaba185bddf2c80b28418560b7b306ba87cf33d0754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def insertEnterSyntax (locations : Array Lean.SubExpr.GoalsLocation) (goalType : Expr) :
    MetaM Syntax := do
  let some pos := locations[0]? | throwError "You must select something."
  let (expr, subexprPos, fvarUserName?) ← match pos with
  | ⟨_, .target subexprPos⟩ => pure (goalType, subexprPos, none)
  | ⟨_, .hypType fvarId subexprPos⟩ => do
    let expr ← fvarId.getType
    let userName ← fvarId.getUserName
    pure (expr, subexprPos, some userName)
  | _ => throwError "You must select something in the goal or in the type of a local hypothesis."
  let expr ← instantiateMVars expr
  -- generate list of commands for `enter`
  let path ← Path.ofSubExprPos expr subexprPos
  pathToStx (← `(conv| skip)) path fvarUserName?

/-- Return the text for the link in the conv widget that inserts the replacement,
and also return the replacement, and the range within the file to highlight after the
replacement is inserted. The highlighted range will always be the trailing `skip`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd35bc52649d472583df0c04fbeca783a2eafcff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
