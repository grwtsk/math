# Lean.MVarId.liftLetsLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:112be7be4c21cc928f9a13c2abf99a595bfe35b74bc49efd95ce02c6a374e984",
  "kind": "def",
  "lexical_name": "Lean.MVarId.liftLetsLocalDecl",
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
  "slug": "lean-mvarid-liftletslocaldecl--b8595518fca3f1d8a441dc08",
  "source": {
    "blob": "429bd0a453d6590b36a5b0c1ba25545d00092b65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 402,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8595518fca3f1d8a441dc08844b6489314e2a30f0e1a6d5905e9ce574738e69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:112be7be4c21cc928f9a13c2abf99a595bfe35b74bc49efd95ce02c6a374e984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.liftLetsLocalDecl (mvarId : MVarId) (fvarId : FVarId) (config : LiftLetsConfig := {}) : MetaM MVarId := do
  mvarId.checkNotAssigned `lift_lets
  -- Revert to make sure the resulting type/value refers fvars that come after `fvarId`.
  -- (Note: reverting isn't necessary unless both `merge := true` and `useContext := true`.)
  Prod.snd <$> mvarId.withReverted #[fvarId] fun mvarId fvars => mvarId.withContext do
    let finalize (targetNew : Expr) := do
      return ((), fvars.map .some, ← mvarId.replaceTargetDefEq targetNew)
    match ← mvarId.getType with
    | .forallE n t b i =>
      let t' ← Meta.liftLets t (config := config)
      if t == t' then
        throwMadeNoProgress `lift_lets mvarId
      finalize (.forallE n t' b i)
    | .letE n t v b ndep =>
      let t' ← Meta.liftLets t (config := config)
      let v' ← Meta.liftLets v (config := config)
      if t == t' && v == v' then
        throwMadeNoProgress `lift_lets mvarId
      finalize (.letE n t' v' b ndep)
    | _ => throwTacticEx `lift_lets mvarId "unexpected auxiliary target"

/-!
### Let-to-have transformation

A meta tactic version of `Lean.Meta.letToHave`.
-/

/--
Transforms lets to haves in the target. Throws an error if no progress is made.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variante61842425e4565278e8101ff59d333029a389c569b7721d0422e9b08a5c55d0f.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `429bd0a453d6590b36a5b0c1ba25545d00092b65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
