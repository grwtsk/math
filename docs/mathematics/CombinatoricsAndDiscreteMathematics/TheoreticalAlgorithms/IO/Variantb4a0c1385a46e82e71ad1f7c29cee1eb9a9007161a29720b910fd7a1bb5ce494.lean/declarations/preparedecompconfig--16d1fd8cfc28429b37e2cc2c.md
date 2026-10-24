# prepareDecompConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91cffd2e649166647a2d2fdccd6acb235d63a8610dbf5346e370463c406e794c",
  "kind": "def",
  "lexical_name": "prepareDecompConfig",
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
  "slug": "preparedecompconfig--16d1fd8cfc28429b37e2cc2c",
  "source": {
    "blob": "888035b399fe71628837ec9acb77cb6d5367dd65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 489,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantb4a0c1385a46e82e71ad1f7c29cee1eb9a9007161a29720b910fd7a1bb5ce494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16d1fd8cfc28429b37e2cc2c193784dda34b6a745782a4f87dad845edc11ec40",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantb4a0c1385a46e82e71ad1f7c29cee1eb9a9007161a29720b910fd7a1bb5ce494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91cffd2e649166647a2d2fdccd6acb235d63a8610dbf5346e370463c406e794c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prepareDecompConfig (hashMap : ModuleHashMap) (force : Bool) :
    CacheM (Option DecompPlan) := do
  let cached ← hashMap.filterExists true
  if cached.isEmpty then return none
  let toDecomp ← if force then pure cached else cached.filterNeedsDecompression
  if toDecomp.isEmpty then return none
  let config ← mkLeanTarConfig toDecomp
  return some {
    config
    needsDecomp := toDecomp.size
    alreadyDecompressed := cached.size - toDecomp.size
  }

/-- Decompresses build files into their respective folders -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantb4a0c1385a46e82e71ad1f7c29cee1eb9a9007161a29720b910fd7a1bb5ce494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantb4a0c1385a46e82e71ad1f7c29cee1eb9a9007161a29720b910fd7a1bb5ce494.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `888035b399fe71628837ec9acb77cb6d5367dd65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
