# unfoldReducibleDefEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c7431feacccefdec5b3532b4c6b5edfb8e059aaee99ecb681ae63e73a8df3c7",
  "kind": "def",
  "lexical_name": "unfoldReducibleDefEq",
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
  "slug": "unfoldreducibledefeq--ecbf5c51a956f361ff47c63e",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1650,
    "line": 1613,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecbf5c51a956f361ff47c63e685f65c19177e6b047f1b761e97867badca1dd98",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c7431feacccefdec5b3532b4c6b5edfb8e059aaee99ecb681ae63e73a8df3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1613–1650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def unfoldReducibleDefEq (tInfo sInfo : ConstantInfo) (t s : Expr) : MetaM LBool := do
  if (← shouldReduceReducibleOnly) then
    unfoldDefEq tInfo sInfo t s
  else
    let tReducible ← isReducible tInfo.name
    let sReducible ← isReducible sInfo.name
    if tReducible && !sReducible then
      unfold t (unfoldDefEq tInfo sInfo t s) fun t => isDefEqLeft tInfo.name t s
    else if !tReducible && sReducible then
      unfold s (unfoldDefEq tInfo sInfo t s) fun s => isDefEqRight sInfo.name t s
    else
      unfoldDefEq tInfo sInfo t s

/--
  This is an auxiliary method for isDefEqDelta.
  If `t` is a (non-class) projection function application and `s` is not ==> `isDefEqRight t (unfold s)`
  If `s` is a (non-class) projection function application and `t` is not ==> `isDefEqRight (unfold t) s`
  Otherwise, use `unfoldReducibleDefEq`

  One motivation for the heuristic above is unification problems such as
  ```
  id (?m.1) =?= (a, b).1
  ```
  We want to reduce the lhs instead of the rhs, and eventually assign `?m := (a, b)`.

  Another motivation for the heuristic above is unification problems such as
  ```
  List.length (a :: as) =?= HAdd.hAdd (List.length as) 1
  ```

  However, for class projections, we also unpack them and check whether the result function is the one
  on the other side. This is relevant for unification problems such as
  ```
  Foo.pow x 256 =?= Pow.pow x 256
  ```
  where the `Pow` instance is wrapping `Foo.pow`
  See issue #1419 for the complete example.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L1613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
