# convertTZifV2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a949cebedf3751364cc649191dd7002cd604ba4008d37c583f7974e90128dc2e",
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
  "slug": "converttzifv2--8ef13bb905865f2bb52c2640",
  "source": {
    "blob": "9fdc2ba023f1300d7d214334b2257cde2993d771",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ef13bb905865f2bb52c2640bbd561a09c51a8d6b42c99ee4d65ed37c0070c85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a949cebedf3751364cc649191dd7002cd604ba4008d37c583f7974e90128dc2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–131.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fdc2ba023f1300d7d214334b2257cde2993d771` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
