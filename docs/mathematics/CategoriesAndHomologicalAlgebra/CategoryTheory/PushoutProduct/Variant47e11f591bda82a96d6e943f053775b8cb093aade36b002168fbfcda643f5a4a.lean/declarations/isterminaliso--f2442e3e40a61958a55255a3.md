# isTerminalIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80555afcb75646deaa3f08d2cb9c0e7326ef3932fd505e1f5dc148aebd1fa0a3",
  "kind": "def",
  "lexical_name": "isTerminalIso",
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
  "slug": "isterminaliso--f2442e3e40a61958a55255a3",
  "source": {
    "blob": "66a830f2f657733fec9270011f9cc890823e1a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 314,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2442e3e40a61958a55255a31c925674df46bdb8ae22f66b4d57ee751d44b8d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80555afcb75646deaa3f08d2cb9c0e7326ef3932fd505e1f5dc148aebd1fa0a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isTerminalIso [MonoidalCategory C] [MonoidalClosed C]
    (X : Arrow C) {T : C} (t : IsTerminal T) {W : C} :
    ((Opposite.op X) ⋔ Arrow.mk (t.from W)) ≅ Arrow.mk ((MonoidalClosed.pre X.hom).app W) :=
  haveI : IsIso ((MonoidalClosed.pre X.hom).app T) :=
    isIso_of_isTerminal (IsTerminal.isTerminalObj (ihom _) _ t)
      (IsTerminal.isTerminalObj (ihom _) _ t) _
  haveI : IsPullback (𝟙 _) ((IsTerminal.isTerminalObj (ihom _) _ t).from _)
      ((ihom X.left).map (t.from W)) ((MonoidalClosed.pre X.hom).app T) :=
    .of_horiz_isIso (sq := ⟨(IsTerminal.isTerminalObj (ihom _) _ t).hom_ext ..⟩)
  Arrow.isoMk' _ _ (Iso.refl _) this.isoPullback.symm ((this.isoPullback).eq_comp_inv.2
    (pullback.hom_ext (by simp) ((IsTerminal.isTerminalObj (ihom _) _ t).hom_ext ..)))

open CartesianMonoidalCategory in
set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The arrow isomorphism `(∅ ⟶ W) ⋔ (f : A ⟶ B) ≅ (W ⟹ A ⟶ W ⟹ B)` in a braided CCC with
pullbacks and an initial object. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66a830f2f657733fec9270011f9cc890823e1a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
