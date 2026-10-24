# coconePointsIsoOfNatIso_inv_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90fe919d-7c8c-7a16-4ce9-b133f18bd7df",
  "kind": "theorem",
  "lexical_name": "coconePointsIsoOfNatIso_inv_desc",
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
  "slug": "coconepointsisoofnatiso-inv-desc--f50a190497a5e679cc7219c6",
  "source": {
    "blob": "f5589fae47faa1708576e10f9d8a19867fca85e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 861,
    "line": 850,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f50a190497a5e679cc7219c6735173018e497d14bde2c86b783d92d1582eeb9d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90fe919d-7c8c-7a16-4ce9-b133f18bd7df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 850–861.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coconePointsIsoOfNatIso_inv_desc {F G : J ⥤ C} {s : Cocone G} {r t : Cocone F}
    (P : IsColimit t) (Q : IsColimit s) (w : F ≅ G) :
    (coconePointsIsoOfNatIso P Q w).inv ≫ P.desc r = Q.map _ w.inv :=
  Q.hom_ext (by simp)
#align category_theory.limits.is_colimit.cocone_points_iso_of_nat_iso_inv_desc CategoryTheory.Limits.IsColimit.coconePointsIsoOfNatIso_inv_desc

section Equivalence

open CategoryTheory.Equivalence

/-- If `s : Cocone F` is a colimit cocone, so is `s` whiskered by an equivalence `e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean#L850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5589fae47faa1708576e10f9d8a19867fca85e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
