# mkLabeledSorry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f41f02d5f45f3269300e3c7cee8ba37a5a6e73aa6c16b2ab27768edd8c604d02",
  "kind": "def",
  "lexical_name": "mkLabeledSorry",
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
  "slug": "mklabeledsorry--3d7ae1cc7e90b00b14d81a2d",
  "source": {
    "blob": "558bfa458d3f90465bdd8abc9764cb91fc691e09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d7ae1cc7e90b00b14d81a2d114d389ec2ace15602139a4490750f146e9fcd92",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f41f02d5f45f3269300e3c7cee8ba37a5a6e73aa6c16b2ab27768edd8c604d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLabeledSorry (type : Expr) (synthetic : Bool) (unique : Bool) : MetaM Expr := do
  if !(← hasConst ``Lean.Name) then
    -- Abort if we are not ready yet to generate `sorry`s in bootstrapping contexts.
    Elab.throwAbortCommand
  let tag ←
    if let (some startSPos, some endSPos) := ((← getRef).getPos?, (← getRef).getTailPos?) then
      let fileMap ← getFileMap
      SorryLabelView.encode {
        module? := some {
          module := (← getMainModule)
          range := {
            pos := fileMap.toPosition startSPos
            endPos := fileMap.toPosition endSPos
            charUtf16 := (fileMap.utf8PosToLspPos startSPos).character
            endCharUtf16 := (fileMap.utf8PosToLspPos endSPos).character
          }
        }
      }
    else
      SorryLabelView.encode {}
  if unique then
    let e ← mkSorry (mkForall `tag .default (mkConst ``Lean.Name) type) synthetic
    return .app e (toExpr tag)
  else
    let e ← mkSorry (mkForall `tag .default (mkConst ``Unit) type) synthetic
    let tag' := mkApp4 (mkConst ``Function.const [Level.one, Level.one]) (mkConst ``Unit) (mkConst ``Lean.Name) (mkConst ``Unit.unit) (toExpr tag)
    return .app e tag'

/--
Returns a `SorryLabelView` if `e` is an application of an expression returned by `mkLabeledSorry`.
If it is, then the `sorry` takes the first three arguments, and the tag is at argument 3.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant14eca193a22bbfe327656f014bc6ce0bce9895ea8e2bf7d9c4d33524971e6ae6.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `558bfa458d3f90465bdd8abc9764cb91fc691e09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
