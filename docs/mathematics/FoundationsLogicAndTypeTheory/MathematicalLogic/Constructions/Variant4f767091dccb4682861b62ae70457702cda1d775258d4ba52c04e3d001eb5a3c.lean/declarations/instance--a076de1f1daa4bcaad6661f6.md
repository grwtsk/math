# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24a74bb9d505df9bb09f103da7ebb38e7ca4707245768ae94bb8c6b72d42fb56",
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
  "slug": "instance--a076de1f1daa4bcaad6661f6",
  "source": {
    "blob": "c25ac4ede22ac5dd022433ba1439b46afac2df0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a076de1f1daa4bcaad6661f63ae6a7f0f33ede12c7ca3f4de78256321b338d19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24a74bb9d505df9bb09f103da7ebb38e7ca4707245768ae94bb8c6b72d42fb56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : CStarModule A C⋆ᵐᵒᵈ(A, E × F) where
  inner x y := ⟪x.1, y.1⟫_A + ⟪x.2, y.2⟫_A
  inner_add_right {x y z} := by simpa using add_add_add_comm ..
  inner_self_nonneg := add_nonneg CStarModule.inner_self_nonneg CStarModule.inner_self_nonneg
  inner_self {x} := by
    refine ⟨fun h ↦ ?_, fun h ↦ by simp [h]⟩
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25ac4ede22ac5dd022433ba1439b46afac2df0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
