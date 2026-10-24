# curry'_whiskerRight_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f41c98a-56db-7083-6429-9b3bb0f7e3c3",
  "kind": "lemma",
  "lexical_name": "curry'_whiskerRight_comp",
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
  "slug": "curry-whiskerright-comp--aec2cbea2d34d4671c1294f3",
  "source": {
    "blob": "0a5e5a484f925eaa986f8518d7b49b919319d6e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 510,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta4a6af7d4236d05374946f831a879706c901c95fa4c21999b90a7a47a836a4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aec2cbea2d34d4671c1294f399fb811beba258bccf42f54e9201f53d8a072a4d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta4a6af7d4236d05374946f831a879706c901c95fa4c21999b90a7a47a836a4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f41c98a-56db-7083-6429-9b3bb0f7e3c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma curry'_whiskerRight_comp {X Y Z : C} [Closed X] [Closed Y] (f : X ⟶ Y) :
    curry' f ▷ _ ≫ comp X Y Z = (λ_ _).hom ≫ (pre f).app Z := by
  rw [← cancel_epi (λ_ _).inv, Iso.inv_hom_id_assoc]
  apply uncurry_injective
  rw [uncurry_pre, comp_eq, ← curry_natural_left, ← curry_natural_left, uncurry_curry,
    compTranspose_eq, associator_inv_naturality_middle_assoc, ← comp_whiskerRight_assoc,
    whiskerLeft_curry'_ihom_ev_app, comp_whiskerRight_assoc, triangle_assoc_comp_right_assoc,
    whiskerLeft_inv_hom_assoc]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta4a6af7d4236d05374946f831a879706c901c95fa4c21999b90a7a47a836a4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta4a6af7d4236d05374946f831a879706c901c95fa4c21999b90a7a47a836a4d7.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5e5a484f925eaa986f8518d7b49b919319d6e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
