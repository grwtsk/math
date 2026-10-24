# toConj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df26a1813004bea90e4e3e2199ea2f9a2f8788b79e22d9d0172bec84505bb742",
  "kind": "def",
  "lexical_name": "toConj",
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
  "slug": "toconj--da1cc583203fdc76f68d807f",
  "source": {
    "blob": "96d6e9b9f713f8c25c760bc914f4163ea7e250d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 442,
    "path": "GRWTSK/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da1cc583203fdc76f68d807f5feaebefd2143a406dc7bfab40c9dd69b0f19a45",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df26a1813004bea90e4e3e2199ea2f9a2f8788b79e22d9d0172bec84505bb742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toConj (R : Type*) [Rack R] : R →◃ Quandle.Conj (R ≃ R) where
  toFun := act'
  map_act' := by
    intro x y
    exact ad_conj x y

section EnvelGroup

/-!
### Universal enveloping group of a rack

The universal enveloping group `EnvelGroup R` of a rack `R` is the
universal group such that every rack homomorphism `R →◃ conj G` is
induced by a unique group homomorphism `EnvelGroup R →* G`.
For quandles, Joyce called this group `AdConj R`.

The `EnvelGroup` functor is left adjoint to the `Conj` forgetful
functor, and the way we construct the enveloping group is via a
technique that should work for left adjoints of forgetful functors in
general.  It involves thinking a little about 2-categories, but the
payoff is that the map `EnvelGroup R →* G` has a nice description.

Let's think of a group as being a one-object category.  The first step
is to define `PreEnvelGroup`, which gives formal expressions for all
the 1-morphisms and includes the unit element, elements of `R`,
multiplication, and inverses.  To introduce relations, the second step
is to define `PreEnvelGroupRel'`, which gives formal expressions
for all 2-morphisms between the 1-morphisms.  The 2-morphisms include
associativity, multiplication by the unit, multiplication by inverses,
compatibility with multiplication and inverses (`congr_mul` and
`congr_inv`), the axioms for an equivalence relation, and,
importantly, the relationship between conjugation and the rack action
(see `Rack.ad_conj`).

None of this forms a 2-category yet, for example due to lack of
associativity of `trans`.  The `PreEnvelGroupRel` relation is a
`Prop`-valued version of `PreEnvelGroupRel'`, and making it
`Prop`-valued essentially introduces enough 3-isomorphisms so that
every pair of compatible 2-morphisms is isomorphic.  Now, while
composition in `PreEnvelGroup` does not strictly satisfy the category
axioms, `PreEnvelGroup` and `PreEnvelGroupRel'` do form a weak
2-category.

Since we just want a 1-category, the last step is to quotient
`PreEnvelGroup` by `PreEnvelGroupRel'`, and the result is the
group `EnvelGroup`.

For a homomorphism `f : R →◃ Conj G`, how does
`EnvelGroup.map f : EnvelGroup R →* G` work?  Let's think of `G` as
being a 2-category with one object, a 1-morphism per element of `G`,
and a single 2-morphism called `Eq.refl` for each 1-morphism.  We
define the map using a "higher `Quotient.lift`" -- not only do we
evaluate elements of `PreEnvelGroup` as expressions in `G` (this is
`toEnvelGroup.mapAux`), but we evaluate elements of
`PreEnvelGroup'` as expressions of 2-morphisms of `G` (this is
`toEnvelGroup.mapAux.well_def`).  That is to say,
`toEnvelGroup.mapAux.well_def` recursively evaluates formal
expressions of 2-morphisms as equality proofs in `G`.  Now that all
morphisms are accounted for, the map descends to a homomorphism
`EnvelGroup R →* G`.

Note: `Type`-valued relations are not common.  The fact it is
`Type`-valued is what makes `toEnvelGroup.mapAux.well_def` have
well-founded recursion.
-/


/-- Free generators of the enveloping group.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quandle/Variant80256745c89d8d435c788c989f8f280130055e75ec9b32d345c107a87ade1e58.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d6e9b9f713f8c25c760bc914f4163ea7e250d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
