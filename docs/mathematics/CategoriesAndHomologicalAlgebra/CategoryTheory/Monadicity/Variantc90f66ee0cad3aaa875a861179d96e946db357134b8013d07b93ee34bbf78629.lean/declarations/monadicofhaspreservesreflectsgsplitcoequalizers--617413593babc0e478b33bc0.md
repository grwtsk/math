# monadicOfHasPreservesReflectsGSplitCoequalizers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b62000093471ee544c0981d55999b87f708a9b6e8d5e788dcaeccb70bfb4ad7",
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
  "slug": "monadicofhaspreservesreflectsgsplitcoequalizers--617413593babc0e478b33bc0",
  "source": {
    "blob": "4399e6d06d0004008f76360bb6b2a0ed8c1e1235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 308,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variantc90f66ee0cad3aaa875a861179d96e946db357134b8013d07b93ee34bbf78629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:617413593babc0e478b33bc03e498f180298aa18fa575a2fa12dfe849d572c5e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variantc90f66ee0cad3aaa875a861179d96e946db357134b8013d07b93ee34bbf78629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b62000093471ee544c0981d55999b87f708a9b6e8d5e788dcaeccb70bfb4ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monadicOfHasPreservesReflectsGSplitCoequalizers [HasCoequalizerOfIsSplitPair G]
    [PreservesColimitOfIsSplitPair G] [ReflectsColimitOfIsSplitPair G] :
    MonadicRightAdjoint G where
  L := F
  adj := adj
  eqv := by
    have : ∀ (X : Algebra adj.toMonad), IsIso ((comparisonAdjunction adj).unit.app X) := by
      intro X
      apply @isIso_of_reflects_iso _ _ _ _ _ _ _ (Monad.forget adj.toMonad) ?_ _
      · change IsIso ((comparisonAdjunction adj).unit.app X).f
        rw [comparisonAdjunction_unit_f]
        change
          IsIso
            (IsColimit.coconePointUniqueUpToIso (beckCoequalizer X)
                (unitColimitOfPreservesCoequalizer X)).hom
        exact (IsColimit.coconePointUniqueUpToIso _ _).isIso_hom
    have : ∀ (Y : D), IsIso ((comparisonAdjunction adj).counit.app Y) := by
      intro Y
      rw [comparisonAdjunction_counit_app]
      -- Porting note: passing instances through
      change IsIso (IsColimit.coconePointUniqueUpToIso _ ?_).hom
      · infer_instance
      -- Porting note: passing instances through
      apply @counitCoequalizerOfReflectsCoequalizer _ _ _ _ _ _ _ _ ?_
      let _ :
        G.IsSplitPair (F.map (G.map (adj.counit.app Y)))
          (adj.counit.app (F.obj (G.obj Y))) :=
        MonadicityInternal.main_pair_G_split _ ((comparison adj).obj Y)
      infer_instance
    exact (comparisonAdjunction adj).toEquivalence.isEquivalence_inverse

-- Porting note: added these to replace parametric instances https://github.com/leanprover/lean4/issues/2311
-- [∀ ⦃A B⦄ (f g : A ⟶ B) [G.IsSplitPair f g], CreatesColimit (parallelPair f g) G] :
/-- Typeclass expressing that for all `G`-split pairs `f,g`, `G` creates colimits of
`parallelPair f g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variantc90f66ee0cad3aaa875a861179d96e946db357134b8013d07b93ee34bbf78629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variantc90f66ee0cad3aaa875a861179d96e946db357134b8013d07b93ee34bbf78629.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4399e6d06d0004008f76360bb6b2a0ed8c1e1235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
