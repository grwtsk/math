# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdConstructor.Variant0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad.Lean.MVarId.existsIntro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2936fc6d372c9034d8488611f8e1a39465bb0654853bc7314cfb39a21bda9159",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdConstructor.Variant0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad.Lean.MVarId.existsIntro",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--730a6c43db44d961d7c7d8ca",
  "source": {
    "blob": "a833b48186f7d994891b08fb71ca87dd5ce41fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constructor/Variant3c0b3c3bc855c8384b0493dbd94e24edc3dffa8cd19fe590ec32bf7b99708925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:730a6c43db44d961d7c7d8ca96b96cb63ffe733b16a4cf5841960a5cf089f7a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constructor/Variant3c0b3c3bc855c8384b0493dbd94e24edc3dffa8cd19fe590ec32bf7b99708925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2936fc6d372c9034d8488611f8e1a39465bb0654853bc7314cfb39a21bda9159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdConstructor.Variant0a777c8517c09e7cac6ddb356ed20a365c70d351a9304c773e69d2d37864f6ad.Lean.MVarId.existsIntro (mvarId : MVarId) (w : Expr) : MetaM MVarId := do
  mvarId.withContext do
    mvarId.checkNotAssigned `exists
    let target ← mvarId.getType'
    matchConstStructure target.getAppFn
      (fun _ => throwTacticEx `exists mvarId "target is not an inductive datatype with one constructor")
      fun _ us cval => do
        if cval.numFields < 2 then
          throwTacticEx `exists mvarId "constructor must have at least two fields"
        let ctor := mkAppN (Lean.mkConst cval.name us) target.getAppArgs[*...cval.numParams]
        let ctorType ← inferType ctor
        let (mvars, _, _) ← forallMetaTelescopeReducing ctorType (some (cval.numFields-2))
        let f := mkAppN ctor mvars
        checkApp f w
        let [mvarId] ← mvarId.apply <| mkApp f w
          | throwTacticEx `exists mvarId "unexpected number of subgoals"
        pure mvarId

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constructor/Variant3c0b3c3bc855c8384b0493dbd94e24edc3dffa8cd19fe590ec32bf7b99708925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constructor/Variant3c0b3c3bc855c8384b0493dbd94e24edc3dffa8cd19fe590ec32bf7b99708925.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a833b48186f7d994891b08fb71ca87dd5ce41fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
