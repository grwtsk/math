# unusedDecidableInTypeLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12186f8d4eccf3d6ef17f67162fe7ad1fdcf8b8f276ff9272bea849eeb7c7cfd",
  "kind": "def",
  "lexical_name": "unusedDecidableInTypeLinter",
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
  "slug": "unuseddecidableintypelinter--cda8341c10e01b7ff3d018e4",
  "source": {
    "blob": "15a6dc79c284eadd5a2ed79029698f146adfffc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cda8341c10e01b7ff3d018e46c7f7584f7a60af078f8f2961e1057f937ff4e95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12186f8d4eccf3d6ef17f67162fe7ad1fdcf8b8f276ff9272bea849eeb7c7cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unusedDecidableInTypeLinter : Linter where run := withSetOptionIn fun _ => do
  unless getLinterValue linter.extra.unusedDecidableInType (← getLinterOptions)
      && (← getInfoState).enabled do
    return
  if (← get).messages.hasErrors then
    return
  let env ← getEnv
  for t in ← getInfoTrees do
    /- Theorems in the `Decidable` namespace such as `Decidable.eq_or_ne` are allowed to depend
    on decidable instances without using them in the type. -/
    let thms := getTheorems t env |>.filter fun thm =>
      !((`Decidable).isPrefixOf (privateToUserName thm.name))
        && thm.type.hasInstanceBinderOf isDecidableVariant
    unless thms.isEmpty do liftTermElabM do for thm in thms do
      onUnusedInstancesWhere thm isDecidableVariant fun unusedParams => do
        logLintIf linter.extra.unusedDecidableInType (← getRef) m!"\
          {unusedInstancesMsg thm.name unusedParams}\n\n\
          Consider removing \
          {if unusedParams.size = 1 then "this hypothesis" else "these hypotheses"} \
          and using `classical` in the proof instead. \
          For terms, consider using `open scoped Classical in` at the term level (not the \
          command level)."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15a6dc79c284eadd5a2ed79029698f146adfffc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
