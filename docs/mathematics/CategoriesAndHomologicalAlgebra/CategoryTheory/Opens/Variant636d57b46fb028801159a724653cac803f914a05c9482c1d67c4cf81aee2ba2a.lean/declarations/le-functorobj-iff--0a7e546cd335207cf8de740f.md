# le_functorObj_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1016294-ebcb-ddbf-086f-0bac61ad6d8d",
  "kind": "lemma",
  "lexical_name": "le_functorObj_iff",
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
  "slug": "le-functorobj-iff--0a7e546cd335207cf8de740f",
  "source": {
    "blob": "023e55262b2d135d636a2d0f249b75406c70da38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 341,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant636d57b46fb028801159a724653cac803f914a05c9482c1d67c4cf81aee2ba2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a7e546cd335207cf8de740fbbe58a56df98e6e853d45b3820deaf43b3351367",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant636d57b46fb028801159a724653cac803f914a05c9482c1d67c4cf81aee2ba2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1016294-ebcb-ddbf-086f-0bac61ad6d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_functorObj_iff {X Y : TopCat} {f : X ⟶ Y} (hf : IsInducing f) {U : Opens X}
    {V : Opens Y} : V ≤ hf.functorObj U ↔ (Opens.map f).obj V ≤ U := by
  obtain ⟨U, hU⟩ := U
  obtain ⟨t, ht, rfl⟩ := hf.isOpen_iff.mp hU
  constructor
  · exact fun i x hx ↦ (hf.mem_functorObj_iff ((Opens.map f).obj ⟨t, ht⟩)).mp (i hx)
  · intros h x hx
    refine Opens.mem_sSup.mpr ⟨⟨_, V.2.union ht⟩, Opens.ext ?_, Set.mem_union_left t hx⟩
    dsimp
    rwa [Set.union_eq_right]

/-- An inducing map `f : X ⟶ Y` induces a Galois insertion between `Opens Y` and `Opens X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant636d57b46fb028801159a724653cac803f914a05c9482c1d67c4cf81aee2ba2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant636d57b46fb028801159a724653cac803f914a05c9482c1d67c4cf81aee2ba2a.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023e55262b2d135d636a2d0f249b75406c70da38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
