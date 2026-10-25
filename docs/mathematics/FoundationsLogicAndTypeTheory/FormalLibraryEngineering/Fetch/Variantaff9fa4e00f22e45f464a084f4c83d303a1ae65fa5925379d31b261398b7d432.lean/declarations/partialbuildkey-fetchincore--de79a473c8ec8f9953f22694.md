# PartialBuildKey.fetchInCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36191a9ca48670d4fcfd7628bc427541b21aab90bacdd2a71e819338edb91175",
  "kind": "def",
  "lexical_name": "PartialBuildKey.fetchInCore",
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
  "slug": "partialbuildkey-fetchincore--de79a473c8ec8f9953f22694",
  "source": {
    "blob": "f363215c258881582a708157db636e0a13f1ee49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variantaff9fa4e00f22e45f464a084f4c83d303a1ae65fa5925379d31b261398b7d432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de79a473c8ec8f9953f2269435f385829c6b3d9f53a392e7c6f2b00e0e43f1b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variantaff9fa4e00f22e45f464a084f4c83d303a1ae65fa5925379d31b261398b7d432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36191a9ca48670d4fcfd7628bc427541b21aab90bacdd2a71e819338edb91175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def PartialBuildKey.fetchInCore
  (defaultPkg : Package) (self : PartialBuildKey)
: FetchM ((key : BuildKey) × Job (BuildData key)) :=
  fetchInCoreAux defaultPkg self self true

/--
Fetches the target specified by this key, resolving gaps as needed.

* A missing package (i.e., `Name.anonymous`) is filled in with `defaultPkg`.
* Facets are qualified by the their input target's kind, and missing facets
  are replaced by their kind's `default`.
* Package targets ending in `moduleTargetIndicator` are converted to module package targets.
* Package targets for non-dynamic targets (i.e., non-`target`) produce their default facet
  rather than their configuration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variantaff9fa4e00f22e45f464a084f4c83d303a1ae65fa5925379d31b261398b7d432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variantaff9fa4e00f22e45f464a084f4c83d303a1ae65fa5925379d31b261398b7d432.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f363215c258881582a708157db636e0a13f1ee49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
