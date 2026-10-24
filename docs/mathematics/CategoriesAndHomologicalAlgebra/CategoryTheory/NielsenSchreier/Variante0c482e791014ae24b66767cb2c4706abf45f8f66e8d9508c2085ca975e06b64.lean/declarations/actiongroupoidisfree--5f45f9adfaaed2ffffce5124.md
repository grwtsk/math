# actionGroupoidIsFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35d2cad1a736467e4be5baa58f551f1574de4a022972f67f08a712454aa3090b",
  "kind": "instance",
  "lexical_name": "actionGroupoidIsFree",
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
  "slug": "actiongroupoidisfree--5f45f9adfaaed2ffffce5124",
  "source": {
    "blob": "71621bf15a90d24e7c6700738b893c4b2bc473b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 114,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f45f9adfaaed2ffffce5124bec794aba5c14dd02637d553b45dce9b0002ef17",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35d2cad1a736467e4be5baa58f551f1574de4a022972f67f08a712454aa3090b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance actionGroupoidIsFree {G A : Type u} [Group G] [IsFreeGroup G] [MulAction G A] :
    IsFreeGroupoid (ActionCategory G A) where
  quiverGenerators :=
    ⟨fun a b => { e : IsFreeGroup.Generators G // IsFreeGroup.of e • a.back = b.back }⟩
  of := fun (e : Subtype _) => ⟨IsFreeGroup.of e, e.property⟩
  unique_lift := by
    intro X _ f
    let f' : IsFreeGroup.Generators G → (A → X) ⋊[mulAutArrow] G := fun e =>
      ⟨fun b ↦ (@f (Functor.elementsMk _ () _) (Functor.elementsMk _ () b) ⟨e, smul_inv_smul _ b⟩),
        IsFreeGroup.of e⟩
    rcases IsFreeGroup.unique_lift f' with ⟨F', hF', uF'⟩
    refine ⟨uncurry F' ?_, ?_, ?_⟩
    · suffices SemidirectProduct.rightHom.comp F' = MonoidHom.id _ by
        exact DFunLike.ext_iff.mp this
      apply IsFreeGroup.ext_hom (fun x ↦ ?_)
      rw [MonoidHom.comp_apply, hF']
      rfl
    · intro a b e
      induction a with | mk a
      induction b with | mk b
      induction e with | mk e h
      change A at a b
      change IsFreeGroup.of e • a = b at h
      change (F' (IsFreeGroup.of _)).left _ = _
      rw [hF']
      cases inv_smul_eq_iff.mpr h.symm
      rfl
    · intro E hE
      have : curry E = F' := by
        apply uF'
        intro e
        ext
        · convert! hE _ _ _
          rfl
        · rfl
      apply Functor.hext
      · intro
        apply Unit.ext
      · refine ActionCategory.cases ?_
        intros
        simp only [← this, uncurry_map, curry_apply_left, coe_back, homOfPair_hom]
        rfl

namespace SpanningTree

/- In this section, we suppose we have a free groupoid with a spanning tree for its generating
quiver. The goal is to prove that the vertex group at the root is free. A picture to have in mind
is that we are 'pulling' the endpoints of all the edges of the quiver along the spanning tree to
the root. -/
variable {G : Type u} [Groupoid.{u} G] [IsFreeGroupoid G]
  (T : WideSubquiver (Symmetrify <| Generators G)) [Arborescence T]

set_option backward.privateInPublic true in
/-- The root of `T`, except its type is `G` instead of the type synonym `T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71621bf15a90d24e7c6700738b893c4b2bc473b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
