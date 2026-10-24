# linearIndependent_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2585520-3a14-7913-0ff0-c62aff960db5",
  "kind": "theorem",
  "lexical_name": "linearIndependent_pow",
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
  "slug": "linearindependent-pow--b9c80641cbe9c40fa5980a7d",
  "source": {
    "blob": "793eb36b4907170e6f62daefcbad72b68b648852",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 435,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9c80641cbe9c40fa5980a7d6f2f12886babdaa16df2ccf007b10e83675c75b5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2585520-3a14-7913-0ff0-c62aff960db5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_pow [Algebra K S] (x : S) :
    LinearIndependent K fun i : Fin (minpoly K x).natDegree => x ^ (i : ℕ) := by
  by_cases IsIntegral K x; swap
  · rw [minpoly.eq_zero h, natDegree_zero]
    exact linearIndependent_empty_type
  refine' Fintype.linearIndependent_iff.2 fun g hg i => _
  simp only at hg
  simp_rw [Algebra.smul_def, ← aeval_monomial, ← map_sum] at hg
  apply (fun hn0 => (minpoly.degree_le_of_ne_zero K x (mt (fun h0 => ?_) hn0) hg).not_lt).mtr
  · simp_rw [← C_mul_X_pow_eq_monomial]
    exact (degree_eq_natDegree <| minpoly.ne_zero h).symm ▸ degree_sum_fin_lt _
  · apply_fun lcoeff K i at h0
    simp_rw [map_sum, lcoeff_apply, coeff_monomial, Fin.val_eq_val, Finset.sum_ite_eq'] at h0
    exact (if_pos <| Finset.mem_univ _).symm.trans h0
#align linear_independent_pow linearIndependent_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant1b287bd5fc8cc476c8a9132260b2e7220ac450dc3e1f9ffd2b3d80abee9b68e7.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793eb36b4907170e6f62daefcbad72b68b648852` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
