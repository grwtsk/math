# MaterializedDep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f0838b4ca9bda71389e9674a214fd35d68d331db217880cd62db8a90d17f86d",
  "kind": "structure",
  "lexical_name": "MaterializedDep",
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
  "slug": "materializeddep--ea652715a398cd9d2085e627",
  "source": {
    "blob": "25453738b4395e586ca7d246d82ed76a70cdc1ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea652715a398cd9d2085e6277ad18016c9536200fbf6a9f394d00ff02170a465",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f0838b4ca9bda71389e9674a214fd35d68d331db217880cd62db8a90d17f86d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure MaterializedDep where
  /-- Absolute path to the materialized package. -/
  pkgDir : FilePath
  /-- Path to the materialized package relative to the workspace's root directory. -/
  relPkgDir : FilePath
  /--
  URL for the materialized package.
  Used as the endpoint from which to fetch cloud releases for the package.
  -/
  remoteUrl : String
  /-- The manifest for the dependency or the error produced when trying to load it. -/
  manifest? : Except IO.Error Manifest
  /-- The manifest entry for the dependency. -/
  manifestEntry : PackageEntry
  deriving Inhabited

namespace MaterializedDep

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant3b031d66f31afb202a8022cfbae05ac402f39d7f92831e85f7057c360ed9439c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25453738b4395e586ca7d246d82ed76a70cdc1ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
