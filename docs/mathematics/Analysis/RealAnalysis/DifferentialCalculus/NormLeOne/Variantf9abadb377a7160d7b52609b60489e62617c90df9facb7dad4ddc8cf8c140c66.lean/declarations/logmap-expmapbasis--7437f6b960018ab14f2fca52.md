# logMap_expMapBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c18b2b1-a683-d9ab-a179-5887c28d1d23",
  "kind": "theorem",
  "lexical_name": "logMap_expMapBasis",
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
  "slug": "logmap-expmapbasis--7437f6b960018ab14f2fca52",
  "source": {
    "blob": "0aff246708fc36f4d017192c53af8418ba617fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 534,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7437f6b960018ab14f2fca52852c016581dbcfe029a88d18a994ef9c1a644abb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c18b2b1-a683-d9ab-a179-5887c28d1d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logMap_expMapBasis (x : realSpace K) :
    logMap (mixedSpaceOfRealSpace (expMapBasis x)) ∈
        ZSpan.fundamentalDomain ((basisUnitLattice K).ofZLatticeBasis ℝ (unitLattice K))
      ↔ ∀ w, w ≠ w₀ → x w ∈ Set.Ico 0 1 := by
  classical
  simp_rw [ZSpan.mem_fundamentalDomain, equivFinRank.forall_congr_left, Subtype.forall]
  refine forall₂_congr fun w hw ↦ ?_
  rw [expMapBasis_apply'', map_smul, logMap_real_smul (norm_expMapBasis_ne_zero _)
    (Real.exp_ne_zero _), expMapBasis_apply, logMap_expMap (by rw [← expMapBasis_apply,
    norm_expMapBasis, if_pos rfl, Real.exp_zero, one_pow]), Basis.equivFun_symm_apply,
    Fintype.sum_eq_add_sum_subtype_ne _ w₀, if_pos rfl, zero_smul, zero_add]
  conv_lhs =>
    enter [2, 1, 2, w, 2, i]
    rw [if_neg i.prop]
  simp_rw [sum_apply, ← sum_fn, map_sum, Pi.smul_apply, ← Pi.smul_def, map_smul,
    completeBasis_apply_of_ne, expMap_symm_apply, normAtAllPlaces_mixedEmbedding,
    ← logEmbedding_component, logEmbedding_fundSystem, Finsupp.coe_finset_sum, Finsupp.coe_smul,
    sum_apply, Pi.smul_apply, Basis.ofZLatticeBasis_repr_apply, Basis.repr_self,
    Finsupp.single_apply, EmbeddingLike.apply_eq_iff_eq, Int.cast_ite, Int.cast_one, Int.cast_zero,
    smul_ite, smul_eq_mul, mul_one, mul_zero, Fintype.sum_ite_eq']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variantf9abadb377a7160d7b52609b60489e62617c90df9facb7dad4ddc8cf8c140c66.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aff246708fc36f4d017192c53af8418ba617fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
