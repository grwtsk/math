# EnrichedFunctor.forget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4226f6fd65724e3ce9702f1ae529b69b00cd60b30049ec1eba1a60f422866b0",
  "kind": "def",
  "lexical_name": "EnrichedFunctor.forget",
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
  "slug": "enrichedfunctor-forget--1203c8ce3ecb827cb51e499f",
  "source": {
    "blob": "95bf36525c56d82731fd31a6c64d4acc5d28b001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 319,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1203c8ce3ecb827cb51e499ff4170bfb3848453b20fefde3aa757ad8db6fe51d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4226f6fd65724e3ce9702f1ae529b69b00cd60b30049ec1eba1a60f422866b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def EnrichedFunctor.forget {C : Type u₁} {D : Type u₂} [EnrichedCategory W C] [EnrichedCategory W D]
    (F : EnrichedFunctor W C D) : ForgetEnrichment W C ⥤ ForgetEnrichment W D where
  obj X := ForgetEnrichment.of W (F.obj (ForgetEnrichment.to W X))
  map f :=
    ForgetEnrichment.homOf W
      (ForgetEnrichment.homTo W f ≫ F.map (ForgetEnrichment.to W _) (ForgetEnrichment.to W _))
  map_comp f g := by
    dsimp
    apply_fun ForgetEnrichment.homTo W
    · simp only [Iso.cancel_iso_inv_left, Category.assoc, tensor_comp,
        ForgetEnrichment.homTo_homOf, EnrichedFunctor.map_comp, forgetEnrichment_comp]
      rfl
    · intro f g w; apply_fun ForgetEnrichment.homOf W at w; simpa using w

end

section

variable {V}
variable {D : Type u₂} [EnrichedCategory V D]

/-!
We now turn to natural transformations between `V`-functors.

The mostly commonly encountered definition of an enriched natural transformation
is a collection of morphisms
```
(𝟙_ W) ⟶ (F.obj X ⟶[V] G.obj X)
```
satisfying an appropriate analogue of the naturality square.
(c.f. https://ncatlab.org/nlab/show/enriched+natural+transformation)

This is the same thing as a natural transformation `F.forget ⟶ G.forget`.

We formalize this as `EnrichedNatTrans F G`, which is a `Type`.

However, there's also something much nicer: with appropriate additional hypotheses,
there is a `V`-object `EnrichedNatTransObj F G` which contains more information,
and from which one can recover `EnrichedNatTrans F G ≃ (𝟙_ V) ⟶ EnrichedNatTransObj F G`.

Using these as the hom-objects, we can build a `V`-enriched category
with objects the `V`-functors.

For `EnrichedNatTransObj` to exist, it suffices to have `V` braided and complete.

Before assuming `V` is complete, we assume it is braided and
define a presheaf `enrichedNatTransYoneda F G`
which is isomorphic to the Yoneda embedding of `EnrichedNatTransObj F G`
whether or not that object actually exists.

This presheaf has components `(enrichedNatTransYoneda F G).obj A`
what we call the `A`-graded enriched natural transformations,
which are collections of morphisms
```
A ⟶ (F.obj X ⟶[V] G.obj X)
```
satisfying a similar analogue of the naturality square,
this time incorporating a half-braiding on `A`.

(We actually define `EnrichedNatTrans F G`
as the special case `A := 𝟙_ V` with the trivial half-braiding,
and when defining `enrichedNatTransYoneda F G` we use the half-braidings
coming from the ambient braiding on `V`.)
-/


/-- The type of `A`-graded natural transformations between `V`-functors `F` and `G`.
This is the type of morphisms in `V` from `A` to the `V`-object of natural transformations.
-/
@[ext]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95bf36525c56d82731fd31a6c64d4acc5d28b001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
