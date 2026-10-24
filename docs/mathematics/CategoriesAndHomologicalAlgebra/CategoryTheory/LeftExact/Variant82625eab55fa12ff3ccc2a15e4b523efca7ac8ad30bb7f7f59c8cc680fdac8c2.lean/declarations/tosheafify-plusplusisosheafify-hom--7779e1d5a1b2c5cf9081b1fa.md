# toSheafify_plusPlusIsoSheafify_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3630e7b0-4265-b616-7b61-bf07a7172b1e",
  "kind": "lemma",
  "lexical_name": "toSheafify_plusPlusIsoSheafify_hom",
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
  "slug": "tosheafify-plusplusisosheafify-hom--7779e1d5a1b2c5cf9081b1fa",
  "source": {
    "blob": "f65f4e819e8b04036ce102c785361dd52cf28daf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 286,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7779e1d5a1b2c5cf9081b1fae2e447ba5d28a8380d2004d4154012d8dc41866e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3630e7b0-4265-b616-7b61-bf07a7172b1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSheafify_plusPlusIsoSheafify_hom (P : Cᵒᵖ ⥤ D) :
    J.toSheafify P ≫ (plusPlusIsoSheafify J D P).hom = toSheafify J P := by
  convert Adjunction.unit_leftAdjointUniq_hom_app
    (plusPlusAdjunction J D) (sheafificationAdjunction J D) P
  ext1 P
  dsimp [GrothendieckTopology.toSheafify, plusPlusAdjunction]
  rw [Category.comp_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f65f4e819e8b04036ce102c785361dd52cf28daf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
