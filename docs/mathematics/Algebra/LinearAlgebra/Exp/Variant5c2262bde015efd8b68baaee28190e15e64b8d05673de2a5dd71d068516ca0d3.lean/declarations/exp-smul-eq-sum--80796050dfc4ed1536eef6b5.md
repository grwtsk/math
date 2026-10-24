# exp_smul_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f05a3fe-57f9-b099-43ea-766d018f70ac",
  "kind": "theorem",
  "lexical_name": "exp_smul_eq_sum",
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
  "slug": "exp-smul-eq-sum--80796050dfc4ed1536eef6b5",
  "source": {
    "blob": "175ac44866ac33810397d3fe5cbc8f0111e23ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80796050dfc4ed1536eef6b5be17d6f3535dcbac02dfa5c49f5fcba1e8c5a300",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f05a3fe-57f9-b099-43ea-766d018f70ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_smul_eq_sum {M : Type*} [AddCommGroup M] [Module A M] [Module ℚ M] {a : A} {m : M}
    {k : ℕ} (h : (a ^ k) • m = 0) (hn : IsNilpotent a) :
    exp a • m = ∑ i ∈ range k, (i.factorial : ℚ)⁻¹ • (a ^ i) • m := by
  rcases le_or_lt (nilpotencyClass a) k with h₀ | h₀
  · simp_rw [exp_eq_sum (pow_eq_zero_of_le h₀ (pow_nilpotencyClass hn)), sum_smul, smul_assoc]
  rw [exp, sum_smul, ← sum_range_add_sum_Ico _ (Nat.le_of_succ_le h₀)]
  suffices ∑ i ∈ Ico k (nilpotencyClass a), ((i.factorial : ℚ)⁻¹ • (a ^ i)) • m = 0 by
    simp_rw [this, add_zero, smul_assoc]
  refine sum_eq_zero fun r h₂ ↦ ?_
  rw [smul_assoc, ← pow_sub_mul_pow a (mem_Ico.1 h₂).1, mul_smul, h, smul_zero, smul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exp/Variant5c2262bde015efd8b68baaee28190e15e64b8d05673de2a5dd71d068516ca0d3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `175ac44866ac33810397d3fe5cbc8f0111e23ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
