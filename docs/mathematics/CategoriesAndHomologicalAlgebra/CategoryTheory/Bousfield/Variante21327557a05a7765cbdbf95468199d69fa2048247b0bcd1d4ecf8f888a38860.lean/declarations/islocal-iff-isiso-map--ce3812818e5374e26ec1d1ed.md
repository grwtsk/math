# isLocal_iff_isIso_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eb526b6-62b3-18d1-b131-f1e5c0ebd99b",
  "kind": "lemma",
  "lexical_name": "isLocal_iff_isIso_map",
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
  "slug": "islocal-iff-isiso-map--ce3812818e5374e26ec1d1ed",
  "source": {
    "blob": "e566070b7c9452184ec75da6d0b5990a1b26e305",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variante21327557a05a7765cbdbf95468199d69fa2048247b0bcd1d4ecf8f888a38860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce3812818e5374e26ec1d1edb26780af1bfc3a897723c31b70cf508313b0ac3c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variante21327557a05a7765cbdbf95468199d69fa2048247b0bcd1d4ecf8f888a38860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eb526b6-62b3-18d1-b131-f1e5c0ebd99b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocal_iff_isIso_map {X Y : D} (f : X ⟶ Y) :
    isLocal (· ∈ Set.range F.obj) f ↔ IsIso (G.map f) := by
  have := adj.unit.naturality f
  dsimp at this
  rw [← (isLocal (· ∈ Set.range F.obj)).postcomp_iff _ _ (isLocal_adj_unit_app adj Y),
    this, (isLocal (· ∈ Set.range F.obj)).precomp_iff _ _ (isLocal_adj_unit_app adj X),
    isLocal_iff_isIso _ _ ⟨_, rfl⟩ ⟨_, rfl⟩]
  exact ⟨fun _ ↦ isIso_of_fully_faithful F (G.map f), fun _ ↦ inferInstance⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variante21327557a05a7765cbdbf95468199d69fa2048247b0bcd1d4ecf8f888a38860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variante21327557a05a7765cbdbf95468199d69fa2048247b0bcd1d4ecf8f888a38860.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e566070b7c9452184ec75da6d0b5990a1b26e305` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
