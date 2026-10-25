# readModuleArtifactRegions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c8fbbb134ac581264409d0d639cff322be4f7eb960ffa746ecd29a32d865554",
  "kind": "def",
  "lexical_name": "readModuleArtifactRegions",
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
  "slug": "readmoduleartifactregions--17d063f1cbd5bfff831c0b7c",
  "source": {
    "blob": "ab296b81b15379f9aae54d4b49af132bc976ecbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante154c6df4b65c125cd1aad29d57a8dc455432ad8e35bed6e13c7da8f19e4d367.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17d063f1cbd5bfff831c0b7c5a18a03d23419500ed1d673b3e6085c67f5a1cc4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante154c6df4b65c125cd1aad29d57a8dc455432ad8e35bed6e13c7da8f19e4d367.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c8fbbb134ac581264409d0d639cff322be4f7eb960ffa746ecd29a32d865554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private unsafe def readModuleArtifactRegions (arts : ModuleArtifacts) :
    IO (Array CompactedRegion) := do
  let mut oleanRegions : Array CompactedRegion := #[]
  for partPath in arts.oleanParts do
    let (_, region) ← CompactedRegion.read (α := ModuleData) partPath oleanRegions
    oleanRegions := oleanRegions.push region
  let mut irRegions : Array CompactedRegion := #[]
  for partPath in arts.irParts do
    let (_, region) ← CompactedRegion.read (α := ModuleData) partPath irRegions
    -- accumulate so `.ir` is read with `.ir.sig` as a dep (its cross-part pointers); cf. olean chain
    irRegions := irRegions.push region
  return oleanRegions ++ irRegions

/-- Loads a snapshot saved by `--incr-(header-)save`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante154c6df4b65c125cd1aad29d57a8dc455432ad8e35bed6e13c7da8f19e4d367.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante154c6df4b65c125cd1aad29d57a8dc455432ad8e35bed6e13c7da8f19e4d367.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab296b81b15379f9aae54d4b49af132bc976ecbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
