# isLimitEquivOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5efa1d9cddffa6b04c1b0fe352c3a2f052dcd45e759adaeea8e4fd0070db0ba",
  "kind": "def",
  "lexical_name": "isLimitEquivOfIso",
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
  "slug": "islimitequivofiso--a4b82b3eb4b47829afd3d56e",
  "source": {
    "blob": "9419811fcbe4677837d8a77de604ff0dc4957447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 869,
    "line": 838,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4b82b3eb4b47829afd3d56eabaf0b136bc10eaaa780a1c07a36f0dbff09f01e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5efa1d9cddffa6b04c1b0fe352c3a2f052dcd45e759adaeea8e4fd0070db0ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 838–869.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitEquivOfIso {E F : PreOneHypercover.{w} S} (f : E ≅ F) (G : Cᵒᵖ ⥤ A) :
    IsLimit (E.multifork G) ≃ IsLimit (F.multifork G) := by
  refine Equiv.trans ?_
    (IsLimit.whiskerEquivalenceEquiv <| PreOneHypercover.equivalenceMulticospanOfIso f).symm
  refine IsLimit.equivOfNatIsoOfIso ?_ _ _ ?_
  · refine WalkingMulticospan.functorExt ?_ ?_ ?_ ?_
    · intro i
      exact G.mapIso (asIso (f.hom.h₀ i)).symm.op
    · intro i
      exact G.mapIso (asIso (f.hom.h₁ i.2)).symm.op
    · simp [← Functor.map_comp_assoc, ← Functor.map_comp, ← op_comp, f.hom.w₁₁]
    · simp [← Functor.map_comp_assoc, ← Functor.map_comp, ← op_comp, f.hom.w₁₂]
  · refine Cone.ext (Iso.refl _) fun i ↦ ?_
    induction i with
    | left _ => simp [← Functor.map_comp, ← op_comp]
    | right _ => simp [← Functor.map_comp, ← op_comp, f.hom.w₁₁_assoc]

end

end Category

section

variable (F : PreOneHypercover.{w'} S) {G : PreOneHypercover.{w''} S}
  [∀ (i : E.I₀) (j : F.I₀), HasPullback (E.f i) (F.f j)]
  [∀ (i j : E.I₀) (k : E.I₁ i j) (a b : F.I₀) (l : F.I₁ a b),
    HasPullback (E.p₁ k ≫ E.f i) (F.p₁ l ≫ F.f a)]

set_option backward.isDefEq.respectTransparency false in
/-- First projection from the intersection of two pre-`1`-hypercovers. -/
@[simps toHom s₁]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean#L838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9419811fcbe4677837d8a77de604ff0dc4957447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
