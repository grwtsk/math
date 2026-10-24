# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6799187b2f2a7913845c2a38f4da940762a2784d2e719cbf20a18fb82395ef4a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--de85dee1446473cbe6c4d317",
  "source": {
    "blob": "e19df25aa2991142913744e10775e4dc2b892f47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 244,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de85dee1446473cbe6c4d317374c9010a4ad5aeaf0498ce271eecf53261c9284",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6799187b2f2a7913845c2a38f4da940762a2784d2e719cbf20a18fb82395ef4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance : MkEqOfNaturality MonoidalM where
  mkEqOfNaturality η θ ηIso θIso η_f η_g Hη Hθ := do
    let ctx ← read
    let .some _monoidal := ctx.instMonoidal? | synthMonoidalError
    let η' := ηIso.e
    let θ' := θIso.e
    let f ← η'.srcM
    let g ← η'.tgtM
    let f' ← η_f.tgtM
    have f : Q($ctx.C) := f.e
    have g : Q($ctx.C) := g.e
    have f' : Q($ctx.C) := f'.e
    have η : Q($f ⟶ $g) := η
    have θ : Q($f ⟶ $g) := θ
    have η'_e : Q($f ≅ $g) := η'.e
    have θ'_e : Q($f ≅ $g) := θ'.e
    have η_f : Q(𝟙_ _ ⊗ $f ≅ $f') := η_f.e
    have η_g : Q(𝟙_ _ ⊗ $g ≅ $f') := η_g.e
    have η_hom : Q(Iso.hom $η'_e = $η) := ηIso.eq
    have Θ_hom : Q(Iso.hom $θ'_e = $θ) := θIso.eq
    have Hη : Q(whiskerLeftIso (𝟙_ _) $η'_e ≪≫ $η_g = $η_f) := Hη
    have Hθ : Q(whiskerLeftIso (𝟙_ _) $θ'_e ≪≫ $η_g = $η_f) := Hθ
    return q(mk_eq_of_naturality $η_f $η_g $η_hom $Θ_hom $Hη $Hθ)

open Elab.Tactic

/-- Close the goal of the form `η = θ`, where `η` and `θ` are 2-isomorphisms made up only of
associators, unitors, and identities.
```lean
example {C : Type} [Category C] [MonoidalCategory C] :
  (λ_ (𝟙_ C)).hom = (ρ_ (𝟙_ C)).hom := by
  monoidal_coherence
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e19df25aa2991142913744e10775e4dc2b892f47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
