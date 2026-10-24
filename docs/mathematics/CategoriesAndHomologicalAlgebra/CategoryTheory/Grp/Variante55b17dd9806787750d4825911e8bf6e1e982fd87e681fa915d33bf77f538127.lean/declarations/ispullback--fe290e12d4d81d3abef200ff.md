# isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ddf010a791bf0dc0074b8ff80a2e09fd835f0e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a32394a4-4c57-9718-3e99-5f89ad33de6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b89ed1ea-3de7-b847-6fab-6e39ac19da57",
  "kind": "theorem",
  "lexical_name": "isPullback",
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
  "slug": "ispullback--fe290e12d4d81d3abef200ff",
  "source": {
    "blob": "8ddf010a791bf0dc0074b8ff80a2e09fd835f0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe290e12d4d81d3abef200ffb10f6f3ac57ea15acbac19d2e280a8857ed1e4f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b89ed1ea-3de7-b847-6fab-6e39ac19da57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPullback (A : Grp_ C) :
    IsPullback (A.mul ▷ A.X) ((α_ A.X A.X A.X).hom ≫ (A.X ◁ A.mul)) A.mul A.mul where
  w := by simp
  isLimit' := Nonempty.intro <| PullbackCone.IsLimit.mk _
    (fun s => lift
      (lift
        (s.snd ≫ fst _ _)
        (lift (s.snd ≫ fst _ _ ≫ A.inv) (s.fst ≫ fst _ _) ≫ A.mul))
      (s.fst ≫ snd _ _))
    (by
      refine fun s => CartesianMonoidalCategory.hom_ext _ _ ?_ (by simp)
      simp only [lift_whiskerRight, lift_fst]
      rw [← lift_lift_assoc, ← assoc, lift_comp_inv_right, lift_comp_one_left])
    (by
      refine fun s => CartesianMonoidalCategory.hom_ext _ _ (by simp) ?_
      simp only [lift_lift_associator_hom_assoc, lift_whiskerLeft, lift_snd]
      have : lift (s.snd ≫ fst _ _ ≫ A.inv) (s.fst ≫ fst _ _) ≫ A.mul =
          lift (s.snd ≫ snd _ _) (s.fst ≫ snd _ _ ≫ A.inv) ≫ A.mul := by
        rw [← assoc s.fst, eq_lift_inv_right, lift_lift_assoc, ← assoc s.snd, lift_inv_left_eq,
          lift_comp_fst_snd, lift_comp_fst_snd, s.condition]
      rw [this, lift_lift_assoc, ← assoc, lift_comp_inv_left, lift_comp_one_right])
    (by
      intro s m hm₁ hm₂
      refine CartesianMonoidalCategory.hom_ext _ _ (CartesianMonoidalCategory.hom_ext _ _ ?_ ?_) ?_
      · simpa using hm₂ =≫ fst _ _
      · have h : m ≫ fst _ _ ≫ fst _ _ = s.snd ≫ fst _ _ := by simpa using hm₂ =≫ fst _ _
        have := hm₁ =≫ fst _ _
        simp only [assoc, whiskerRight_fst, lift_fst, lift_snd] at this ⊢
        rw [← assoc, ← lift_comp_fst_snd (m ≫ _), assoc, assoc, h] at this
        rwa [← assoc s.snd, eq_lift_inv_left]
      · simpa using hm₁ =≫ snd _ _)

/-- Morphisms of group objects preserve inverses. -/
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ddf010a791bf0dc0074b8ff80a2e09fd835f0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
