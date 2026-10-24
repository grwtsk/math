# integral_mem_bound_dyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "503299e995e73d1768f22a63316db017b5f817b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24517dd3-b2da-8c97-6853-fd4db3ad1dfc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb953999-e34f-8926-bb6e-14b421d8d4d5",
  "kind": "theorem",
  "lexical_name": "integral_mem_bound_dyadic",
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
  "slug": "integral-mem-bound-dyadic--b40b5273ed31c5e76fcfa723",
  "source": {
    "blob": "503299e995e73d1768f22a63316db017b5f817b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b40b5273ed31c5e76fcfa723a3567a6114ce7d01c6e966a1460d4fb393d8a680",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb953999-e34f-8926-bb6e-14b421d8d4d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_mem_bound_dyadic (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (n : ℕ) (hn : 0 < n)
    (cfg : DyadicConfig) (hprec : cfg.precision ≤ 0)
    (hdomall : partitionDomainValid e I n hn cfg)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) MeasureTheory.volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈
      integratePartitionDyadic e I n hn cfg := by
  rw [integral_partition_sum e I n hn hInt]
  set integrals := List.ofFn (fun k : Fin n =>
    ∫ x in (partitionPoints I n k)..(partitionPoints I n (k + 1)),
      Expr.eval (fun _ => x) e) with hintegrals_def
  set bounds := collectBoundsDyadic e (uniformPartition I n hn) cfg with hbounds_def
  have hlen : integrals.length = bounds.length := by
    simp [hintegrals_def, hbounds_def, collectBoundsDyadic, uniformPartition]
  have hmem_each : ∀ i (hi : i < integrals.length),
      integrals[i] ∈ bounds[i]'(hlen ▸ hi) := by
    intro i hi
    have hi' : i < n := by simpa [hintegrals_def] using hi
    simp only [hintegrals_def]
    rw [List.getElem_ofFn]
    rw [partitionPoints_eq_lo I n hn i hi', partitionPoints_eq_hi I n hn i hi']
    have hpart_eq : bounds[i]'(hlen ▸ hi) =
        integrateInterval1Dyadic e (partitionInterval I n hn i hi') cfg := by
      simp [hbounds_def, collectBoundsDyadic, partitionInterval, uniformPartition]
    rw [hpart_eq]
    apply integrateInterval1Dyadic_correct e hsupp _ cfg hprec
    · exact hdomall i hi'
    · exact intervalIntegrable_on_partition e I n hn hInt i hi'
  have hsum_eq : ∑ k ∈ Finset.range n,
      ∫ x in (partitionPoints I n k)..(partitionPoints I n (k + 1)),
        Expr.eval (fun _ => x) e = integrals.sum := by
    simp only [hintegrals_def, Finset.sum_range, List.sum_ofFn]
  rw [hsum_eq]
  exact sum_mem_foldl_add hlen hmem_each

/-- Bridge theorem (lower bound) using the combined checker. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `503299e995e73d1768f22a63316db017b5f817b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
