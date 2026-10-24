# integratePartitionWithInv_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abdf0a33-76ac-fecc-d2d1-2a0f78c7b85e",
  "kind": "theorem",
  "lexical_name": "integratePartitionWithInv_correct",
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
  "slug": "integratepartitionwithinv-correct--cb016bdc0c8d4a6ab90a0cbd",
  "source": {
    "blob": "5ea4189e45a24c7ff8d1c90dd03058a17967d83f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2371,
    "line": 2315,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb016bdc0c8d4a6ab90a0cbd20789784d6d84388c470e7c12cafa04b674de745",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abdf0a33-76ac-fecc-d2d1-2a0f78c7b85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2315–2371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integratePartitionWithInv_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (n : ℕ) (hn : 0 < n) (bound : IntervalRat)
    (hsome : integratePartitionWithInv e I n = some bound)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈ bound := by
  -- Decompose integral into sum over subintervals
  rw [integral_partition_sum e I n hn hInt]
  -- Unpack the computed bounds list
  unfold integratePartitionWithInv at hsome
  simp only [hn, ↓reduceDIte] at hsome
  cases hbounds : collectBoundsWithInv e (uniformPartition I n hn) with
  | none =>
    simp [hbounds] at hsome
  | some bounds =>
    have hbound_eq : bounds.foldl IntervalRat.add (IntervalRat.singleton 0) = bound := by
      simpa [hbounds] using hsome
    -- Express the Finset sum as a List sum
    have hsum_eq : ∑ k ∈ Finset.range n,
        ∫ x in (partitionPoints I n k)..(partitionPoints I n (k + 1)),
          Expr.eval (fun _ => x) e =
        (List.ofFn (fun k : Fin n =>
          ∫ x in (partitionPoints I n k)..(partitionPoints I n (k + 1)),
            Expr.eval (fun _ => x) e)).sum := by
      simp only [Finset.sum_range, List.sum_ofFn]
    rw [hsum_eq, ← hbound_eq]
    -- Set integrals list and bounds list
    set integrals := List.ofFn (fun k : Fin n =>
      ∫ x in (partitionPoints I n k)..(partitionPoints I n (k + 1)),
        Expr.eval (fun _ => x) e) with hintegrals_def
    -- Show lengths match
    have hlen : integrals.length = bounds.length := by
      have hlen_bounds := collectBoundsWithInv_length e _ _ hbounds
      simp [hintegrals_def, uniformPartition] at hlen_bounds ⊢
      exact hlen_bounds.symm
    -- Each integral is bounded by the corresponding bound
    have hmem : ∀ i (hi : i < integrals.length),
        integrals[i] ∈ bounds[i]'(hlen ▸ hi) := by
      intro i hi
      have hi' : i < n := by
        simpa [hintegrals_def, List.length_ofFn] using hi
      simp only [hintegrals_def]
      rw [List.getElem_ofFn]
      have hparts :
          integrateInterval1WithInv e ((uniformPartition I n hn)[i]'(by
            simp [uniformPartition]; exact hi')) = some (bounds[i]'(hlen ▸ hi)) := by
        exact collectBoundsWithInv_getElem e _ _ hbounds i (by
          simpa [uniformPartition] using hi')
      have hpart_eq :
          (uniformPartition I n hn)[i]'(by simp [uniformPartition]; exact hi') =
            partitionInterval I n hn i hi' := by
        simp [partitionInterval, uniformPartition]
      rw [hpart_eq] at hparts
      exact integral_subinterval_bounded_withInv e hsupp I n hn i hi' _ hparts hInt
    -- Apply sum_mem_foldl_add
    exact sum_mem_foldl_add hlen hmem

end LeanCert.Validity.Integration
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean#L2315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea4189e45a24c7ff8d1c90dd03058a17967d83f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
