# Equivalence.mapHomologicalComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ec186913822409fc7a30ad99383f7a262f5add116d028190ea69684110857fb",
  "kind": "def",
  "lexical_name": "Equivalence.mapHomologicalComplex",
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
  "slug": "equivalence-maphomologicalcomplex--d685be735b8b2f813e842de0",
  "source": {
    "blob": "73413473259ac0e5ec4bcd4872c88e8790dd715b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant064718a9cbb8d3bb3bb2c927e2dc0b7ed0a28d15ec1a0f61dee8dddd5f7a86db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d685be735b8b2f813e842de09a2ce6ff3e301456c8ba0b95f0d8f5b4720dda66",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant064718a9cbb8d3bb3bb2c927e2dc0b7ed0a28d15ec1a0f61dee8dddd5f7a86db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ec186913822409fc7a30ad99383f7a262f5add116d028190ea69684110857fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Equivalence.mapHomologicalComplex (e : V ≌ W) [e.functor.Additive] (c : ComplexShape ι) :
    HomologicalComplex V c ≌ HomologicalComplex W c where
  functor := e.functor.mapHomologicalComplex c
  inverse := e.inverse.mapHomologicalComplex c
  unitIso :=
    (Functor.mapHomologicalComplexIdIso V c).symm ≪≫ NatIso.mapHomologicalComplex e.unitIso c
  counitIso := NatIso.mapHomologicalComplex e.counitIso c ≪≫ Functor.mapHomologicalComplexIdIso W c
#align category_theory.equivalence.map_homological_complex CategoryTheory.Equivalence.mapHomologicalComplex

end CategoryTheory

namespace ChainComplex

variable {W : Type*} [Category W] [Preadditive W]

variable {α : Type*} [AddRightCancelSemigroup α] [One α] [DecidableEq α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant064718a9cbb8d3bb3bb2c927e2dc0b7ed0a28d15ec1a0f61dee8dddd5f7a86db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant064718a9cbb8d3bb3bb2c927e2dc0b7ed0a28d15ec1a0f61dee8dddd5f7a86db.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73413473259ac0e5ec4bcd4872c88e8790dd715b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
