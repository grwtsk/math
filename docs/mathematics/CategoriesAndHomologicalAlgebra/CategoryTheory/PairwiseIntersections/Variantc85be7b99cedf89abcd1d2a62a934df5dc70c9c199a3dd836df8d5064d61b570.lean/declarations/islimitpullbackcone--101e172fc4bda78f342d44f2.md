# isLimitPullbackCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:091989d17048599bc7200570471400bb8d250eb127c5596b0766cf100d8b33ea",
  "kind": "def",
  "lexical_name": "isLimitPullbackCone",
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
  "slug": "islimitpullbackcone--101e172fc4bda78f342d44f2",
  "source": {
    "blob": "8fafb2fec95bd776622e5ee315127cf8d3cb54cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 404,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:101e172fc4bda78f342d44f237a5ab82186a80d5cc6482c50a35269e44dfa395",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:091989d17048599bc7200570471400bb8d250eb127c5596b0766cf100d8b33ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitPullbackCone : IsLimit (interUnionPullbackCone F U V) := by
  let ι : ULift.{w} WalkingPair → Opens X := fun ⟨j⟩ => WalkingPair.casesOn j U V
  have hι : U ⊔ V = iSup ι := by
    ext
    rw [Opens.coe_iSup, Set.mem_iUnion]
    constructor
    · rintro (h | h)
      exacts [⟨⟨WalkingPair.left⟩, h⟩, ⟨⟨WalkingPair.right⟩, h⟩]
    · rintro ⟨⟨_ | _⟩, h⟩
      exacts [Or.inl h, Or.inr h]
  apply PullbackCone.isLimitAux'
  intro s
  use interUnionPullbackConeLift F U V s
  refine' ⟨_, _, _⟩
  · apply interUnionPullbackConeLift_left
  · apply interUnionPullbackConeLift_right
  · intro m h₁ h₂
    rw [← cancel_mono (F.1.map (eqToHom hι.symm).op)]
    apply (F.presheaf.isSheaf_iff_isSheafPairwiseIntersections.mp F.2 ι).some.hom_ext
    rintro ((_ | _) | (_ | _)) <;>
    rw [Category.assoc, Category.assoc]
    · erw [← F.1.map_comp]
      convert h₁
      apply interUnionPullbackConeLift_left
    · erw [← F.1.map_comp]
      convert h₂
      apply interUnionPullbackConeLift_right
    all_goals
      dsimp only [Functor.op, Pairwise.cocone_ι_app, Functor.mapCone_π_app, Cocone.op,
        Pairwise.coconeιApp, unop_op, op_comp, NatTrans.op]
      simp_rw [F.1.map_comp, ← Category.assoc]
      congr 1
      simp_rw [Category.assoc, ← F.1.map_comp]
    · convert h₁
      apply interUnionPullbackConeLift_left
    · convert h₂
      apply interUnionPullbackConeLift_right
set_option linter.uppercaseLean3 false in
#align Top.sheaf.is_limit_pullback_cone TopCat.Sheaf.isLimitPullbackCone

/-- If `U, V` are disjoint, then `F(U ⊔ V) = F(U) × F(V)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fafb2fec95bd776622e5ee315127cf8d3cb54cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
