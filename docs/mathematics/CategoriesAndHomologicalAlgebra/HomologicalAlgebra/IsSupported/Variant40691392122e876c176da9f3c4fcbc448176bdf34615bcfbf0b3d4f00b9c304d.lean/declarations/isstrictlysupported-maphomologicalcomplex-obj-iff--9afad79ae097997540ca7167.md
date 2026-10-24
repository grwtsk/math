# isStrictlySupported_mapHomologicalComplex_obj_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28365125-ff1d-ab41-4b48-3046cfb285a3",
  "kind": "lemma",
  "lexical_name": "isStrictlySupported_mapHomologicalComplex_obj_iff",
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
  "slug": "isstrictlysupported-maphomologicalcomplex-obj-iff--9afad79ae097997540ca7167",
  "source": {
    "blob": "d2757b419f3c9c278e2b4bce0a99b571b5f109ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variant40691392122e876c176da9f3c4fcbc448176bdf34615bcfbf0b3d4f00b9c304d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9afad79ae097997540ca71674cbdea80921c192940fc676059df60e21220e34a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variant40691392122e876c176da9f3c4fcbc448176bdf34615bcfbf0b3d4f00b9c304d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28365125-ff1d-ab41-4b48-3046cfb285a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isStrictlySupported_mapHomologicalComplex_obj_iff [F.Faithful] :
    ((F.mapHomologicalComplex c').obj K).IsStrictlySupported e ↔ K.IsStrictlySupported e := by
  refine ⟨fun _ ↦ ⟨fun i' hi' ↦ ?_⟩, fun _ ↦ inferInstance⟩
  rw [IsZero.iff_id_eq_zero]
  exact F.map_injective ((isZero_X_of_isStrictlySupported
    ((F.mapHomologicalComplex c').obj K) e i' hi').eq_of_src _ _)

end

end HomologicalComplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variant40691392122e876c176da9f3c4fcbc448176bdf34615bcfbf0b3d4f00b9c304d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variant40691392122e876c176da9f3c4fcbc448176bdf34615bcfbf0b3d4f00b9c304d.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2757b419f3c9c278e2b4bce0a99b571b5f109ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
