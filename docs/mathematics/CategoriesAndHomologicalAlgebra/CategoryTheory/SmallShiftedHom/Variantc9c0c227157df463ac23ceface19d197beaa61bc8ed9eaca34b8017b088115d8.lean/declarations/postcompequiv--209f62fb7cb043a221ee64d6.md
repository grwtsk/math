# postcompEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74464251b84b83dd3cf20c67f85a4b65d7c8ad34c0617a7917f21ab746d22df9",
  "kind": "def",
  "lexical_name": "postcompEquiv",
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
  "slug": "postcompequiv--209f62fb7cb043a221ee64d6",
  "source": {
    "blob": "bbcdcee0cdbd2e4ebc8498110925665c4cff8d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 333,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variantc9c0c227157df463ac23ceface19d197beaa61bc8ed9eaca34b8017b088115d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:209f62fb7cb043a221ee64d635ca43cf4467b773d2e470e2fe593f1f8c1390c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variantc9c0c227157df463ac23ceface19d197beaa61bc8ed9eaca34b8017b088115d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74464251b84b83dd3cf20c67f85a4b65d7c8ad34c0617a7917f21ab746d22df9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def postcompEquiv {X Y Z : C}
    [W.RespectsIso] [W.IsCompatibleWithShift M]
    [HasSmallLocalizedShiftedHom.{w} W M X Y]
    [HasSmallLocalizedShiftedHom.{w} W M Y Z]
    [HasSmallLocalizedShiftedHom.{w} W M X Z]
    [HasSmallLocalizedShiftedHom.{w} W M Z Y]
    [HasSmallLocalizedShiftedHom.{w} W M Y Y]
    [HasSmallLocalizedShiftedHom.{w} W M Z Z]
    (f : Y ⟶ Z) (hf : W f) {a : M} :
    SmallShiftedHom.{w} W X Y a ≃ SmallShiftedHom.{w} W X Z a where
  toFun α := α.comp (mk₀ _ _ rfl f) (zero_add _)
  invFun β := β.comp (mk₀Inv _ rfl _ hf) (zero_add _)
  left_inv α := by simp [comp_assoc]
  right_inv β := by simp [comp_assoc]

variable {W} in
/-- The precomposition on the types `SmallShiftedHom W` with a morphism
which satisfies `W` is a bijection. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variantc9c0c227157df463ac23ceface19d197beaa61bc8ed9eaca34b8017b088115d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variantc9c0c227157df463ac23ceface19d197beaa61bc8ed9eaca34b8017b088115d8.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbcdcee0cdbd2e4ebc8498110925665c4cff8d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
