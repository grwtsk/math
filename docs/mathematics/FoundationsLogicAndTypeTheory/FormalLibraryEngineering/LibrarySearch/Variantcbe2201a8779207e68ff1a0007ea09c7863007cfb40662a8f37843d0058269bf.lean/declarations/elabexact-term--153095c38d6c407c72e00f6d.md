# elabExact?Term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3336af509649f8451e1c68fed8e7e378b66d0518050e476cb49381ff257eb03",
  "kind": "def",
  "lexical_name": "elabExact?Term",
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
  "slug": "elabexact-term--153095c38d6c407c72e00f6d",
  "source": {
    "blob": "17e947a432cdd86e306fe41e656e9e0ee31e4bce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantcbe2201a8779207e68ff1a0007ea09c7863007cfb40662a8f37843d0058269bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:153095c38d6c407c72e00f6d1b351fcdddd9dae7699af5a5338218329b01b8c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantcbe2201a8779207e68ff1a0007ea09c7863007cfb40662a8f37843d0058269bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3336af509649f8451e1c68fed8e7e378b66d0518050e476cb49381ff257eb03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabExact?Term : TermElab := fun stx expectedType? => do
  let `(exact?%) := stx | throwUnsupportedSyntax
  withExpectedType expectedType? fun expectedType => do
    let goal ← mkFreshExprMVar expectedType
    let (_, introdGoal) ← goal.mvarId!.intros
    introdGoal.withContext do
      if let some suggestions ← librarySearch introdGoal then
        if suggestions.isEmpty then logError "`exact?%` didn't find any relevant lemmas"
        else logError "`exact?%` could not close the goal. Try `by apply?` to see partial suggestions."
        mkLabeledSorry expectedType (synthetic := true) (unique := true)
      else
        addTermSuggestion stx (← instantiateMVars goal).headBeta
        instantiateMVars goal

end Lean.Elab.LibrarySearch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantcbe2201a8779207e68ff1a0007ea09c7863007cfb40662a8f37843d0058269bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantcbe2201a8779207e68ff1a0007ea09c7863007cfb40662a8f37843d0058269bf.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17e947a432cdd86e306fe41e656e9e0ee31e4bce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
