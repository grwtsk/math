# expectedUpdateJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea2185fff8aa5f7ddc8918e1f694931ad1e37aec6632d61f8a3f297a95a23cbf",
  "kind": "def",
  "lexical_name": "expectedUpdateJson",
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
  "slug": "expectedupdatejson--21d4662f279c40fcf83b90cc",
  "source": {
    "blob": "d8548b385e255c354a146e9a375fdd0109612f44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant91b29654b42735cdaeec0c1515cd6293e212dda71e28076e62cda1fae5c28ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21d4662f279c40fcf83b90ccd892b861f78ab7dd0354f3d9e4df9cdd5f535966",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant91b29654b42735cdaeec0c1515cd6293e212dda71e28076e62cda1fae5c28ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea2185fff8aa5f7ddc8918e1f694931ad1e37aec6632d61f8a3f297a95a23cbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expectedUpdateJson (wire : WireRevisionedXYZ) : Except String Json := do
  if revisionBound : wire.revision < revisionModulus then
    match fixedXYZV1OfRaw? ⟨wire.xRaw, wire.yRaw, wire.zRaw⟩ with
    | none =>
        pure <| Json.mkObj [
          ("classification", toJson (rawClassification wire)),
          ("output", Json.null)
        ]
    | some value =>
        let input : RevisionedXYZ xyzFormatV1 :=
          ⟨⟨wire.revision, revisionBound⟩, value⟩
        pure <| Json.mkObj [
          ("classification", toJson "VALID_NORMALIZED"),
          ("output", revisionedJson (leanExpectedUpdate input))
        ]
  else
    throw "revision is outside the unsigned 32-bit range"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant91b29654b42735cdaeec0c1515cd6293e212dda71e28076e62cda1fae5c28ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant91b29654b42735cdaeec0c1515cd6293e212dda71e28076e62cda1fae5c28ae0.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8548b385e255c354a146e9a375fdd0109612f44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
