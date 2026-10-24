# mapHomologicalComplexIso_hom_descShortComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8a7b0f1-6956-cd86-5a57-e37cf7bd09fa",
  "kind": "lemma",
  "lexical_name": "mapHomologicalComplexIso_hom_descShortComplex",
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
  "slug": "maphomologicalcomplexiso-hom-descshortcomplex--0acf65586ffbc94094f22059",
  "source": {
    "blob": "0567f38cd91b9c8a6ab3db6009645f31cf2df470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantcc76a69b26bc51688c4f5f455dfef2026a1d20ee3335024580b6ed92fd00333f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0acf65586ffbc94094f220599940bbb93e1e623e64910b8864f2d6fbeb384fa7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantcc76a69b26bc51688c4f5f455dfef2026a1d20ee3335024580b6ed92fd00333f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8a7b0f1-6956-cd86-5a57-e37cf7bd09fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapHomologicalComplexIso_hom_descShortComplex (F : C ⥤ D) [F.Additive]
    (S : ShortComplex (CochainComplex C ℤ)) :
    (mapHomologicalComplexIso _ _).hom ≫
      descShortComplex (S.map (F.mapHomologicalComplex (.up ℤ))) =
    (F.mapHomologicalComplex (.up ℤ)).map (descShortComplex S) := by
  symm
  ext n
  simp [mapHomologicalComplexIso, descShortComplex, mapHomologicalComplexXIso,
    mapHomologicalComplexXIso'_hom, Functor.mapHomologicalComplex_map_f,
    desc_f _ _ _ _ n (n + 1) rfl]

end mappingCone

end CochainComplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantcc76a69b26bc51688c4f5f455dfef2026a1d20ee3335024580b6ed92fd00333f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantcc76a69b26bc51688c4f5f455dfef2026a1d20ee3335024580b6ed92fd00333f.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0567f38cd91b9c8a6ab3db6009645f31cf2df470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
