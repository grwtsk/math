# norm_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe3049e4-4100-1c1e-2acb-c29ed11c65d1",
  "kind": "theorem",
  "lexical_name": "norm_eq_zero_iff",
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
  "slug": "norm-eq-zero-iff--da0969a994a2ec11c52f12ad",
  "source": {
    "blob": "08f80e2ac0915662f4461e2b1a6395ceda0c4778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 165,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da0969a994a2ec11c52f12adea74684842588abefa2fcc92022f38746ec8f581",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe3049e4-4100-1c1e-2acb-c29ed11c65d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_zero_iff [IsDomain R] [IsDomain S] [Module.Free R S] [Module.Finite R S] {x : S} :
    norm R x = 0 ↔ x = 0 := by
  constructor
  let b := Module.Free.chooseBasis R S
  swap
  · rintro rfl; exact norm_zero
  · letI := Classical.decEq (Module.Free.ChooseBasisIndex R S)
    rw [norm_eq_matrix_det b, ← Matrix.exists_mulVec_eq_zero_iff]
    rintro ⟨v, v_ne, hv⟩
    rw [← b.equivFun.apply_symm_apply v, b.equivFun_symm_apply, b.equivFun_apply,
      leftMulMatrix_mulVec_repr] at hv
    refine (mul_eq_zero.mp (b.ext_elem fun i => ?_)).resolve_right (show ∑ i, v i • b i ≠ 0 from ?_)
    · simpa only [LinearEquiv.map_zero, Pi.zero_apply] using congr_fun hv i
    · contrapose! v_ne with sum_eq
      apply b.equivFun.symm.injective
      rw [b.equivFun_symm_apply, sum_eq, LinearEquiv.map_zero]
#align algebra.norm_eq_zero_iff Algebra.norm_eq_zero_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f80e2ac0915662f4461e2b1a6395ceda0c4778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
