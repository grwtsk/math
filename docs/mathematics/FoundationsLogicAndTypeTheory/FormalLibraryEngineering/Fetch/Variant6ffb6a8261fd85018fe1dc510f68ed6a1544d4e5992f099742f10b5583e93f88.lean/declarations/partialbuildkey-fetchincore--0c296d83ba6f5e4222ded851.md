# PartialBuildKey.fetchInCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:549321e694720895507cf938389fcb1a6c387ffe0e93a63315e821ddc3996e0e",
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
  "slug": "partialbuildkey-fetchincore--0c296d83ba6f5e4222ded851",
  "source": {
    "blob": "aae2fdaf28df467cb73d52b3b7234df501435ea1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c296d83ba6f5e4222ded8511abb24ddaca17fa21472b759ff6dbd6dffd19fca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:549321e694720895507cf938389fcb1a6c387ffe0e93a63315e821ddc3996e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aae2fdaf28df467cb73d52b3b7234df501435ea1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
