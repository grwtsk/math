# preservesEqualizersOfPreservesPullbacksAndBinaryProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d56de91111c00fef70a657a0c572f7da677b67a7733c2ee7f617c30a094fcc7",
  "kind": "def",
  "lexical_name": "preservesEqualizersOfPreservesPullbacksAndBinaryProducts",
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
  "slug": "preservesequalizersofpreservespullbacksandbinaryproducts--b1602110a2fb0f962be9fa04",
  "source": {
    "blob": "4cdebc3850962465a1475031bafc71942b1fc196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1602110a2fb0f962be9fa0474f24f70e1514bbe3bed6063c457c068b771c123",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d56de91111c00fef70a657a0c572f7da677b67a7733c2ee7f617c30a094fcc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesEqualizersOfPreservesPullbacksAndBinaryProducts [HasBinaryProducts C] [HasPullbacks C]
    [PreservesLimitsOfShape (Discrete WalkingPair) G] [PreservesLimitsOfShape WalkingCospan G] :
    PreservesLimitsOfShape WalkingParallelPair G :=
  ⟨fun {K} =>
    preservesLimitOfPreservesLimitCone (equalizerConeIsLimit K) <|
      { lift := fun c => by
          refine' pullback.lift ?_ ?_ ?_ ≫ (PreservesPullback.iso _ _ _ ).inv
          · exact c.π.app WalkingParallelPair.zero
          · exact c.π.app WalkingParallelPair.zero
          apply (mapIsLimitOfPreservesOfIsLimit G _ _ (prodIsProd _ _)).hom_ext
          rintro (_ | _)
          · simp only [Category.assoc, ← G.map_comp, prod.lift_fst, BinaryFan.π_app_left,
              BinaryFan.mk_fst]
          · simp only [BinaryFan.π_app_right, BinaryFan.mk_snd, Category.assoc, ← G.map_comp,
              prod.lift_snd]
            exact
              (c.π.naturality WalkingParallelPairHom.left).symm.trans
                (c.π.naturality WalkingParallelPairHom.right)
        fac := fun c j => by
          rcases j with (_ | _) <;>
            simp only [Category.comp_id, PreservesPullback.iso_inv_fst, Cone.ofFork_π, G.map_comp,
              PreservesPullback.iso_inv_fst_assoc, Functor.mapCone_π_app, eqToHom_refl,
              Category.assoc, Fork.ofι_π_app, pullback.lift_fst, pullback.lift_fst_assoc]
          exact (c.π.naturality WalkingParallelPairHom.left).symm.trans (Category.id_comp _)
        uniq := fun s m h => by
          rw [Iso.eq_comp_inv]
          have := h WalkingParallelPair.zero
          dsimp [equalizerCone] at this
          ext <;>
            simp only [PreservesPullback.iso_hom_snd, Category.assoc,
              PreservesPullback.iso_hom_fst, pullback.lift_fst, pullback.lift_snd,
              Category.comp_id, ← pullbackFst_eq_pullback_snd, ← this] }⟩
#align category_theory.limits.preserves_equalizers_of_preserves_pullbacks_and_binary_products CategoryTheory.Limits.preservesEqualizersOfPreservesPullbacksAndBinaryProducts

-- We hide the "implementation details" inside a namespace
namespace HasCoequalizersOfHasPushoutsAndBinaryCoproducts

variable [HasBinaryCoproducts C] [HasPushouts C]

/-- Define the equalizing object -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cdebc3850962465a1475031bafc71942b1fc196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
