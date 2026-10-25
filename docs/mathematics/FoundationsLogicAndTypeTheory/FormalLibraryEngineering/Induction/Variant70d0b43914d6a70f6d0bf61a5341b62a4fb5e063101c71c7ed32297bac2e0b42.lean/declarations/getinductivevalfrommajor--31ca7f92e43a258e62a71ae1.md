# getInductiveValFromMajor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:639a4915b3c90bfda4ddb822f3519e827110039c4d99eaa5112ff898ac77fc4a",
  "kind": "def",
  "lexical_name": "getInductiveValFromMajor",
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
  "slug": "getinductivevalfrommajor--31ca7f92e43a258e62a71ae1",
  "source": {
    "blob": "96201dae32b53e8b351c7f6a2177e432e71a990e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 771,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31ca7f92e43a258e62a71ae12b7a4775f1d911b164fed9986dbd79187765d9fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:639a4915b3c90bfda4ddb822f3519e827110039c4d99eaa5112ff898ac77fc4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getInductiveValFromMajor (induction : Bool) (major : Expr) : TacticM InductiveVal :=
  liftMetaMAtMain fun mvarId => do
    let majorType ← inferType major
    let majorType ← whnf majorType
    matchConstInduct majorType.getAppFn
      (fun _ => do
        let tacticName := if induction then `induction else `cases
        let mut hint := m!"\n\nExplanation: the `{tacticName}` tactic is for constructor-based reasoning \
          as well as for applying custom {tacticName} principles with a 'using' clause or a registered '@[{tacticName}_eliminator]' theorem. \
          The above type neither is an inductive type nor has a registered theorem."
        if majorType.isProp then
          hint := m!"{hint}\n\n\
            Consider using the 'by_cases' tactic, which does true/false reasoning for propositions."
        else if majorType.isType then
          hint := m!"{hint}\n\n\
            Type universes are not inductive types, and type-constructor-based reasoning is not possible. \
            This is a strong limitation. According to Lean's underlying theory, the only provable distinguishing \
            feature of types is their cardinalities."
        Meta.throwTacticEx tacticName mvarId m!"major premise type is not an inductive type{indentExpr majorType}{hint}")
      (fun val _ => pure val)

/--
Elaborates the term in the `using` clause. We want to allow parameters to be instantiated
(e.g. `using foo (p := …)`), but preserve other parameters, like the motives, as parameters,
without turning them into MVars. So this uses `abstractMVars` at the end. This is inspired by
`Lean.Elab.Tactic.addSimpTheorem`.

It also elaborates without `heedElabAsElim` so that users can use constants that are marked
`elabAsElim` in the `using` clause`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96201dae32b53e8b351c7f6a2177e432e71a990e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
