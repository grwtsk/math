# isClosedMap_restrict_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fe95ec6-53cb-a9c0-2eeb-17dcecaf9be4",
  "kind": "lemma",
  "lexical_name": "isClosedMap_restrict_of_compactSpace",
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
  "slug": "isclosedmap-restrict-of-compactspace--89c8d051fdcdef87d2dac757",
  "source": {
    "blob": "3daeeeb0e4b249fa2fc33d2d44c387a102705ee3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c8d051fdcdef87d2dac757c06f563078cfe203d1949cba250da78ba1bcfc93",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fe95ec6-53cb-a9c0-2eeb-17dcecaf9be4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedMap_restrict_of_compactSpace [∀ i, CompactSpace (α i)] :
    IsClosedMap (S.restrict : (Π i, α i) → _) := fun s hs ↦ by
  classical
  have : S.restrict (π := α) = Prod.fst ∘ (Homeomorph.piEquivPiSubtypeProd S α) := rfl
  rw [this, image_comp]
  exact isClosedMap_fst_of_compactSpace _ <| (Homeomorph.isClosed_image _).mpr hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daeeeb0e4b249fa2fc33d2d44c387a102705ee3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
