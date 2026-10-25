# getConstructorsIndexingMode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e805e12214b93d4114ff3c79ccd0aaf54d6291d2d275ad6a4c8d964a4a42a3c",
  "kind": "def",
  "lexical_name": "getConstructorsIndexingMode",
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
  "slug": "getconstructorsindexingmode--1579df0b4d1b49b43f23a91c",
  "source": {
    "blob": "ed16cdf587ed76264986f7ed2ba590403a79bc5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constructors/Variantd7dce02d0307a93f8d59b2c36bd221f7673c2c0895e3b8ac920090fba29dbfd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1579df0b4d1b49b43f23a91cd9967e1d3eee96f99d82fa6c6a6974250a529d7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constructors/Variantd7dce02d0307a93f8d59b2c36bd221f7673c2c0895e3b8ac920090fba29dbfd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e805e12214b93d4114ff3c79ccd0aaf54d6291d2d275ad6a4c8d964a4a42a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getConstructorsIndexingMode (indexMd : TransparencyMode)
    (info : InductiveVal) : MetaM IndexingMode := do
  if indexMd != .reducible then
    return .unindexed
  else
    let mut imodes := Array.mkEmpty info.numCtors
    for ctor in info.ctors do
      let ctorInfo ← getConstInfo ctor
      let imode ← IndexingMode.targetMatchingConclusion ctorInfo.type
      imodes := imodes.push imode
    return .or imodes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constructors/Variantd7dce02d0307a93f8d59b2c36bd221f7673c2c0895e3b8ac920090fba29dbfd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constructors/Variantd7dce02d0307a93f8d59b2c36bd221f7673c2c0895e3b8ac920090fba29dbfd6.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed16cdf587ed76264986f7ed2ba590403a79bc5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
