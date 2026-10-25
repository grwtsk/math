# grindReplacementWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:997a8afe7ea2be2970252c0eb8bf9135282657db5132a7398d99a8f5740cf1d9",
  "kind": "def",
  "lexical_name": "grindReplacementWith",
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
  "slug": "grindreplacementwith--a3355f93841eb69684366a0b",
  "source": {
    "blob": "7a3ca29a2dba64302076428151b82ea4878868ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3355f93841eb69684366a0b393a7b49aadc0e8d5d45a0c292db18d7385a3178",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:997a8afe7ea2be2970252c0eb8bf9135282657db5132a7398d99a8f5740cf1d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grindReplacementWith (tacticName : String) (tacticKind : SyntaxNodeKind)
    (extractArgs : Syntax → Option (Syntax.TSepArray `term ",") := fun _ => none)
    (reportFailure : Bool := true) (reportSuccess : Bool := false)
    (reportSlowdown : Bool := false) (maxSlowdown : Float := 1) :
    TacticAnalysis.Config :=
  let newTactic : ContextInfo → TacticInfo → Syntax → CommandElabM (TSyntax `tactic) :=
    fun _ctxI tacI stx => do
      match extractArgs stx with
      | some args =>
        if args.getElems.isEmpty then
          return ← `(tactic| grind)
        -- Get local hypothesis names from the goal's local context
        let lctxNames : Std.HashSet Name :=
          match tacI.goalsBefore.head? with
          | some goal =>
            let goalDecl := tacI.mctxBefore.decls.find! goal
            goalDecl.lctx.foldl (init := {}) fun s decl =>
              if decl.isImplementationDetail then s else s.insert decl.userName
          | none => {}
        -- Filter out terms that are simple identifiers matching local hypotheses
        let filteredElems := args.getElems.filter fun term =>
          match term.raw with
          | .ident _ _ name _ => !lctxNames.contains name
          | _ => true  -- Keep non-identifier terms (like `foo.bar x`)
        if filteredElems.isEmpty then
          return ← `(tactic| grind)
        -- Build comma-separated list from filtered elements
        let grindElemsAndSeps := filteredElems.foldl (init := #[]) fun acc elem =>
          if acc.isEmpty then #[termToGrindParam elem]
          else acc.push (mkAtom ",") |>.push (termToGrindParam elem)
        let grindArgs : Syntax.TSepArray ``Lean.Parser.Tactic.grindParam "," :=
          ⟨grindElemsAndSeps⟩
        `(tactic| grind [$grindArgs,*])
      | none => `(tactic| grind)
  terminalReplacement tacticName "grind" tacticKind newTactic
    reportFailure reportSuccess reportSlowdown maxSlowdown

end Mathlib.TacticAnalysis

open Mathlib TacticAnalysis

/-- Debug `grind` by identifying places where it does not yet supersede `linarith`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3ca29a2dba64302076428151b82ea4878868ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
