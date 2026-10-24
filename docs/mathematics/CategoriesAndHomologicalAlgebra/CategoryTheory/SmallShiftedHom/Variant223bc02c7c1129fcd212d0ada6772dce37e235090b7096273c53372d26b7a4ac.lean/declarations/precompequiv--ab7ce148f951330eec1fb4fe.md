# precompEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8724618ef52ba30f31b1d4fdd41e573190d31ee6125965d8f4dd770cb172869",
  "kind": "def",
  "lexical_name": "precompEquiv",
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
  "slug": "precompequiv--ab7ce148f951330eec1fb4fe",
  "source": {
    "blob": "a0740226a4fa4be97d74d1b9512c251878af8a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 360,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab7ce148f951330eec1fb4fe0b5a5c3ff951aed8d58a39d464100c086ce9f96d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8724618ef52ba30f31b1d4fdd41e573190d31ee6125965d8f4dd770cb172869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def precompEquiv {X Y Z : C}
    [W.RespectsIso] [W.IsCompatibleWithShift M]
    [HasSmallLocalizedShiftedHom.{w} W M X X]
    [HasSmallLocalizedShiftedHom.{w} W M Y Y]
    [HasSmallLocalizedShiftedHom.{w} W M X Y]
    [HasSmallLocalizedShiftedHom.{w} W M Y X]
    [HasSmallLocalizedShiftedHom.{w} W M Y Z]
    [HasSmallLocalizedShiftedHom.{w} W M X Z]
    [HasSmallLocalizedShiftedHom.{w} W M Z Z]
    (f : X ⟶ Y) (hf : W f) {a : M} :
    SmallShiftedHom.{w} W Y Z a ≃ SmallShiftedHom.{w} W X Z a where
  toFun α := (mk₀ _ _ rfl f).comp α (add_zero _)
  invFun β := (mk₀Inv _ rfl _ hf).comp β (add_zero _)
  left_inv α := by simp [← comp_assoc]
  right_inv β := by simp [← comp_assoc]

section ChangeOfUniverse

variable {W}

/-- Up to an equivalence, the type `SmallShiftedHom.{w} W X Y m` does
not depend on the universe `w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0740226a4fa4be97d74d1b9512c251878af8a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
