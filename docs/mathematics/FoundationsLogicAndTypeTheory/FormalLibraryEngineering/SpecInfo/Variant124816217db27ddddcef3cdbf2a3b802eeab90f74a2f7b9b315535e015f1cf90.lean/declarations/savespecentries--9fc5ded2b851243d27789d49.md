# saveSpecEntries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d7238f597b30f81840266925d008400ec0205e848d758701091769fb1eb2edf",
  "kind": "def",
  "lexical_name": "saveSpecEntries",
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
  "slug": "savespecentries--9fc5ded2b851243d27789d49",
  "source": {
    "blob": "2995a8dc9e7f778efa46ff91b436581595930951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fc5ded2b851243d27789d4950c3012635be01d90403033e1ff7d4b7b0f4c726",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d7238f597b30f81840266925d008400ec0205e848d758701091769fb1eb2edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def saveSpecEntries (decls : Array (Decl .pure)) : CompilerM Unit := do
  let entries ← computeSpecEntries
    decls
    (fun _ specArgs? => specArgs? == some #[])
    (Array.replicate decls.size false)
  for entry in entries do
    if entry.paramsInfo.any SpecParamInfo.causesSpecialization then
      trace[Compiler.specialize.info] "{entry.declName} {entry.paramsInfo}"
      modifyEnv fun env => specExtension.addEntry env entry

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2995a8dc9e7f778efa46ff91b436581595930951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
