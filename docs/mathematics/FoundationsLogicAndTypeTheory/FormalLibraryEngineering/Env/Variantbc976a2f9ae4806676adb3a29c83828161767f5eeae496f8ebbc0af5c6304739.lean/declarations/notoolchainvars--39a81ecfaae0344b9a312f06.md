# noToolchainVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f09563bbcf35bbc21809b0f0f6a98acd4a8cb1299ac6657e5ce85a57a1f5ed30",
  "kind": "def",
  "lexical_name": "noToolchainVars",
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
  "slug": "notoolchainvars--39a81ecfaae0344b9a312f06",
  "source": {
    "blob": "50f64085660a243b729c4bb3655f0b0edb28a8f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39a81ecfaae0344b9a312f066f7cc13530945c8aa94cc14e0163fb08bb13faf4",
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

Occurrence: `declaration:f09563bbcf35bbc21809b0f0f6a98acd4a8cb1299ac6657e5ce85a57a1f5ed30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def noToolchainVars (env : Env) : Array (String × Option String) :=
  #[
    ("ELAN_TOOLCHAIN", none),
    ("LAKE", none),
    ("LAKE_CACHE_DIR", if env.noSystemCache then some "" else env.lakeSystemCache?.map (·.dir.toString)),
    ("LAKE_OVERRIDE_LEAN", none),
    ("LAKE_HOME", none),
    ("LEAN", none),
    ("LEAN_GITHASH", none),
    ("LEAN_SYSROOT", none),
    ("LEAN_AR", none)
  ]

/-- Environment variable settings that are not augmented by a Lake workspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Env/Variantbc976a2f9ae4806676adb3a29c83828161767f5eeae496f8ebbc0af5c6304739.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f64085660a243b729c4bb3655f0b0edb28a8f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
