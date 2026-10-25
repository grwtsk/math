# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26926cc0849b07721659ec5de7a60c08bfa96b8e304e2f2561f99703bcbbffa6",
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
  "slug": "instance--646b14c948daa93b099dc1ef",
  "source": {
    "blob": "b7d5b211a04788541ef8d2d406c78efae1f0f630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:646b14c948daa93b099dc1efc5eadd9aa2bcd142f62425bda57d6d0b675cf8de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26926cc0849b07721659ec5de7a60c08bfa96b8e304e2f2561f99703bcbbffa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance : MkEqOfNaturality BicategoryM where
  mkEqOfNaturality η θ ηIso θIso η_f η_g Hη Hθ := do
    let ctx ← read
    let _bicat := ctx.instBicategory
    let η' := ηIso.e
    let θ' := θIso.e
    let f ← η'.srcM
    let g ← η'.tgtM
    let f' ← η_f.tgtM
    have a : Q($ctx.B) := f.src.e
    have b : Q($ctx.B) := f.tgt.e
    have f : Q($a ⟶ $b) := f.e
    have g : Q($a ⟶ $b) := g.e
    have f' : Q($a ⟶ $b) := f'.e
    have η : Q($f ⟶ $g) := η
    have θ : Q($f ⟶ $g) := θ
    have η'_e : Q($f ≅ $g) := η'.e
    have θ'_e : Q($f ≅ $g) := θ'.e
    have η_f : Q(𝟙 $a ≫ $f ≅ $f') := η_f.e
    have η_g : Q(𝟙 $a ≫ $g ≅ $f') := η_g.e
    have η_hom : Q(Iso.hom $η'_e = $η) := ηIso.eq
    have Θ_hom : Q(Iso.hom $θ'_e = $θ) := θIso.eq
    have Hη : Q(whiskerLeftIso (𝟙 $a) $η'_e ≪≫ $η_g = $η_f) := Hη
    have Hθ : Q(whiskerLeftIso (𝟙 $a) $θ'_e ≪≫ $η_g = $η_f) := Hθ
    return q(mk_eq_of_naturality $η_f $η_g $η_hom $Θ_hom $Hη $Hθ)

open Elab.Tactic

/-- Close the goal of the form `η.hom = θ.hom`, where `η` and `θ` are 2-isomorphisms made up only of
associators, unitors, and identities.
```lean
example {B : Type} [Bicategory B] {a : B} :
  (λ_ (𝟙 a)).hom = (ρ_ (𝟙 a)).hom := by
  bicategory_coherence
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7d5b211a04788541ef8d2d406c78efae1f0f630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
