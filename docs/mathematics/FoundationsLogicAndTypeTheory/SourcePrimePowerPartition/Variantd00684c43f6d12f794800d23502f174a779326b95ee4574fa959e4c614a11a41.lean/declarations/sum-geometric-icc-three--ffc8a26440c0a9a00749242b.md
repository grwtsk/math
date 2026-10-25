# sum_geometric_Icc_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "009f91561f501843cc723e41e90f35a9a23cdaa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:205fd946-189e-4405-fcc4-cde6b4664d21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37d3608e-43a9-41af-da5b-0a87db38ad3b",
  "kind": "theorem",
  "lexical_name": "sum_geometric_Icc_three",
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
  "slug": "sum-geometric-icc-three--ffc8a26440c0a9a00749242b",
  "source": {
    "blob": "009f91561f501843cc723e41e90f35a9a23cdaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc8a26440c0a9a00749242baa1ba37c309a6615126c616ac7353aa63ddd8df1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37d3608e-43a9-41af-da5b-0a87db38ad3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_geometric_Icc_three (N : ℕ) (r : ℝ) (hr0 : 0 ≤ r) (hr : r < 1) :
    (∑ k ∈ Finset.Icc 3 N, r ^ k) ≤ r ^ 3 * (1 - r)⁻¹ := by
  have hs : (∑ k ∈ Finset.Icc 3 N, r ^ k) =
      ∑ j ∈ Finset.range (N - 2), r ^ (j + 3) := by
    apply Finset.sum_bij (fun k _ => k - 3)
    · intro k hk
      simp only [Finset.mem_Icc] at hk
      simp only [Finset.mem_range]
      omega
    · intro x hx y hy he
      simp only [Finset.mem_Icc] at hx hy
      omega
    · intro j hj
      refine ⟨j + 3, ?_, by omega⟩
      simp only [Finset.mem_range] at hj
      simp only [Finset.mem_Icc]
      omega
    · intro k hk
      have hk3 := (Finset.mem_Icc.mp hk).1
      congr 1
      omega
  have ht := (summable_geometric_of_lt_one hr0 hr).sum_le_tsum
    (Finset.range (N - 2)) (fun i _ => pow_nonneg hr0 i)
  rw [tsum_geometric_of_lt_one hr0 hr] at ht
  have hs' : (∑ j ∈ Finset.range (N - 2), r ^ (j + 3)) =
      r ^ 3 * ∑ j ∈ Finset.range (N - 2), r ^ j := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    rw [pow_add]
    ring
  rw [hs, hs']
  exact mul_le_mul_of_nonneg_left ht (pow_nonneg hr0 3)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `009f91561f501843cc723e41e90f35a9a23cdaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
