# LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f700c40-ea9d-61f7-8040-38ed6b9d3a07",
  "kind": "lemma",
  "lexical_name": "LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered",
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
  "slug": "linearorderedcommgroupwithzero-discrete-iff-not-denselyordered--73732937219e91b8476177f3",
  "source": {
    "blob": "c8d89e44d4a0088e14edd4367f66a87ba4413f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 311,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73732937219e91b8476177f36c2b9ae6da3f6bdfb4b1762d25e4c1ec07219e3b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f700c40-ea9d-61f7-8040-38ed6b9d3a07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered (G : Type*)
    [LinearOrderedCommGroupWithZero G] [Nontrivial Gˣ] [MulArchimedean G] :
    Nonempty (G ≃*o ℤₘ₀) ↔ ¬ DenselyOrdered G := by
  rw [← denselyOrdered_units_iff,
      ← LinearOrderedCommGroup.discrete_iff_not_denselyOrdered]
  refine Nonempty.congr ?_ ?_ <;> intro f
  · refine ⟨MulEquiv.unzero (withZeroUnitsEquiv.trans f), ?_⟩
    intros
    simp only [MulEquiv.unzero, withZeroUnitsEquiv, MulEquiv.trans_apply,
      MulEquiv.coe_mk, Equiv.coe_fn_mk, recZeroCoe_coe, OrderMonoidIso.coe_mulEquiv,
      MulEquiv.symm_trans_apply, MulEquiv.symm_mk, Equiv.coe_fn_symm_mk, map_eq_zero, coe_ne_zero,
      ↓reduceDIte, unzero_coe, MulEquiv.toEquiv_eq_coe, Equiv.toFun_as_coe, EquivLike.coe_coe]
    rw [← Units.val_le_val, ← map_le_map_iff f, ← coe_le_coe, coe_unzero, coe_unzero]
  · refine ⟨withZeroUnitsEquiv.symm.trans (MulEquiv.withZero f), ?_⟩
    intros
    simp only [withZeroUnitsEquiv, MulEquiv.symm_mk, MulEquiv.withZero,
      MulEquiv.toMonoidHom_eq_coe, MulEquiv.toEquiv_eq_coe, Equiv.toFun_as_coe, EquivLike.coe_coe,
      MulEquiv.trans_apply, MulEquiv.coe_mk, Equiv.coe_fn_symm_mk, Equiv.coe_fn_mk]
    split_ifs <;>
    simp_all [← Units.val_le_val]

section WellFounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d89e44d4a0088e14edd4367f66a87ba4413f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
