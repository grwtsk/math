# coeDelaborator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24ecf4dfa18893bc51ca09ba6089bb8cba3ec35b2c885bb20c97548d04ee4341",
  "kind": "def",
  "lexical_name": "coeDelaborator",
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
  "slug": "coedelaborator--edd53da80cdfb1beac9197da",
  "source": {
    "blob": "3a43e15944e75cf221e11cb3e1100a21e4476b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1270,
    "line": 1238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edd53da80cdfb1beac9197da7910b9fba5a036aa76083e67046a5592da6068d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24ecf4dfa18893bc51ca09ba6089bb8cba3ec35b2c885bb20c97548d04ee4341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1238–1270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeDelaborator : Delab := whenPPOption getPPCoercions do
  let e ← getExpr
  let .const declName _ := e.getAppFn | failure
  let some info ← Meta.getCoeFnInfo? declName | failure
  let n := e.getAppNumArgs
  guard <| n ≥ info.numArgs
  if (← getPPOption getPPExplicit) && info.coercee != 0 then
    -- Approximation: the only implicit arguments come before the coercee
    failure
  if n == info.numArgs then
    delabHead info 0 false
  else
    let nargs := n - info.numArgs
    delabAppCore nargs (delabHead info nargs) (unexpand := false)
where
  delabHead (info : CoeFnInfo) (nargs : Nat) (insertExplicit : Bool) : Delab := do
    withTypeAscription (cond := ← getPPOption getPPCoercionsTypes) do
      guard <| !insertExplicit
      if info.type == .coeFun && nargs > 0 then
        -- In the `.coeFun` case, delaborate the coercee itself.
        -- We can still see the whole coercion expression by hovering over the whitespace between the arguments.
        -- In the `pp.tagAppFns` case, if the coercee is a constant application,
        -- then `delab` will tag the result with the constant, ensuring docgen linkifies it.
        let tagAppFns ← getPPOption getPPTagAppFns
        withNaryArg info.coercee <| withOptionAtCurrPos `pp.tagAppFns tagAppFns delab
      else
        withAnnotateTermInfo do
          match info.type with
          | .coe     => `(↑$(← withNaryArg info.coercee delab))
          | .coeFun  => `(⇑$(← withNaryArg info.coercee delab))
          | .coeSort => `(↥$(← withNaryArg info.coercee delab))

@[builtin_delab app.dite]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean#L1238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a43e15944e75cf221e11cb3e1100a21e4476b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
