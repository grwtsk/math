# restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27b5bd3de27a90de55008cab0c156ad3fd403d34c37dc2d1c19fbe815f9ee282",
  "kind": "def",
  "lexical_name": "restrictScalars",
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
  "slug": "restrictscalars--4020587a3a8ce75a37293fea",
  "source": {
    "blob": "ad0e65a171a27cdfccdd7d2cd7fd505b6497de0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 265,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3971580a54c92503d9bfec394d60db140063d8e182bad4ccadc2e13613cfb82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4020587a3a8ce75a37293feabd27e590a30072e61d886eca2581bbf3de1c39e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3971580a54c92503d9bfec394d60db140063d8e182bad4ccadc2e13613cfb82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27b5bd3de27a90de55008cab0c156ad3fd403d34c37dc2d1c19fbe815f9ee282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictScalars {R S : Type*} [CommRing R] [CommRing S] (f : R →+* S) :
    AlgCat.{v} S ⥤ AlgCat.{v} R where
  obj A :=
    letI : Algebra R A := Algebra.compHom _ f
    ↧A
  map {A B} g :=
    letI : Algebra R A := Algebra.compHom _ f
    letI : Algebra R B := Algebra.compHom _ f
    letI : Algebra R S := f.toAlgebra
    haveI : IsScalarTower R S A := .of_algebraMap_eq' rfl
    haveI : IsScalarTower R S B := .of_algebraMap_eq' rfl
    AlgCat.ofHom (g.hom.restrictScalars _)

-- The option makes `simps` produce the correct lemmas
set_option backward.isDefEq.respectTransparency false in
/-- Restricting scalars along the identity is isomorphic to the identity. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3971580a54c92503d9bfec394d60db140063d8e182bad4ccadc2e13613cfb82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3971580a54c92503d9bfec394d60db140063d8e182bad4ccadc2e13613cfb82d.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad0e65a171a27cdfccdd7d2cd7fd505b6497de0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
