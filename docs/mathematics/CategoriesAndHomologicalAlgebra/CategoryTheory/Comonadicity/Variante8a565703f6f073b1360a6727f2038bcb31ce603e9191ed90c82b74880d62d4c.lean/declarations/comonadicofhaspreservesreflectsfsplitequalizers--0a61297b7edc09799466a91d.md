# comonadicOfHasPreservesReflectsFSplitEqualizers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5ca0507d812e9e65f174d952ba45c3e500713b3f63b9a29de8bc29dada3696d",
  "kind": "def",
  "lexical_name": "comonadicOfHasPreservesReflectsFSplitEqualizers",
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
  "slug": "comonadicofhaspreservesreflectsfsplitequalizers--0a61297b7edc09799466a91d",
  "source": {
    "blob": "4ae38ebe86ae9635b1ad7f1108128b3d40ed2ba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 270,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a61297b7edc09799466a91d18dcf2c644a600393ecb843d24f5c9efc180f4db",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5ca0507d812e9e65f174d952ba45c3e500713b3f63b9a29de8bc29dada3696d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comonadicOfHasPreservesReflectsFSplitEqualizers [HasEqualizerOfIsCosplitPair F]
    [PreservesLimitOfIsCosplitPair F] [ReflectsLimitOfIsCosplitPair F] :
    ComonadicLeftAdjoint F where
  R := G
  adj := adj
  eqv := by
    have : ∀ (X : Coalgebra adj.toComonad), IsIso ((comparisonAdjunction adj).counit.app X) := by
      intro X
      apply @isIso_of_reflects_iso _ _ _ _ _ _ _ (Comonad.forget adj.toComonad) ?_ _
      · change IsIso ((comparisonAdjunction adj).counit.app X).f
        rw [comparisonAdjunction_counit_f]
        change
          IsIso
            (IsLimit.conePointUniqueUpToIso (beckEqualizer X)
                (counitLimitOfPreservesEqualizer X)).inv
        exact (IsLimit.conePointUniqueUpToIso _ _).isIso_inv
    have : ∀ (Y : C), IsIso ((comparisonAdjunction adj).unit.app Y) := by
      intro Y
      rw [comparisonAdjunction_unit_app]
      change IsIso (IsLimit.conePointUniqueUpToIso _ ?_).inv
      infer_instance
      apply @unitEqualizerOfCoreflectsEqualizer _ _ _ _ _ _ _ _ ?_
      letI _ :
        F.IsCosplitPair (G.map (F.map (adj.unit.app Y)))
          (adj.unit.app (G.obj (F.obj Y))) :=
        ComonadicityInternal.main_pair_F_cosplit _ ((comparison adj).obj Y)
      infer_instance
    exact (comparisonAdjunction adj).toEquivalence.symm.isEquivalence_inverse

/-- Dual to `Monad.CreatesColimitOfIsSplitPair`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ae38ebe86ae9635b1ad7f1108128b3d40ed2ba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
