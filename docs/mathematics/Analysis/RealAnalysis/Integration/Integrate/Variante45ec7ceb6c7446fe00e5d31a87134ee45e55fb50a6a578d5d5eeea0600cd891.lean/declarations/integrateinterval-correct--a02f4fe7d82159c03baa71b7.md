# integrateInterval_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3d8275605f9330d9f6c605d3575ae249178b6eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 453,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5111868e-ebd5-e625-6563-7d3bb0263f09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8b65e88-b95f-f910-1e90-bd6efdbe7b75",
  "kind": "theorem",
  "lexical_name": "integrateInterval_correct",
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
  "slug": "integrateinterval-correct--a02f4fe7d82159c03baa71b7",
  "source": {
    "blob": "d3d8275605f9330d9f6c605d3575ae249178b6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 453,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a02f4fe7d82159c03baa71b70e8b17f005d941695064336a3541d54060d332b9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8b65e88-b95f-f910-1e90-bd6efdbe7b75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrateInterval_correct (e : Expr) (hsupp : ExprSupported e) (I : IntervalRat)
    (n : ℕ) (hn : 0 < n)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈
    integrateInterval e I n hn := by
  -- Decompose integral into sum over subintervals
  rw [integral_partition_sum e I n hn hInt]
  -- integrateInterval is sumIntervalBounds applied to uniformPartition
  unfold integrateInterval
  rw [sumIntervalBounds_eq_foldl_map]
  -- Express the Finset sum as a List sum
  have hsum_eq : ∑ k ∈ Finset.range n, ∫ x in (partitionPoints I n k)..(partitionPoints I n (k + 1)),
        Expr.eval (fun _ => x) e =
      (List.ofFn (fun k : Fin n => ∫ x in (partitionPoints I n k)..(partitionPoints I n (k + 1)),
        Expr.eval (fun _ => x) e)).sum := by
    simp only [Finset.sum_range, List.sum_ofFn]
  rw [hsum_eq]
  -- Create the lists
  set integrals := List.ofFn (fun k : Fin n =>
    ∫ x in (partitionPoints I n k)..(partitionPoints I n (k + 1)),
      Expr.eval (fun _ => x) e) with hintegrals_def
  set bounds := (uniformPartition I n hn).map (integrateInterval1 e) with hbounds_def
  -- Show lengths match
  have hlen : integrals.length = bounds.length := by
    simp [hintegrals_def, hbounds_def, uniformPartition]
  -- Each integral is bounded
  have hmem : ∀ i (hi : i < integrals.length), integrals[i] ∈ bounds[i]'(hlen ▸ hi) := by
    intro i hi
    simp only [hintegrals_def, List.length_ofFn] at hi
    simp only [hintegrals_def]
    rw [List.getElem_ofFn]
    simp only [hbounds_def, List.getElem_map]
    have hpart_eq : (uniformPartition I n hn)[i]'(by simp [uniformPartition]; exact hi) =
        partitionInterval I n hn i hi := by
      simp [partitionInterval, uniformPartition]
    rw [hpart_eq]
    exact integral_subinterval_bounded e hsupp I n hn i hi hInt
  -- Apply sum_mem_foldl_add
  exact sum_mem_foldl_add hlen hmem

/-! ### Adaptive integration -/

/-! #### Interval operations for error estimation -/

/-- Interval intersection (returns the tighter bound).
    If intervals don't overlap, returns the first one (conservative). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d8275605f9330d9f6c605d3575ae249178b6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
