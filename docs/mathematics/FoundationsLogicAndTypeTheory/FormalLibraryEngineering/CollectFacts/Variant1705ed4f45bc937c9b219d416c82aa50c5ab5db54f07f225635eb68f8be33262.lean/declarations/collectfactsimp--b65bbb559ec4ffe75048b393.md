# collectFactsImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb56dd8dea3063234f8d9369aa8107d1c6e99a9304224824427e87d13429253b",
  "kind": "def",
  "lexical_name": "collectFactsImp",
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
  "slug": "collectfactsimp--b65bbb559ec4ffe75048b393",
  "source": {
    "blob": "d8b25aadbf45240ac99a5a9ca5e668b77058a21f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b65bbb559ec4ffe75048b3932faebafeb8930b3e7931341405166f82fbff07e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb56dd8dea3063234f8d9369aa8107d1c6e99a9304224824427e87d13429253b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectFactsImp (g : MVarId) :
    CollectFactsM Unit := g.withContext do
  let ctx ← getLCtx
  for ldecl in ctx do
    if ldecl.isImplementationDetail then
      continue
    processExpr ldecl.toExpr
where
  /-- Extracts facts and atoms from the expression. -/
  processExpr (expr : Expr) : CollectFactsM Unit := do
    let type ← inferType expr
    if !(← isProp type) then
      return
    let ⟨u, type, expr⟩ ← inferTypeQ expr
    let _ : u =QL 0 := ⟨⟩
    match type with
    | ~q(@Eq ($α : Type _) $x $y) =>
      if (← synthInstance? (q(Preorder $α))).isSome then
        let xIdx := ← addAtom α x
        let yIdx := ← addAtom α y
        addFact α <| .eq xIdx yIdx expr
    | ~q(@LE.le $α $inst $x $y) =>
      let xIdx := ← addAtom α x
      let yIdx := ← addAtom α y
      addFact α <| .le xIdx yIdx expr
    | ~q(@LT.lt $α $inst $x $y) =>
      let xIdx := ← addAtom α x
      let yIdx := ← addAtom α y
      addFact α <| .lt xIdx yIdx expr
    | ~q(@Ne ($α : Type _) $x $y) =>
      if (← synthInstance? (q(Preorder $α))).isSome then
        let xIdx := ← addAtom α x
        let yIdx := ← addAtom α y
        addFact α <| .ne xIdx yIdx expr
    | ~q(Not $p) =>
      match p with
      | ~q(@LE.le $α $inst $x $y) =>
        let xIdx := ← addAtom α x
        let yIdx := ← addAtom α y
        addFact α <| .nle xIdx yIdx expr
      | ~q(@LT.lt $α $inst $x $y) =>
        let xIdx := ← addAtom α x
        let yIdx := ← addAtom α y
        addFact α <| .nlt xIdx yIdx expr
      | _ => return
    | _ => return

/-- Collects facts from the local context. For each occurring type `α`, the returned map contains
a pair `(idxToAtom, facts)`, where the map `idxToAtom` converts indices to found
atomic expressions of type `α`, and `facts` contains all collected `AtomicFact`s about them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant1705ed4f45bc937c9b219d416c82aa50c5ab5db54f07f225635eb68f8be33262.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b25aadbf45240ac99a5a9ca5e668b77058a21f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
