# isIso_fst'_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e24f7c63-dce0-e1ce-3831-b51e78cf11d9",
  "kind": "lemma",
  "lexical_name": "isIso_fst'_self",
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
  "slug": "isiso-fst-self--14f83405d337d71f3bd2244e",
  "source": {
    "blob": "cc4f6e3f318a62359e36fbfaecb6e48a2e54780b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 456,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f83405d337d71f3bd2244e5625580f98c1e86997b7fed3747ae64fdd2c4bc3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e24f7c63-dce0-e1ce-3831-b51e78cf11d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_fst'_self (hP : P ≤ MorphismProperty.monomorphisms C)
    {X : C} {f : yoneda.obj X ⟶ G} (hf : P.presheaf f) : IsIso (hf.rep.fst' f) :=
  have := P.presheaf_mono_of_le hP hf
  have := (hf.rep.isPullback' f).isIso_fst_of_mono
  Yoneda.fullyFaithful.isIso_of_isIso_map _

end

end MorphismProperty

namespace Functor.relativelyRepresentable

section Pullbacks₃
/-
In this section we develop some basic API that help deal with certain triple pullbacks obtained
from morphism `f₁ : F.obj A₁ ⟶ X` which is relatively representable with respect to some functor
`F : C ⥤ D`.

More precisely, given two objects `A₂` and `A₃` in `C`, and two morphisms `f₂ : A₂ ⟶ X` and
`f₃ : A₃ ⟶ X`, we can consider the pullbacks (in `D`) `(A₁ ×_X A₂)` and `(A₁ ×_X A₃)`
(which makes sense as objects in `C` due to `F` being relatively representable).

We can then consider the pullback, in `C`, of these two pullbacks. This is the object
`(A₁ ×_X A₂) ×_{A₁} (A₁ ×_X A₃)`. In this section we develop some basic API for dealing with this
pullback. This is used in `Mathlib/AlgebraicGeometry/Sites/Representability.lean` to show that
representability is Zariski-local.
-/
variable {F : C ⥤ D} [Full F] {A₁ A₂ A₃ : C} {X : D}
  {f₁ : F.obj A₁ ⟶ X} (hf₁ : F.relativelyRepresentable f₁)
  (f₂ : F.obj A₂ ⟶ X) (f₃ : F.obj A₃ ⟶ X)
  [HasPullback (hf₁.fst' f₂) (hf₁.fst' f₃)]

/-- The pullback `(A₁ ×_X A₂) ×_{A₁} (A₁ ×_X A₃)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representable/Variant1a7e9a5db2f7700dae268d8c4ce63c43c23acd6969e52cc9cf43330df3648e58.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc4f6e3f318a62359e36fbfaecb6e48a2e54780b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
