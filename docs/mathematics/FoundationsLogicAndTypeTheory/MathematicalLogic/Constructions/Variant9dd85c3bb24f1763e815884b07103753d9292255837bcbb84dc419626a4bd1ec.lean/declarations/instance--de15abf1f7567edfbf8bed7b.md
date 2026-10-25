# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d03678d0c66e5042f6792f72b7ed574fdf8979a808e0e2a029d7b799de4856d2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--de15abf1f7567edfbf8bed7b",
  "source": {
    "blob": "04583e7b16719d500af3558c6e248eb74b6a61b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de15abf1f7567edfbf8bed7bf6023bb6c26d75c7072c21e662bc1f55248a7bba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d03678d0c66e5042f6792f72b7ed574fdf8979a808e0e2a029d7b799de4856d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : CStarModule A C⋆ᵐᵒᵈ(A, E × F) where
  inner x y := ⟪x.1, y.1⟫_A + ⟪x.2, y.2⟫_A
  inner_add_right {x y z} := by simpa using add_add_add_comm ..
  inner_self_nonneg := add_nonneg CStarModule.inner_self_nonneg CStarModule.inner_self_nonneg
  inner_self {x} := by
    refine ⟨fun h ↦ ?_, fun h ↦ by simp [h, CStarModule.inner_zero_left]⟩
    apply equiv A (E × F) |>.injective
    ext
    · refine inner_self.mp <| le_antisymm ?_ (inner_self_nonneg (A := A))
      exact le_add_of_nonneg_right CStarModule.inner_self_nonneg |>.trans_eq h
    · refine inner_self.mp <| le_antisymm ?_ (inner_self_nonneg (A := A))
      exact le_add_of_nonneg_left CStarModule.inner_self_nonneg |>.trans_eq h
  inner_op_smul_right := by simp [mul_add]
  inner_smul_right_complex := by simp [smul_add]
  star_inner x y := by simp
  norm_eq_sqrt_norm_inner_self {x} := by with_reducible_and_instances rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04583e7b16719d500af3558c6e248eb74b6a61b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
