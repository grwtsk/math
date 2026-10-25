# baseVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7c445c0044da90cd1bc25b386a68306310da1fb124b6fa70cb60aa4ba93954d",
  "kind": "def",
  "lexical_name": "baseVars",
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
  "slug": "basevars--e061c50b8eee5a5054d611e0",
  "source": {
    "blob": "50f64085660a243b729c4bb3655f0b0edb28a8f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e061c50b8eee5a5054d611e07539e580fa779069341ed549f785f337c487d506",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7c445c0044da90cd1bc25b386a68306310da1fb124b6fa70cb60aa4ba93954d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def baseVars (env : Env) : Array (String × Option String)  :=
  #[
    ("ELAN", env.elan?.map (·.elan.toString)),
    ("ELAN_HOME", env.elan?.map (·.home.toString)),
    ("ELAN_TOOLCHAIN", if env.toolchain.isEmpty then none else env.toolchain),
    ("LAKE", env.lake.lake.toString),
    ("LAKE_HOME", env.lake.home.toString),
    ("LAKE_CONFIG", if let some path := env.lakeConfig? then path.toString else ""),
    ("LAKE_PKG_URL_MAP", toJson env.pkgUrlMap |>.compress),
    ("LAKE_NO_CACHE", toString env.noCache),
    ("LAKE_CACHE_KEY", env.cacheKey?),
    ("LAKE_CACHE_ARTIFACT_ENDPOINT", env.cacheArtifactEndpoint?),
    ("LAKE_CACHE_REVISION_ENDPOINT", env.cacheRevisionEndpoint?),
    ("LAKE_CACHE_SERVICE", env.cacheService?.map (·.toString)),
    ("LEAN", env.lean.lean.toString),
    ("LEAN_SYSROOT", env.lean.sysroot.toString),
    ("LEAN_AR", env.lean.ar.toString),
    ("LEAN_CC", env.lean.leanCc?)
  ]

/-- Environment variable settings for the `Lake.Env`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f64085660a243b729c4bb3655f0b0edb28a8f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
