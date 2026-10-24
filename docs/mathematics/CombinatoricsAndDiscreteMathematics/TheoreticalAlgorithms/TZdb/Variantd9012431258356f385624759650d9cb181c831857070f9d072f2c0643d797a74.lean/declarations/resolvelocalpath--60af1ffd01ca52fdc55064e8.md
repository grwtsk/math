# resolveLocalPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:780e9638d5eb62cd7661d9d8e6d79d2d620a5cd42ad6192d0fd9e83e586ef4cf",
  "kind": "def",
  "lexical_name": "resolveLocalPath",
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
  "slug": "resolvelocalpath--60af1ffd01ca52fdc55064e8",
  "source": {
    "blob": "dd1fa13e2da72f6b61ef2586ef384c351b0bb89e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TZdb/Variantd9012431258356f385624759650d9cb181c831857070f9d072f2c0643d797a74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60af1ffd01ca52fdc55064e8f6157b50e4309c70ee9e22b4b4e644d63d609aa7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TZdb/Variantd9012431258356f385624759650d9cb181c831857070f9d072f2c0643d797a74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:780e9638d5eb62cd7661d9d8e6d79d2d620a5cd42ad6192d0fd9e83e586ef4cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveLocalPath (zonesPaths : Array System.FilePath) : IO System.FilePath := do
  let some tz ← IO.getEnv "TZ"
    | return "/etc/localtime"

  let some spec := parseTZValue tz
    | return "/etc/localtime"

  match spec with
  | .filePath p =>
    if p.startsWith "/" then return p
    if let some path ← findInPaths zonesPaths p then return path
    throw <| IO.userError s!"TZ='{tz}': path '{p}' not found in any zoneinfo directory"
  | .zoneId id =>
    if let some path ← findInPaths zonesPaths id then return path
    throw <| IO.userError s!"TZ='{tz}': timezone not found in any zoneinfo directory"

/--
Returns a `TZdb` with common fallback zoneinfo paths for Linux and macOS.
Call this once at program startup. The `TZ` and `TZDIR` environment variables
are re-read on every `getLocalZoneRules`/`getZoneRules` call, so runtime changes
to those variables are always reflected.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TZdb/Variantd9012431258356f385624759650d9cb181c831857070f9d072f2c0643d797a74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TZdb/Variantd9012431258356f385624759650d9cb181c831857070f9d072f2c0643d797a74.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd1fa13e2da72f6b61ef2586ef384c351b0bb89e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
