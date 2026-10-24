# monadicOfHasPreservesReflectsGSplitCoequalizers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:245c3884dabaab0b43e5cdf849e6fad02a1be70935425f6df485858705107160",
  "kind": "def",
  "lexical_name": "monadicOfHasPreservesReflectsGSplitCoequalizers",
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
  "slug": "monadicofhaspreservesreflectsgsplitcoequalizers--490d704f191694dff745967d",
  "source": {
    "blob": "0535b7b71c31e325854e07e2d481ce8932b40d54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 328,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:490d704f191694dff745967d0ebb74e4c756142e990346792c12e66b68cced37",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:245c3884dabaab0b43e5cdf849e6fad02a1be70935425f6df485858705107160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monadicOfHasPreservesReflectsGSplitCoequalizers [HasCoequalizerOfIsSplitPair G]
    [PreservesColimitOfIsSplitPair G] [ReflectsColimitOfIsSplitPair G] : MonadicRightAdjoint G := by
  let i : IsRightAdjoint (comparison (ofRightAdjoint G)) := ⟨_, comparisonAdjunction⟩
  constructor
  let _ : ∀ X : (ofRightAdjoint G).toMonad.Algebra,
      IsIso ((ofRightAdjoint (comparison (ofRightAdjoint G))).unit.app X) := by
    intro X
    -- Porting note: passing instances through
    apply @isIso_of_reflects_iso _ _ _ _ _ _ _ (Monad.forget (ofRightAdjoint G).toMonad) ?_ _
    · change IsIso (comparisonAdjunction.unit.app X).f
      rw [comparisonAdjunction_unit_f]
      change
        IsIso
          (IsColimit.coconePointUniqueUpToIso (beckCoequalizer X)
              (unitColimitOfPreservesCoequalizer X)).hom
      refine' IsIso.of_iso (IsColimit.coconePointUniqueUpToIso _ _)
  let _ : ∀ Y : D, IsIso ((ofRightAdjoint (comparison (ofRightAdjoint G))).counit.app Y) := by
    intro Y
    change IsIso (comparisonAdjunction.counit.app Y)
    rw [comparisonAdjunction_counit_app]
    -- Porting note: passing instances through
    change IsIso (IsColimit.coconePointUniqueUpToIso _ ?_).hom
    infer_instance
    -- Porting note: passing instances through
    apply @counitCoequalizerOfReflectsCoequalizer _ _ _ _ _ _ _ ?_
    letI _ :
      G.IsSplitPair ((leftAdjoint G).map (G.map ((Adjunction.ofRightAdjoint G).counit.app Y)))
        ((Adjunction.ofRightAdjoint G).counit.app ((leftAdjoint G).obj (G.obj Y))) :=
      MonadicityInternal.main_pair_G_split ((comparison (Adjunction.ofRightAdjoint G)).obj Y)
    infer_instance
  exact Adjunction.isRightAdjointToIsEquivalence
set_option linter.uppercaseLean3 false in
#align category_theory.monad.monadic_of_has_preserves_reflects_G_split_coequalizers CategoryTheory.Monad.monadicOfHasPreservesReflectsGSplitCoequalizers

-- Porting note: added these to replace parametric instances lean4#2311
-- [∀ ⦃A B⦄ (f g : A ⟶ B) [G.IsSplitPair f g], CreatesColimit (parallelPair f g) G] :
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0535b7b71c31e325854e07e2d481ce8932b40d54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
