# comp_coconePointsIsoOfNatIso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ee7c000-410d-67f0-36db-fab56646ee3f",
  "kind": "theorem",
  "lexical_name": "comp_coconePointsIsoOfNatIso_inv",
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
  "slug": "comp-coconepointsisoofnatiso-inv--cfa7e187a22ec2e1aa975988",
  "source": {
    "blob": "f5589fae47faa1708576e10f9d8a19867fca85e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 837,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfa7e187a22ec2e1aa9759884ab1683f4e72dc007dfad252617c7668adb6c1c8",
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

Occurrence: `result:0ee7c000-410d-67f0-36db-fab56646ee3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_coconePointsIsoOfNatIso_inv {F G : J ⥤ C} {s : Cocone F} {t : Cocone G}
    (P : IsColimit s) (Q : IsColimit t) (w : F ≅ G) (j : J) :
    t.ι.app j ≫ (coconePointsIsoOfNatIso P Q w).inv = w.inv.app j ≫ s.ι.app j := by simp
#align category_theory.limits.is_colimit.comp_cocone_points_iso_of_nat_iso_inv CategoryTheory.Limits.IsColimit.comp_coconePointsIsoOfNatIso_inv

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant35e12c48f6321f71b8ed5e7842eb80e91994ffba2a88c04b66774c849a855e63.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5589fae47faa1708576e10f9d8a19867fca85e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
