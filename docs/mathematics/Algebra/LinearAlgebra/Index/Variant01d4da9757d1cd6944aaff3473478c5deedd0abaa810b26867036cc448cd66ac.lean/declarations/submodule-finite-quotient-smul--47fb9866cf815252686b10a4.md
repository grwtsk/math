# Submodule.finite_quotient_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baa2c2a9-b992-cc89-f4df-59bba04fa638",
  "kind": "lemma",
  "lexical_name": "Submodule.finite_quotient_smul",
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
  "slug": "submodule-finite-quotient-smul--47fb9866cf815252686b10a4",
  "source": {
    "blob": "cc61ea58c96a4ddf4582acd323f363820e078fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47fb9866cf815252686b10a402709f149f5fd2401d181c4d445984996c15d96a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baa2c2a9-b992-cc89-f4df-59bba04fa638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.finite_quotient_smul [Finite (R ⧸ I)] [Finite (M ⧸ N)] (hN : N.FG) :
    Finite (M ⧸ I • N) := by
  suffices (I • N).toAddSubgroup.FiniteIndex by
    exact (I • N).toAddSubgroup.finite_quotient_of_finiteIndex
  suffices Nat.card (N ⧸ (I • N).comap N.subtype) ≠ 0 by
    constructor
    rw [← AddSubgroup.relindex_mul_index
      (H := (I • N).toAddSubgroup) (K := N.toAddSubgroup) Submodule.smul_le_right]
    have inst : Finite (M ⧸ N.toAddSubgroup) := ‹_›
    exact mul_ne_zero this AddSubgroup.index_ne_zero_of_finite
  let e : (N ⧸ (I • N).comap N.subtype) ≃ₗ[R] (R ⧸ I) ⊗[R] N :=
    Submodule.quotEquivOfEq _ (I • (⊤ : Submodule R N)) (Submodule.map_injective_of_injective
      N.injective_subtype (by simp [Submodule.smul_le_right])) ≪≫ₗ
        (quotTensorEquivQuotSMul N I).symm
  rw [Nat.card_congr e.toEquiv]
  have : Module.Finite R N := Module.Finite.iff_fg.mpr hN
  have : Finite ((R ⧸ I) ⊗[R] N) := Module.finite_of_finite (R ⧸ I)
  exact Nat.card_pos.ne'

-- We have `hs` and `N` instead of using `span R s` in the goal to make it easier to use.
-- Usually we would like to bound the index of some abstract `I • N`, and we may construct `s` while
-- applying this lemma instead of having to provide it beforehand.
open TensorProduct in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc61ea58c96a4ddf4582acd323f363820e078fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
