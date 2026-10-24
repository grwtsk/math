# preservesFiniteLimitsIffLanPreservesFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a42ff40780155df3203f752cd31fa295bc309431a6923f24a39016f7860fa888",
  "kind": "def",
  "lexical_name": "preservesFiniteLimitsIffLanPreservesFiniteLimits",
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
  "slug": "preservesfinitelimitsifflanpreservesfinitelimits--151f40617da42a80fe17f16b",
  "source": {
    "blob": "49bcf455c9e0c6e6fcddfcf5bc909228bf3ca0dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 405,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:151f40617da42a80fe17f16b1062928d0090b1bf16e6ed1899b97e53f0d3c176",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a42ff40780155df3203f752cd31fa295bc309431a6923f24a39016f7860fa888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def preservesFiniteLimitsIffLanPreservesFiniteLimits (F : C ⥤ D) :
    PreservesFiniteLimits F ≃ PreservesFiniteLimits (lan F.op : _ ⥤ Dᵒᵖ ⥤ Type u₁) where
  toFun _ := inferInstance
  invFun _ := by
    apply preservesFiniteLimitsOfPreservesFiniteLimitsOfSize.{u₁}
    intros; apply preservesLimitOfLanPreservesLimit
  left_inv x := by
    -- porting note: `cases x` and an `unfold` not necessary in lean 4.
    -- Remark : in mathlib3 we had `unfold preservesFiniteLimitsOfFlat`
    -- but there was no `preservesFiniteLimitsOfFlat` in the goal! Experimentation
    -- indicates that it was doing the same as `dsimp only`
    dsimp only [preservesFiniteLimitsOfPreservesFiniteLimitsOfSize]; congr
    -- porting note: next line wasn't necessary in lean 3
    apply Subsingleton.elim
  right_inv x := by
    -- cases x; -- porting note: not necessary in lean 4
    dsimp only [lanPreservesFiniteLimitsOfPreservesFiniteLimits,
      lanPreservesFiniteLimitsOfFlat,
      preservesFiniteLimitsOfPreservesFiniteLimitsOfSize]
    congr
    -- porting note: next line wasn't necessary in lean 3
    apply Subsingleton.elim
set_option linter.uppercaseLean3 false in
#align category_theory.preserves_finite_limits_iff_Lan_preserves_finite_limits CategoryTheory.preservesFiniteLimitsIffLanPreservesFiniteLimits

end SmallCategory

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant4999e82b8cd221353ae1bf25298c7692f7c4de2d7e7ae03093a40b80f21d3e4d.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49bcf455c9e0c6e6fcddfcf5bc909228bf3ca0dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
