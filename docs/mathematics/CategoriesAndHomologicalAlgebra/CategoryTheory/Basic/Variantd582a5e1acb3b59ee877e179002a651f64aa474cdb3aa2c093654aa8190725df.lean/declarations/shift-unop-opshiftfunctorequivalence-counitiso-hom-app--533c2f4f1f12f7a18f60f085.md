# shift_unop_opShiftFunctorEquivalence_counitIso_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68ef2a86-b882-83bb-8260-1702e9dde14a",
  "kind": "lemma",
  "lexical_name": "shift_unop_opShiftFunctorEquivalence_counitIso_hom_app",
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
  "slug": "shift-unop-opshiftfunctorequivalence-counitiso-hom-app--533c2f4f1f12f7a18f60f085",
  "source": {
    "blob": "4f6c9112e2f6295e85523a7493438ce7053ee208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 304,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:533c2f4f1f12f7a18f60f0859d09258b24b934572a39b9932978f34f2b6ae114",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68ef2a86-b882-83bb-8260-1702e9dde14a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shift_unop_opShiftFunctorEquivalence_counitIso_hom_app (X : Cᵒᵖ) (n : ℤ) :
    ((opShiftFunctorEquivalence C n).counitIso.hom.app X).unop⟦n⟧' =
      ((opShiftFunctorEquivalence C n).unitIso.inv.app ((Opposite.op (X.unop⟦n⟧)))).unop :=
  Quiver.Hom.op_inj ((opShiftFunctorEquivalence C n).unitInv_app_inverse X).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6c9112e2f6295e85523a7493438ce7053ee208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
