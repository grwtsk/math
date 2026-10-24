# bernstein_enclosure_01

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3cc6695-895e-65c7-a46d-28404afecd40",
  "kind": "theorem",
  "lexical_name": "bernstein_enclosure_01",
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
  "slug": "bernstein-enclosure-01--37b600f1fe64d00e8c211f64",
  "source": {
    "blob": "6a776bf727e8916d67b87be3734405fd02bcef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 715,
    "line": 664,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37b600f1fe64d00e8c211f643875b89b745b846181cdc5430a32540d5220bf90",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3cc6695-895e-65c7-a46d-28404afecd40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–715.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bernstein_enclosure_01 (qs : List ℚ) (n : ℕ) (hn : qs.length = n + 1)
    (t : ℝ) (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    let bs := monomialToBernstein qs
    let bounds := listMinMax bs (bs[0]'(by rw [monomialToBernstein_length qs (by omega)]; omega))
    (bounds.1 : ℝ) ≤
    (Finset.range (n + 1)).sum (fun j => (qs.getD j 0 : ℝ) * t ^ j) ∧
    (Finset.range (n + 1)).sum (fun j => (qs.getD j 0 : ℝ) * t ^ j) ≤
    (bounds.2 : ℝ) := by
  -- Rewrite using bernstein_representation
  rw [bernstein_representation qs n hn t ht0 ht1]
  -- Now the sum is Σ_k b_k * B_{n,k}(t) which is a convex combination
  -- First convert getD to getElem for bs terms
  have hbs_len := monomialToBernstein_length qs (by omega)
  -- Convert from Finset.range to Finset.univ (Fin) for weighted_sum lemmas
  -- First, rewrite the sum using Fin.sum_univ_eq_sum_range
  have hbs := monomialToBernstein qs
  set bs := monomialToBernstein qs with hbs_def
  constructor
  · -- Lower bound
    -- Direct proof: bounds.1 ≤ each summand's coefficient, weights ≥ 0, sum weights = 1
    -- Transform the range sum to a Fin-based sum
    rw [← Fin.sum_univ_eq_sum_range]
    apply inf_le_weighted_sum
    · intro ⟨k, hk⟩
      exact bernstein_nonneg n k t ht0 ht1
    · have := bernstein_partition_of_unity n t
      rwa [← Fin.sum_univ_eq_sum_range] at this
    · intro ⟨k, hk⟩
      have hk_lt : k < bs.length := by rw [hbs_def, hbs_len]; omega
      have hgetD : bs.getD k 0 = bs[k]'hk_lt := List.getD_eq_getElem bs 0 hk_lt
      rw [hgetD]
      exact_mod_cast (listMinMax_bounds_elem bs
        (bs[0]'(by rw [hbs_def, hbs_len]; omega))
        (bs[k]'hk_lt)
        (List.getElem_mem hk_lt)).1
  · -- Upper bound
    rw [← Fin.sum_univ_eq_sum_range]
    apply weighted_sum_le_sup
    · intro ⟨k, hk⟩
      exact bernstein_nonneg n k t ht0 ht1
    · have := bernstein_partition_of_unity n t
      rwa [← Fin.sum_univ_eq_sum_range] at this
    · intro ⟨k, hk⟩
      have hk_lt : k < bs.length := by rw [hbs_def, hbs_len]; omega
      have hgetD : bs.getD k 0 = bs[k]'hk_lt := List.getD_eq_getElem bs 0 hk_lt
      rw [hgetD]
      exact_mod_cast (listMinMax_bounds_elem bs
        (bs[0]'(by rw [hbs_def, hbs_len]; omega))
        (bs[k]'hk_lt)
        (List.getElem_mem hk_lt)).2

/-- Helper: bernsteinCoeffsForDomain is always nonempty -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a776bf727e8916d67b87be3734405fd02bcef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
