# isLimitPullbackToBiproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a4d96f195cdebdd52fa5d7a4d250426bc0faa1556ee6bb955345064e2b078f3",
  "kind": "def",
  "lexical_name": "isLimitPullbackToBiproduct",
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
  "slug": "islimitpullbacktobiproduct--714f0e4437788aecfa1350d5",
  "source": {
    "blob": "4dea1627419859821417cf1d4ef96ec3254772cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 564,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ff54593a6ddfed3ab7edefab859aab8095f7ba6151ffe7fa8940842a0b7615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:714f0e4437788aecfa1350d59b4799c976683a049fab7c56c423d561a07e2aea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ff54593a6ddfed3ab7edefab859aab8095f7ba6151ffe7fa8940842a0b7615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a4d96f195cdebdd52fa5d7a4d250426bc0faa1556ee6bb955345064e2b078f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitPullbackToBiproduct : IsLimit (pullbackToBiproductFork f g) :=
  Fork.IsLimit.mk _
    (fun s =>
      pullback.lift (Fork.ι s ≫ biprod.fst) (Fork.ι s ≫ biprod.snd) <|
        sub_eq_zero.1 <| by
          rw [Category.assoc, Category.assoc, ← comp_sub, sub_eq_add_neg, ← comp_neg, ←
            biprod.desc_eq, KernelFork.condition s])
    (fun s => by
      apply biprod.hom_ext <;> rw [Fork.ι_ofι, Category.assoc]
      · rw [biprod.lift_fst, pullback.lift_fst]
      · rw [biprod.lift_snd, pullback.lift_snd])
    fun s m h => by apply pullback.hom_ext <;> simp [← h]

end PullbackToBiproductIsKernel

namespace BiproductToPushoutIsCokernel

variable [Limits.HasPushouts C] {W X Y Z : C} (f : X ⟶ Y) (g : X ⟶ Z)

/-- The canonical map `Y ⊞ Z ⟶ pushout f g` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ff54593a6ddfed3ab7edefab859aab8095f7ba6151ffe7fa8940842a0b7615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ff54593a6ddfed3ab7edefab859aab8095f7ba6151ffe7fa8940842a0b7615.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dea1627419859821417cf1d4ef96ec3254772cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
