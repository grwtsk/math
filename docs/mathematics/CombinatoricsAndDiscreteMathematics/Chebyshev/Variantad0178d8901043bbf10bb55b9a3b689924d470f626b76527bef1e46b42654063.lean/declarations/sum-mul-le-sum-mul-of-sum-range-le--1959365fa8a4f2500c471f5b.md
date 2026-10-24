# sum_mul_le_sum_mul_of_sum_range_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cb4cfa28e40dda627ca610aee01bb36945c7b1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30a50f3f-f438-4a4b-2b31-f95356cc1a5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e32e0637-27bb-005c-49df-109709be26ef",
  "kind": "theorem",
  "lexical_name": "sum_mul_le_sum_mul_of_sum_range_le",
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
  "slug": "sum-mul-le-sum-mul-of-sum-range-le--1959365fa8a4f2500c471f5b",
  "source": {
    "blob": "1cb4cfa28e40dda627ca610aee01bb36945c7b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1959365fa8a4f2500c471f5bacbc2f13eacfc8f6701fd2566ba211d6c04415fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e32e0637-27bb-005c-49df-109709be26ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mul_le_sum_mul_of_sum_range_le
    (hfc : ∀ k ≤ n, ∑ i ∈ range k, f i ≤ ∑ i ∈ range k, c i) (hg₀ : 0 ≤ g)
    (hg : AntitoneOn g (Set.Iio n)) :
    ∑ i ∈ range n, f i * g i ≤ ∑ i ∈ range n, c i * g i := by
  rw [← sub_nonneg, ← sum_sub_distrib]
  have hD (k) (hk : k ≤ n) : 0 ≤ ∑ i ∈ range k, (c i - f i) := by simpa [sub_nonneg] using hfc k hk
  simp_rw [← sub_mul, ← smul_eq_mul, sum_range_by_parts' (fun i ↦ c i - f i) g n, smul_eq_mul]
  rw [sub_nonneg]
  refine (sum_nonpos fun i hi ↦ ?_).trans (mul_nonneg (hD n le_rfl) (hg₀ (n - 1)))
  have hi' : i < n - 1 := mem_range.1 hi
  exact mul_nonpos_of_nonneg_of_nonpos (hD (i + 1) (by omega))
    (sub_nonpos.2 (hg (Set.mem_Iio.2 (by omega)) (Set.mem_Iio.2 (by omega)) (Nat.le_succ i)))

/-- **Abel's inequality** (one-sided upper form): if every partial sum of `f` up to `n` is at most
`M`, and `g` is nonnegative and antitone, then `∑ i ∈ range n, f i * g i ≤ M * g 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb4cfa28e40dda627ca610aee01bb36945c7b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
