# mem_bklnwSumAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4785bf6-dce0-3a31-a2a0-d99656798d24",
  "kind": "theorem",
  "lexical_name": "mem_bklnwSumAux",
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
  "slug": "mem-bklnwsumaux--e80b4f9250e4c9fefed0cacb",
  "source": {
    "blob": "e8e6964685d0107805620699734cb05073b18cfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 481,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e80b4f9250e4c9fefed0cacb68773835935ec10b312c40bc87f46f6c07b55368",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4785bf6-dce0-3a31-a2a0-d99656798d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_bklnwSumAux {x : ℝ} {I : IntervalDyadic} (hx : x ∈ I)
    (hpos : I.toIntervalRat.lo > 0) (current limit : Nat)
    (acc : IntervalDyadic) (partialSum : ℝ)
    (hcurrent : current ≥ 3)
    (hacc : partialSum ∈ acc)
    (cfg : BKLNWSumConfig)
    (hprec : cfg.precision ≤ 0 := by norm_num) :
    (partialSum + ∑ k ∈ Finset.Icc current limit, x ^ ((1 : ℝ) / k - 1 / 3))
      ∈ bklnwSumAux I current limit acc cfg := by
  -- Strong induction on termination measure (limit + 1 - current)
  generalize hm : limit + 1 - current = m
  induction m using Nat.strongRecOn generalizing current acc partialSum with
  | ind m ih =>
    -- Unfold bklnwSumAux one step
    unfold bklnwSumAux
    split_ifs with h
    · -- Case: current > limit, sum is empty, return acc
      simp only [Finset.Icc_eq_empty (by omega : ¬current ≤ limit), Finset.sum_empty, add_zero]
      exact hacc
    · -- Case: current ≤ limit, add term and recurse
      have hcur_le : current ≤ limit := Nat.le_of_not_gt h
      -- Split the sum: Σ_{k ∈ Icc current limit} = f(current) + Σ_{k ∈ Icc (current+1) limit}
      rw [Finset.sum_Icc_eq_add_sum_Ioc (fun k => x ^ ((1 : ℝ) / k - 1 / 3)) current limit hcur_le]
      rw [Finset.Ioc_eq_Icc_succ]
      -- Reassociate: partialSum + (term + rest) = (partialSum + term) + rest
      rw [← add_assoc]
      -- Key: show term membership
      have hterm := mem_bklnwTermDyadic hx hpos current hcurrent cfg hprec
      -- Show (partialSum + term) ∈ newAcc
      have hnewAcc : partialSum + x ^ ((1 : ℝ) / current - 1 / 3) ∈
          (IntervalDyadic.add acc (bklnwTermDyadic I current cfg)).roundOut cfg.precision := by
        apply IntervalDyadic.roundOut_contains
        exact IntervalDyadic.mem_add hacc hterm
      -- Apply induction hypothesis
      -- ih : ∀ m' < m, ∀ current' acc' partialSum',
      --        current' ≥ 3 → partialSum' ∈ acc' → limit + 1 - current' = m' → ...
      have hm' : limit + 1 - (current + 1) < m := by omega
      have hcur' : current + 1 ≥ 3 := by omega
      exact ih (limit + 1 - (current + 1)) hm' (current + 1) _ _ hcur' hnewAcc rfl

/-- Main correctness theorem: the reflective sum correctly bounds the mathematical sum.

    This is the "golden theorem" that connects the computable interval evaluator
    to the mathematical definition of the BKLNW sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variantd99627f712d0e128dcca0c7b0ac186712a4cf5c6315bb05360fc4479be02fecf.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e6964685d0107805620699734cb05073b18cfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
