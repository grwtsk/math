# transformPolyCoeffs_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97ac4fb7-1241-2146-7677-2368f70d11d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d662935-4e34-535e-c444-97382116099d",
  "kind": "theorem",
  "lexical_name": "transformPolyCoeffs_correct",
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
  "slug": "transformpolycoeffs-correct--ac232ca16659a66f40833cf3",
  "source": {
    "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 655,
    "line": 579,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac232ca16659a66f40833cf31e0240ef8018922a3744dd2cca7a0a627d304337",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d662935-4e34-535e-c444-97382116099d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–655.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem transformPolyCoeffs_correct (p : Polynomial ℚ) (α β : ℚ) (t : ℝ) :
    let qs := transformPolyCoeffs p α β
    Polynomial.aeval ((α : ℝ) + t * ((β : ℝ) - (α : ℝ))) p =
    (Finset.range qs.length).sum (fun j => (qs.getD j 0 : ℝ) * t ^ j) := by
  intro qs
  let n := p.natDegree
  let w := (β : ℝ) - (α : ℝ)
  -- LHS = Σ_i a_i * (α + tw)^i = Σ_i a_i * (tw + α)^i
  rw [poly_aeval_eq_sum]
  -- Use add_pow with tw as first arg so j-th term has (tw)^j
  -- Step 1: expand (α + tw)^i via add_pow and pad inner sums
  have hexpand : ∀ i ∈ Finset.range (n + 1),
      (p.coeff i : ℝ) * ((α : ℝ) + t * ((β : ℝ) - (α : ℝ))) ^ i =
      (Finset.range (n + 1)).sum (fun j =>
        (p.coeff i : ℝ) * ((t * w) ^ j * (α : ℝ) ^ (i - j) * (Nat.choose i j : ℝ))) := by
    intro i hi
    simp only [Finset.mem_range] at hi
    rw [show (α : ℝ) + t * ((β : ℝ) - (α : ℝ)) = t * ((β : ℝ) - (α : ℝ)) + (α : ℝ) from by ring]
    rw [add_pow (t * ((β : ℝ) - (α : ℝ))) (α : ℝ) i]
    rw [Finset.mul_sum]
    apply Finset.sum_subset (Finset.range_mono (by omega))
    intro j hj1 hj2
    simp only [Finset.mem_range] at hj1 hj2
    push Not at hj2
    have : Nat.choose i j = 0 := Nat.choose_eq_zero_of_lt (by omega)
    simp [this]
  rw [Finset.sum_congr rfl hexpand]
  -- Now both sums over range(n+1), can exchange
  rw [Finset.sum_comm]
  -- Outer index is now j (power of tw), inner is i
  -- Σ_j Σ_i a_i * (tw)^j * α^(i-j) * C(i,j)
  -- = Σ_j (Σ_i a_i * C(i,j) * α^(i-j)) * (tw)^j
  -- = Σ_j (Σ_i a_i * C(i,j) * α^(i-j)) * w^j * t^j
  -- = Σ_j q_j * t^j  where q_j = (Σ_{i≥j} a_i * C(i,j) * α^(i-j) * w^j)
  rw [transformPolyCoeffs_length]
  apply Finset.sum_congr rfl
  intro j hj
  simp only [Finset.mem_range] at hj
  -- Show inner sum matches q_j * t^j
  -- Convert getD to getElem
  have hqs_len : qs.length = n + 1 := transformPolyCoeffs_length p α β
  have hj_lt : j < qs.length := by omega
  rw [List.getD_eq_getElem qs 0 hj_lt, transformPolyCoeffs_getElem p α β j (by omega)]
  -- RHS: (Σ_{k=0}^{n-j} a_{j+k} * C(j+k, j) * α^k * w^j) * t^j
  -- LHS: Σ_{i=0}^{n} a_i * ((tw)^j * α^(i-j) * C(i,j))
  -- Reindex LHS: set k = i - j, so i = j + k, k ranges 0..n-j
  -- Terms with i < j: C(i,j) = 0
  -- After reindex: Σ_{k=0}^{n-j} a_{j+k} * (tw)^j * α^k * C(j+k, j)
  --             = (Σ_{k=0}^{n-j} a_{j+k} * C(j+k, j) * α^k) * (tw)^j
  --             = (Σ_{k=0}^{n-j} a_{j+k} * C(j+k, j) * α^k) * w^j * t^j
  -- This matches RHS!

  -- Split sum: terms with i < j give 0 (C(i,j) = 0)
  rw [show n + 1 = j + (n + 1 - j) from by omega]
  rw [Finset.sum_range_add]
  have hzero : (Finset.range j).sum (fun i =>
      (p.coeff i : ℝ) * ((t * w) ^ j * (α : ℝ) ^ (i - j) * (Nat.choose i j : ℝ))) = 0 := by
    apply Finset.sum_eq_zero; intro i hi
    simp only [Finset.mem_range] at hi
    have : Nat.choose i j = 0 := Nat.choose_eq_zero_of_lt (by omega)
    simp [this]
  rw [hzero, zero_add]
  -- Now: Σ_{k=0}^{n-j} a_{j+k} * (tw)^j * α^((j+k)-j) * C(j+k, j) = qⱼ * t^j
  -- Simplify (j+k) - j = k
  -- Each term: a_{j+k} * (tw)^j * α^k * C(j+k,j) = cast(a_{j+k} * C(j+k,j) * α^k * w^j) * t^j
  push_cast [Finset.sum_mul]
  rw [show j + (n + 1 - j) - j = n + 1 - j from by omega]
  apply Finset.sum_congr rfl
  intro k hk
  simp only [Finset.mem_range] at hk
  simp only [show (j + k) - j = k from by omega, binomialRat, mul_pow,
    show w = (β : ℝ) - (α : ℝ) from rfl]
  push_cast
  ring

/-- The core Bernstein enclosure: for coefficients of length n+1 on [0,1],
    Σⱼ qⱼ tʲ lies in the Bernstein bounds interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f24d0e3165301f536c019c4032127a6854d8a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
