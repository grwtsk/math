# ReservoirResp.fromJson?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8643a8f8505f7275a8d4dc2e49a7232e1165df3f58a8aedaf618773e3f94c127",
  "kind": "def",
  "lexical_name": "ReservoirResp.fromJson?",
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
  "slug": "reservoirresp-fromjson--d33e5e78be490cbe17c8a374",
  "source": {
    "blob": "c79bc6b5450536e1bd9dc0337bc129d93de550df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant121f2fea396755be68aa4c2491feb28e84d8cb682866e407a15d9ae7e78ae2e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d33e5e78be490cbe17c8a374c90685397ad53ea82368be88bd0ff122be0077a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant121f2fea396755be68aa4c2491feb28e84d8cb682866e407a15d9ae7e78ae2e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8643a8f8505f7275a8d4dc2e49a7232e1165df3f58a8aedaf618773e3f94c127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public protected def ReservoirResp.fromJson? [FromJson α] (val : Json) : Except String (ReservoirResp α) := do
  if let .ok obj := JsonObject.fromJson? val then
    if let some (err : JsonObject) ← obj.get? "error" then
      let status ← err.get "status"
      let message ← err.get "message"
      return .error status message
    else if let some (val : Json) ← obj.get? "data" then
      .data <$> fromJson? val
    else
      .data <$> fromJson? val
  else
    .data <$> fromJson? val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant121f2fea396755be68aa4c2491feb28e84d8cb682866e407a15d9ae7e78ae2e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reservoir/Variant121f2fea396755be68aa4c2491feb28e84d8cb682866e407a15d9ae7e78ae2e9.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c79bc6b5450536e1bd9dc0337bc129d93de550df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
