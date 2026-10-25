# compactInventoryJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:607313950efd17ee6c3797b48f5c36bf3e0b4ea185ecaaa95317e7a003624cde",
  "kind": "def",
  "lexical_name": "compactInventoryJson",
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
  "slug": "compactinventoryjson--03cee3acb0ba5c184f8fae9a",
  "source": {
    "blob": "3006a97fe692f1f1de9db4ee264ee9d42bfed564",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremInventory/Variant22c97db11b72e8ed757c368ee085e38107803a123e6b75bc7d76e81205e6c6ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03cee3acb0ba5c184f8fae9a5b1281d8ef35363036db7d38697f33a750788577",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremInventory/Variant22c97db11b72e8ed757c368ee085e38107803a123e6b75bc7d76e81205e6c6ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:607313950efd17ee6c3797b48f5c36bf3e0b4ea185ecaaa95317e7a003624cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compactInventoryJson (records : List ExportedTheorem) : String :=
  "{\"declarations\":[" ++
    String.intercalate "," (records.map ExportedTheorem.compactJson) ++ "]}"

run_cmd do
  let environment ← getEnv
  let mut theoremNames : List (Name × String) := []
  for (name, moduleIndex) in environment.const2ModIdx.toList do
    let moduleName := environment.header.moduleNames[moduleIndex.toNat]!
    let moduleText := moduleName.toString
    if moduleText == "FCRS" || moduleText.startsWith "FCRS." then
      match environment.find? name with
      | some (.thmInfo _) =>
          theoremNames := (name, moduleText) :: theoremNames
      | _ => pure ()
  let sortedTheoremNames := theoremNames.mergeSort
    (fun left right => left.1.toString < right.1.toString)
  IO.print "FCRS_THEOREM_INVENTORY_JSON\t{\"declarations\":["
  let mut first := true
  for (name, moduleText) in sortedTheoremNames do
    match environment.find? name with
    | some (.thmInfo theoremInfo) =>
        let axiomNames ← collectAxioms name
        let record : ExportedTheorem := {
          name := name.toString
          moduleName := moduleText
          typeText := reprStr theoremInfo.type
          proofDependencies := sortedConstantNames theoremInfo.value
          typeDependencies := sortedConstantNames theoremInfo.type
          axiomDependencies := sortedNameArray axiomNames
        }
        if first then
          first := false
        else
          IO.print ","
        IO.print record.compactJson
    | _ => pure ()
  IO.println "]}"

end FCRS.Tools.TheoremInventory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremInventory/Variant22c97db11b72e8ed757c368ee085e38107803a123e6b75bc7d76e81205e6c6ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremInventory/Variant22c97db11b72e8ed757c368ee085e38107803a123e6b75bc7d76e81205e6c6ec.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3006a97fe692f1f1de9db4ee264ee9d42bfed564` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
