# assignDelayedMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c46b59159200fe703b94a68ed67b880df4c4344e9bdb37080cdcd4ae4e88307e",
  "kind": "def",
  "lexical_name": "assignDelayedMVar",
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
  "slug": "assigndelayedmvar--80166003c14eae514d856d32",
  "source": {
    "blob": "7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 551,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80166003c14eae514d856d32f3bc337a1d569b8a50afc7e7276665e5308bae74",
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

Occurrence: `declaration:c46b59159200fe703b94a68ed67b880df4c4344e9bdb37080cdcd4ae4e88307e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assignDelayedMVar [MonadMCtx m] (mvarId : MVarId) (fvars : Array Expr) (mvarIdPending : MVarId) : m Unit :=
  modifyMCtx fun m => { m with dAssignment := m.dAssignment.insert mvarId { fvars, mvarIdPending } }

/-!
## Notes on artificial eta-expanded terms due to metavariables.

We try avoid synthetic terms such as `((fun x y => t) a b)` in the output produced by the elaborator.
This kind of term may be generated when instantiating metavariable assignments.
This module tries to avoid their generation because they often introduce unnecessary dependencies and
may affect automation.

When elaborating terms, we use metavariables to represent "holes". Each hole has a context which includes
all free variables that may be used to "fill" the hole. Suppose, we create a metavariable (hole) `?m : Nat` in a context
containing `(x : Nat) (y : Nat) (b : Bool)`, then we can assign terms such as `x + y` to `?m` since `x` and `y`
are in the context used to create `?m`. Now, suppose we have the term `?m + 1` and we want to create the lambda expression
`fun x => ?m + 1`. This term is not correct since we may assign to `?m` a term containing `x`.

We address this issue by create a synthetic metavariable `?n : Nat → Nat` and adding the delayed assignment
`?n #[x] := ?m`, and the term `fun x => ?n x + 1`. When we later assign a term `t[x]` to `?m`, `fun x => t[x]` is assigned to
`?n`, and if we substitute it at `fun x => ?n x + 1`, we produce `fun x => ((fun x => t[x]) x) + 1`.

To avoid this term eta-expanded term, we apply beta-reduction when instantiating metavariable assignments in this module.
This operation is performed at `instantiateExprMVars`, `elimMVarDeps`, and `levelMVarToParam`.
-/

@[extern "lean_instantiate_level_mvars"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variante13d9cd0a9e068e59d04923cdd63f20e6c3d18967d6647ad2e08c311e8f6476a.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cc887a99e6fe7674299b71e0cc65b26fc6bd4cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
