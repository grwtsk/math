# relationsSolutionEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:039dcf304b5cf96cb125bbdf2221cc4d4f689fc6051ea87ec1984d655b0002aa",
  "kind": "def",
  "lexical_name": "relationsSolutionEquiv",
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
  "slug": "relationssolutionequiv--b220bf3ae1d2d3460d469f3e",
  "source": {
    "blob": "3c056b6cb3ac65b7650d8e19264956401dcb5211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b220bf3ae1d2d3460d469f3e71b8e4f1f9355301078d08392645eb2464034f5f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:039dcf304b5cf96cb125bbdf2221cc4d4f689fc6051ea87ec1984d655b0002aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def relationsSolutionEquiv {ι : Type*} [DecidableEq ι] {M : Type*}
    [AddCommGroup M] [Module R M] :
    (relations R ι M).Solution N ≃ AlternatingMap R M N ι where
  toFun s :=
    { toFun := fun m ↦ s.var m
      map_update_add' := fun m i x y ↦ by
        have := s.linearCombination_var_relation (.add m i x y)
        dsimp at this ⊢
        rw [map_sub, map_add, Finsupp.linearCombination_single, one_smul,
          Finsupp.linearCombination_single, one_smul,
          Finsupp.linearCombination_single, one_smul, sub_eq_zero] at this
        convert this.symm -- `convert` is necessary due to the implementation of `MultilinearMap`
      map_update_smul' := fun m i r x ↦ by
        have := s.linearCombination_var_relation (.smul m i r x)
        dsimp at this ⊢
        rw [Finsupp.smul_single, smul_eq_mul, mul_one, map_sub,
          Finsupp.linearCombination_single, one_smul,
          Finsupp.linearCombination_single, sub_eq_zero] at this
        convert this
      map_eq_zero_of_eq' := fun v i j hm hij ↦
        by simpa using s.linearCombination_var_relation (.alt v i j hm hij) }
  invFun f :=
    { var := fun m ↦ f m
      linearCombination_var_relation := by
        rintro (⟨m, i, x, y⟩ | ⟨m, i, r, x⟩ | ⟨v, i, j, hm, hij⟩)
        · simp
        · simp
        · simpa using f.map_eq_zero_of_eq v hm hij }
  left_inv _ := rfl
  right_inv _ := rfl

/-- The universal property of the exterior power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c056b6cb3ac65b7650d8e19264956401dcb5211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
