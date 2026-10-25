# instantiateMVarsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5d4ce6bbba943386b443f6f8a9bf5010bd10177a1b52702a40ecb4bbaa8410b",
  "kind": "def",
  "lexical_name": "instantiateMVarsCore",
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
  "slug": "instantiatemvarscore--3ace01e951f93169a5b12c0d",
  "source": {
    "blob": "7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 597,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ace01e951f93169a5b12c0d972f0268d0db38a8777fbb23e6dadf3d31e141a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5d4ce6bbba943386b443f6f8a9bf5010bd10177a1b52702a40ecb4bbaa8410b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 597–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def instantiateMVarsCore (mctx : MetavarContext) (e : Expr) : Expr × MetavarContext :=
  let instantiate {ω} (e : Expr) : (MonadCacheT ExprStructEq Expr <| StateRefT MetavarContext (ST ω)) Expr :=
    instantiateExprMVars e
  runST fun _ => instantiate e |>.run |>.run mctx

/--
Substitutes assigned metavariables in `e` with their assigned value according to the
`MetavarContext`, recursively.

Example:
```
run_meta do
  let mvar1 ← mkFreshExprMVar (mkConst `Nat)
  let e := (mkConst `Nat.succ).app mvar1
  -- e is `Nat.succ ?m.773`, `?m.773` is unassigned
  mvar1.mvarId!.assign (mkNatLit 42)
  -- e is `Nat.succ ?m.773`, `?m.773` is assigned to `42`
  let e' ← instantiateMVars e
  -- e' is `Nat.succ 42`, `?m.773` is assigned to `42`
```

There are a few gotchas concerning delayed assignments.

* Regular assignments take precedence over delayed ones. This happens when an error occurs, in which
  case Lean assigns `sorry` to all unassigned metavariables, delayed assigned or not.
* Unless a delayed assigned metavariable `?m := fun fvars => ?pending` is fully applied to its free
  variables `fvars`, it will not be instantiated to `?pending`.
* A delayed assigned metavariable `?m := fun fvars => ?pending` that occurs fully applied `?m fvars`
  will not be instantiated to `?pending` unless (1) `?pending` is assigned, and (2) the
  assignment to `?pending` is ground (i.e., does not contain unassigned metavariables).
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean#L597).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
