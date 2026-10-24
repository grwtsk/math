# right_triangle_components

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be7712c8-3b25-613c-9fa8-73e6792342fb",
  "kind": "theorem",
  "lexical_name": "right_triangle_components",
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
  "slug": "right-triangle-components--3cd11e4b8da69f4baec39f81",
  "source": {
    "blob": "56704e6e0b4b4cf54a67f0718484f729a7cb5c3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 288,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cd11e4b8da69f4baec39f81b72f17ed7ee152062d450eccb4830fa7bcf778df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be7712c8-3b25-613c-9fa8-73e6792342fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_triangle_components (G : C ⥤ V) [DayConvolution F H]
    (ℌ : DayConvolutionInternalHom F G H) {H' : C ⥤ V}
    (ℌ' : DayConvolutionInternalHom F (F ⊛ H) H') :
    ℌ'.coev_app ≫ ℌ'.map ℌ.ev_app ℌ = 𝟙 H := by
  ext c
  apply Wedge.IsLimit.hom_ext <| ℌ.isLimitWedge c
  intro j
  apply MonoidalClosed.uncurry_injective
  simp [MonoidalClosed.uncurry_natural_right]

end DayConvolutionInternalHom

end

end CategoryTheory.MonoidalCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant7bdbbf1faf75059349258b27860c3a55e74e375432c29edc9c8527246d7fc466.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56704e6e0b4b4cf54a67f0718484f729a7cb5c3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
