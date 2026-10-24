# mapGrp.instMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5afe30334145df7fb12a0f5414a9941f6473ac6ed24615508972ef3b236b052",
  "kind": "instance",
  "lexical_name": "mapGrp.instMonoidal",
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
  "slug": "mapgrp-instmonoidal--9d88db8f7d4f2bdb708fad37",
  "source": {
    "blob": "9b77b60395bf5488948106dd5c1597a6ec6dd700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 729,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant3d789a7817624111c521b1196d9518be9cebc11fe128ef369ff2663362d13f6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d88db8f7d4f2bdb708fad37339c48fba9c80511ff3912407794af3117a335dc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant3d789a7817624111c521b1196d9518be9cebc11fe128ef369ff2663362d13f6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5afe30334145df7fb12a0f5414a9941f6473ac6ed24615508972ef3b236b052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance mapGrp.instMonoidal : F.mapGrp.Monoidal :=
  Functor.CoreMonoidal.toMonoidal
  { εIso := (Grp.fullyFaithfulForget₂Mon _).preimageIso (εIso F.mapMon)
    μIso X Y := (Grp.fullyFaithfulForget₂Mon _).preimageIso (μIso F.mapMon X.toMon Y.toMon)
    μIso_hom_natural_left f Z :=
      (Grp.forget₂Mon _).map_injective (μ_natural_left F.mapMon f.hom Z.toMon)
    μIso_hom_natural_right Z f :=
      (Grp.forget₂Mon _).map_injective (μ_natural_right F.mapMon Z.toMon f.hom)
    associativity X Y Z :=
      (Grp.forget₂Mon _).map_injective (associativity F.mapMon X.toMon Y.toMon Z.toMon)
    left_unitality X :=
      (Grp.forget₂Mon _).map_injective (left_unitality F.mapMon X.toMon)
    right_unitality X :=
      (Grp.forget₂Mon _).map_injective (right_unitality F.mapMon X.toMon) }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant3d789a7817624111c521b1196d9518be9cebc11fe128ef369ff2663362d13f6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant3d789a7817624111c521b1196d9518be9cebc11fe128ef369ff2663362d13f6e.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b77b60395bf5488948106dd5c1597a6ec6dd700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
