# convertTZifV2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ed87f9ac7cdba98e224d811802c12a893c5fcfafb93b4d83c639fed9945dd62",
  "kind": "def",
  "lexical_name": "convertTZifV2",
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
  "slug": "converttzifv2--8f095903141228fd52e87dbe",
  "source": {
    "blob": "32564e74db677b03254b3549ce2481c6afebc496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f095903141228fd52e87dbe0f2993ca8d3be126456d1774fa646c8805e7d566",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ed87f9ac7cdba98e224d811802c12a893c5fcfafb93b4d83c639fed9945dd62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def convertTZifV2 (tz : TZif.TZifV2) (id : String) : Except String ZoneRules := do
  let rules ← convertTZifV1 tz.toTZifV1 id

  let some footer := tz.footer
    | return rules

  -- TZif v3 files allow extended hour ranges (±0–167) in transition times (RFC 8536 §3.3).
  let extended := tz.header.version == '3'.toUInt8

  if footer == "" then
    return rules

  match parsePosixTz footer extended with
  | .ok transitionRule => return { rules with transitionRule := some transitionRule }
  | .error err => throw s!"failed to parse tzif footer: {err}"

/--
Converts a `TZif.TZif` structure to a `ZoneRules` structure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32564e74db677b03254b3549ce2481c6afebc496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
