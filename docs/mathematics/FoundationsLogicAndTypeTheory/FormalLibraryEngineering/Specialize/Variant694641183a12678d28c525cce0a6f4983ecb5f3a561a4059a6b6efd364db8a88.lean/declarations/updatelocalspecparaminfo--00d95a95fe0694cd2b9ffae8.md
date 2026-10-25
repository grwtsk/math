# updateLocalSpecParamInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b7a9ee69458e474808a6944a48ac7e4d26227098041263a39742db686184ef9",
  "kind": "def",
  "lexical_name": "updateLocalSpecParamInfo",
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
  "slug": "updatelocalspecparaminfo--00d95a95fe0694cd2b9ffae8",
  "source": {
    "blob": "744889b1f1b063ca4b83b2d59f4bbd45a923754c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 507,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00d95a95fe0694cd2b9ffae850db2a1c11008cd998d47c809c23523309e82c35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b7a9ee69458e474808a6944a48ac7e4d26227098041263a39742db686184ef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def updateLocalSpecParamInfo : SpecializeM Unit := do
  let decls := (← get).processedDecls ++ (← get).workingDecls
  let masks := (← get).parentMasks
  let infos ← computeSpecEntries
    decls
    (fun declName specArgs? => specArgs? == some #[] || (masks[declName]?.getD #[] |>.any (· == true)))
    (decls.map (masks.contains ·.name))

  for entry in infos do
    if let some mask := (← get).parentMasks[entry.declName]? then
      let maskInfo info :=
        mask.zipWith info (f := fun b i => if !b && (i.causesSpecialization || i matches .fixedInst ..) then .other else i)
      let entry := { entry with paramsInfo := maskInfo entry.paramsInfo }
      modify fun s => {
        s with
          localSpecParamInfo := s.localSpecParamInfo.insert entry.declName entry.paramsInfo
      }

  trace[Compiler.specialize.step] m!"Info for next round: {(← get).localSpecParamInfo.toList}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744889b1f1b063ca4b83b2d59f4bbd45a923754c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
