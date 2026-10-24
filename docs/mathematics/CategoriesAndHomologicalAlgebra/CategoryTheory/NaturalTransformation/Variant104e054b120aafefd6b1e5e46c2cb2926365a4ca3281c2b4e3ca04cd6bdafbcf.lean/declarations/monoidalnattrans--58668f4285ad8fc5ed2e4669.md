# MonoidalNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88a2def9fe8d851565d14637890997c979f47d22700cdb2fb5933d8b69b4c804",
  "kind": "structure",
  "lexical_name": "MonoidalNatTrans",
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
  "slug": "monoidalnattrans--58668f4285ad8fc5ed2e4669",
  "source": {
    "blob": "389ae66c48a5bec083534f3fc1b8899ec11df97d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58668f4285ad8fc5ed2e4669431ea8d8153b614d058d29056d49fb911db630cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88a2def9fe8d851565d14637890997c979f47d22700cdb2fb5933d8b69b4c804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MonoidalNatTrans (F G : LaxMonoidalFunctor C D) extends
  NatTrans F.toFunctor G.toFunctor where
  /-- The unit condition for a monoidal natural transformation. -/
  unit : F.ε ≫ app (𝟙_ C) = G.ε := by aesop_cat
  /-- The tensor condition for a monoidal natural transformation. -/
  tensor : ∀ X Y, F.μ _ _ ≫ app (X ⊗ Y) = (app X ⊗ app Y) ≫ G.μ _ _ := by aesop_cat
#align category_theory.monoidal_nat_trans CategoryTheory.MonoidalNatTrans

-- Porting note: `reassoc (attr := simp)` seems to add a `simp`
-- attribute to the original lemma as well.
attribute [reassoc (attr := simp)] MonoidalNatTrans.tensor
attribute [reassoc (attr := simp)] MonoidalNatTrans.unit

initialize_simps_projections MonoidalNatTrans (+toNatTrans, -app)

#align category_theory.monoidal_nat_trans.unit CategoryTheory.MonoidalNatTrans.unit
#align category_theory.monoidal_nat_trans.unit_assoc CategoryTheory.MonoidalNatTrans.unit_assoc
#align category_theory.monoidal_nat_trans.tensor CategoryTheory.MonoidalNatTrans.tensor
#align category_theory.monoidal_nat_trans.tensor_assoc CategoryTheory.MonoidalNatTrans.tensor_assoc

namespace MonoidalNatTrans

/-- The identity monoidal natural transformation. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `389ae66c48a5bec083534f3fc1b8899ec11df97d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
