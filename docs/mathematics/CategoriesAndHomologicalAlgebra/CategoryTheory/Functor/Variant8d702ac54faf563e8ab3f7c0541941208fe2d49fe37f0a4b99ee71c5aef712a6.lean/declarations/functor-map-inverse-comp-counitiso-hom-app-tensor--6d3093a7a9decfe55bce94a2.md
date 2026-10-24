# functor_map_μ_inverse_comp_counitIso_hom_app_tensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5392ca4-6b3f-8e04-3632-714e5f78a5d3",
  "kind": "lemma",
  "lexical_name": "functor_map_μ_inverse_comp_counitIso_hom_app_tensor",
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
  "slug": "functor-map-inverse-comp-counitiso-hom-app-tensor--6d3093a7a9decfe55bce94a2",
  "source": {
    "blob": "4768e5d6759a6280e62bf274247f99fb1695ce68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1205,
    "line": 1200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8d702ac54faf563e8ab3f7c0541941208fe2d49fe37f0a4b99ee71c5aef712a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d3093a7a9decfe55bce94a25edffcbc7ac023095951807d8a57024c4add5d88",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8d702ac54faf563e8ab3f7c0541941208fe2d49fe37f0a4b99ee71c5aef712a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5392ca4-6b3f-8e04-3632-714e5f78a5d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1200–1205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functor_map_μ_inverse_comp_counitIso_hom_app_tensor (X Y : D) :
    e.functor.map (μ e.inverse X Y) ≫ e.counitIso.hom.app (X ⊗ Y) =
      δ e.functor _ _ ≫ (e.counitIso.hom.app X ⊗ₘ e.counitIso.hom.app Y) :=
  e.toAdjunction.map_μ_comp_counit_app_tensor X Y

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8d702ac54faf563e8ab3f7c0541941208fe2d49fe37f0a4b99ee71c5aef712a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8d702ac54faf563e8ab3f7c0541941208fe2d49fe37f0a4b99ee71c5aef712a6.lean#L1200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4768e5d6759a6280e62bf274247f99fb1695ce68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
