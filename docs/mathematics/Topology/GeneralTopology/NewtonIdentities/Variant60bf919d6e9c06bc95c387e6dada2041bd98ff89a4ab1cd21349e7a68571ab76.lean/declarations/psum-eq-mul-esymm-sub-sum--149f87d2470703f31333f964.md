# psum_eq_mul_esymm_sub_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1615407-eee7-72e4-5242-5d4c28c6ae1a",
  "kind": "theorem",
  "lexical_name": "psum_eq_mul_esymm_sub_sum",
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
  "slug": "psum-eq-mul-esymm-sub-sum--149f87d2470703f31333f964",
  "source": {
    "blob": "945ec68bc7f38ecfc16505c7ae16e6a5c5c6fe36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149f87d2470703f31333f9642b59e0c3730f2b2d799213a3806c6ff57a5f57be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1615407-eee7-72e4-5242-5d4c28c6ae1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psum_eq_mul_esymm_sub_sum (k : ℕ) (h : 0 < k) :
    psum σ R k = (-1) ^ (k + 1) * k * esymm σ R k -
    ∑ a ∈ antidiagonal k with a.1 ∈ Set.Ioo 0 k, (-1) ^ a.fst * esymm σ R a.1 * psum σ R a.2 := by
  simp only [Set.Ioo, Set.mem_setOf_eq, and_comm]
  have hesymm := mul_esymm_eq_sum σ R k
  rw [← (sum_filter_add_sum_filter_not {a ∈ antidiagonal k | a.fst < k}
    (fun a ↦ 0 < a.fst) (fun a ↦ (-1) ^ a.fst * esymm σ R a.fst * psum σ R a.snd))] at hesymm
  have sub_both_sides := congrArg (· - (-1 : MvPolynomial σ R) ^ (k + 1) *
    ∑ a ∈ {a ∈ antidiagonal k | a.fst < k} with 0 < a.fst,
    (-1) ^ a.fst * esymm σ R a.fst * psum σ R a.snd) hesymm
  simp only [left_distrib, add_sub_cancel_left] at sub_both_sides
  have sub_both_sides := congrArg ((-1 : MvPolynomial σ R) ^ (k + 1) * ·) sub_both_sides
  simp only [mul_sub_left_distrib, ← mul_assoc, ← pow_add, Even.neg_one_pow ⟨k + 1, rfl⟩, one_mul,
    not_le, lt_one_iff, filter_filter (fun a : ℕ × ℕ ↦ a.fst < k) (fun a ↦ ¬0 < a.fst)]
    at sub_both_sides
  have : {a ∈ antidiagonal k | a.fst < k ∧ ¬0 < a.fst} = {(0, k)} := by
    ext a
    rw [mem_filter, mem_antidiagonal, mem_singleton]
    refine ⟨?_, by rintro rfl; omega⟩
    rintro ⟨ha, ⟨_, ha0⟩⟩
    rw [← ha, Nat.eq_zero_of_not_pos ha0, zero_add, ← Nat.eq_zero_of_not_pos ha0]
  rw [this, sum_singleton] at sub_both_sides
  simp only [_root_.pow_zero, esymm_zero, mul_one, one_mul, filter_filter] at sub_both_sides
  exact sub_both_sides.symm

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945ec68bc7f38ecfc16505c7ae16e6a5c5c6fe36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
