# ModuleOutputDescrs.toJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b227a9ce217933cf908feb7e3ddcf8fe10b1295968d344dd224391730a74eb0e",
  "kind": "def",
  "lexical_name": "ModuleOutputDescrs.toJson",
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
  "slug": "moduleoutputdescrs-tojson--889d5f02a6fbd26132e411ca",
  "source": {
    "blob": "8f99edfb7be028b1c2b8f2c9a3bc4c00a5cfa60d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleArtifacts/Variantc3792acc40df8b27d998a0127c2aae8805aa3103cb4353ef05ccc0e00ea5a688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:889d5f02a6fbd26132e411ca643ced7af0f9008d0ac33c188de9510ccb1eb35f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleArtifacts/Variantc3792acc40df8b27d998a0127c2aae8805aa3103cb4353ef05ccc0e00ea5a688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b227a9ce217933cf908feb7e3ddcf8fe10b1295968d344dd224391730a74eb0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public protected def ModuleOutputDescrs.toJson (self : ModuleOutputDescrs) : Json := Id.run do
  let mut obj : JsonObject := {}
  obj := obj.insert "m" self.isModule
  obj := obj.insert "o" self.oleanParts
  obj := obj.insert "i" self.ilean
  if let some irSig := self.irSig? then
    obj := obj.insert "rs" irSig
  if let some ir := self.ir? then
    obj := obj.insert "r" ir
  obj := obj.insert "c" self.c
  if let some bc := self.bc? then
    obj := obj.insert "b" bc
  if let some ltar := self.ltar? then
    obj := obj.insert "l" ltar
  return obj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleArtifacts/Variantc3792acc40df8b27d998a0127c2aae8805aa3103cb4353ef05ccc0e00ea5a688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleArtifacts/Variantc3792acc40df8b27d998a0127c2aae8805aa3103cb4353ef05ccc0e00ea5a688.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f99edfb7be028b1c2b8f2c9a3bc4c00a5cfa60d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
