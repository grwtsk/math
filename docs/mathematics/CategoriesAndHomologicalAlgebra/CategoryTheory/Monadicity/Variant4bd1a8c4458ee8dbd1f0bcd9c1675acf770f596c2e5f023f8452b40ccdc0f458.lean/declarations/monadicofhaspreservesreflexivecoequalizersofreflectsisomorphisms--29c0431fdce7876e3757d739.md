# monadicOfHasPreservesReflexiveCoequalizersOfReflectsIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:889023bec46f7089646cba0027dd9b7c6c7eecae9cb62189b54148dc8a25381e",
  "kind": "def",
  "lexical_name": "monadicOfHasPreservesReflexiveCoequalizersOfReflectsIsomorphisms",
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
  "slug": "monadicofhaspreservesreflexivecoequalizersofreflectsisomorphisms--29c0431fdce7876e3757d739",
  "source": {
    "blob": "d10ae4a40e74ca919a38e531eb54149c0556d11d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 432,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29c0431fdce7876e3757d739b0277c2739a4d68c702ed7199e205a31ff946f15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:889023bec46f7089646cba0027dd9b7c6c7eecae9cb62189b54148dc8a25381e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monadicOfHasPreservesReflexiveCoequalizersOfReflectsIsomorphisms : MonadicRightAdjoint G := by
  letI i : IsRightAdjoint (comparison (Adjunction.ofRightAdjoint G)) :=
    ⟨_, comparisonAdjunction⟩
  constructor
  let _ : ∀ X : (Adjunction.ofRightAdjoint G).toMonad.Algebra,
      IsIso ((Adjunction.ofRightAdjoint (comparison (Adjunction.ofRightAdjoint G))).unit.app X)
    := by
    intro X
    apply
      @isIso_of_reflects_iso _ _ _ _ _ _ _ (Monad.forget (Adjunction.ofRightAdjoint G).toMonad) ?_ _
    · change IsIso (comparisonAdjunction.unit.app X).f
      rw [comparisonAdjunction_unit_f]
      change
        IsIso
          (IsColimit.coconePointUniqueUpToIso (beckCoequalizer X)
              (unitColimitOfPreservesCoequalizer X)).hom
      apply IsIso.of_iso (IsColimit.coconePointUniqueUpToIso _ _)
  let _ : ∀ Y : D,
      IsIso ((ofRightAdjoint (comparison (Adjunction.ofRightAdjoint G))).counit.app Y) := by
    intro Y
    change IsIso (comparisonAdjunction.counit.app Y)
    rw [comparisonAdjunction_counit_app]
    -- Porting note: passing instances through
    change IsIso (IsColimit.coconePointUniqueUpToIso _ ?_).hom
    infer_instance
    -- Porting note: passing instances through
    apply @counitCoequalizerOfReflectsCoequalizer _ _ _ _ _ _ _ ?_
    apply reflectsColimitOfReflectsIsomorphisms
  exact Adjunction.isRightAdjointToIsEquivalence
#align category_theory.monad.monadic_of_has_preserves_reflexive_coequalizers_of_reflects_isomorphisms CategoryTheory.Monad.monadicOfHasPreservesReflexiveCoequalizersOfReflectsIsomorphisms

end ReflexiveMonadicity

end

end Monad

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10ae4a40e74ca919a38e531eb54149c0556d11d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
