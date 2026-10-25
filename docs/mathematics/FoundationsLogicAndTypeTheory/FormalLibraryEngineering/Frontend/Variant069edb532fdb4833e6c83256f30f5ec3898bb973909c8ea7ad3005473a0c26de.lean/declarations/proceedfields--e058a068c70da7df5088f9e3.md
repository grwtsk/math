# proceedFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70548326361bf73b1d77e87634f29a95e45d0babd7ee525d307fc18906a6b51c",
  "kind": "def",
  "lexical_name": "proceedFields",
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
  "slug": "proceedfields--e058a068c70da7df5088f9e3",
  "source": {
    "blob": "68138ccfe54e8c7a4fe4d54f67af05cfcc444fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1194,
    "line": 1173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e058a068c70da7df5088f9e32055ee5a4070f89f0f109e71fbe684c9f4803b9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70548326361bf73b1d77e87634f29a95e45d0babd7ee525d307fc18906a6b51c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1173–1194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proceedFields (src tgt : Name) : CoreM Unit := do
  let aux := @proceedFieldsAux src tgt
  -- add translations for the structure fields
  aux fun declName ↦ do
    if isStructure (← getEnv) declName then
      return getStructureFields (← getEnv) declName
    else
      return #[]
  -- add translations for the automatically generated instances with `extend`.
  aux (prependName := false) fun declName ↦ do
    if isStructure (← getEnv) declName then
      return getStructureInfo (← getEnv) declName |>.parentInfo
        |>.filterMap fun c ↦ if !c.subobject then c.projFn else none
    else
      return #[]
  -- add translations for the constructors of an inductive type
  aux fun declName ↦ do match (← getEnv).find? declName with
    | some (ConstantInfo.inductInfo {ctors := ctors, ..}) =>
        return ctors.toArray.map (.mkSimple ·.lastComponentAsString)
    | _ => pure #[]

/-- Elaboration of the configuration options for `to_additive`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean#L1173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68138ccfe54e8c7a4fe4d54f67af05cfcc444fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
