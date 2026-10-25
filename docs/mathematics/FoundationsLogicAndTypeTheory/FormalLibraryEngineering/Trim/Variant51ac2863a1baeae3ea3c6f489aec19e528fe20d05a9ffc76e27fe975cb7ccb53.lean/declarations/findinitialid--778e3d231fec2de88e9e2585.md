# findInitialId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75d2bb05bb4ed6e97459f4c69808b7d820573c561572971bb22bb2cea0a2e0d1",
  "kind": "def",
  "lexical_name": "findInitialId",
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
  "slug": "findinitialid--778e3d231fec2de88e9e2585",
  "source": {
    "blob": "fc8e0a09dec044e87d8a2304eac9bce01f86697a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trim/Variant51ac2863a1baeae3ea3c6f489aec19e528fe20d05a9ffc76e27fe975cb7ccb53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:778e3d231fec2de88e9e258598924d01405b8591696623507b4ae23189f8e119",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trim/Variant51ac2863a1baeae3ea3c6f489aec19e528fe20d05a9ffc76e27fe975cb7ccb53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75d2bb05bb4ed6e97459f4c69808b7d820573c561572971bb22bb2cea0a2e0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findInitialId (proof : Array IntAction) (curr : Nat := 0) : Except String Nat :=
  if h : curr < proof.size then
    match proof[curr] with
    | .addEmpty id .. | .addRup id .. | .addRat id .. => return id
    | .del .. => findInitialId proof (curr + 1)
  else
    throw "LRAT proof doesn't contain a proper first proof step."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trim/Variant51ac2863a1baeae3ea3c6f489aec19e528fe20d05a9ffc76e27fe975cb7ccb53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trim/Variant51ac2863a1baeae3ea3c6f489aec19e528fe20d05a9ffc76e27fe975cb7ccb53.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8e0a09dec044e87d8a2304eac9bce01f86697a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
