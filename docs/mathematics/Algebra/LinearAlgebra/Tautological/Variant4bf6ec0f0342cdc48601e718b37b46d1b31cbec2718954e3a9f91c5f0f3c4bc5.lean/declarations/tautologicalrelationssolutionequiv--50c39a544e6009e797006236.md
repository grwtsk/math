# tautologicalRelationsSolutionEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32b072758225771685c2d48dfcfc867afa04f38f704ce145350326d832974366",
  "kind": "def",
  "lexical_name": "tautologicalRelationsSolutionEquiv",
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
  "slug": "tautologicalrelationssolutionequiv--50c39a544e6009e797006236",
  "source": {
    "blob": "366f05371c06865315c52a863ce3eedc046dc8ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50c39a544e6009e797006236c8998573cd0c5c2a39476f64f84f1dc823a45b0d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32b072758225771685c2d48dfcfc867afa04f38f704ce145350326d832974366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tautologicalRelationsSolutionEquiv {N : Type w} [AddCommGroup N] [Module A N] :
    (tautologicalRelations A M).Solution N ≃ (M →ₗ[A] N) where
  toFun s :=
    { toFun := s.var
      map_add' := fun m₁ m₂ ↦ by
        symm
        rw [← sub_eq_zero]
        simpa using s.linearCombination_var_relation (.add m₁ m₂)
      map_smul' := fun a m ↦ by
        symm
        rw [← sub_eq_zero]
        simpa using s.linearCombination_var_relation (.smul a m) }
  invFun f :=
    { var := f
      linearCombination_var_relation := by rintro (_ | _) <;> simp }
  left_inv _ := rfl
  right_inv _ := rfl

/-- The obvious solution of `tautologicalRelations A M` in the module `M`. -/
@[simps! var]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tautological/Variant4bf6ec0f0342cdc48601e718b37b46d1b31cbec2718954e3a9f91c5f0f3c4bc5.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `366f05371c06865315c52a863ce3eedc046dc8ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
