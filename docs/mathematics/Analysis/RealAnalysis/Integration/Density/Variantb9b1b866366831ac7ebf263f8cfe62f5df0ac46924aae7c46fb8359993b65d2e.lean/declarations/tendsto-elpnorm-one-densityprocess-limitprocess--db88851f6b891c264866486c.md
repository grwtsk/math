# tendsto_eLpNorm_one_densityProcess_limitProcess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c54d2a81aa55cbf10c367d7a98e79f17b509a10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d07e5eb5-7f8c-da95-44cb-5899acf33faf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8dc4d3b9-6fa7-88f7-27dd-62bf7d83d1a7",
  "kind": "lemma",
  "lexical_name": "tendsto_eLpNorm_one_densityProcess_limitProcess",
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
  "slug": "tendsto-elpnorm-one-densityprocess-limitprocess--db88851f6b891c264866486c",
  "source": {
    "blob": "5c54d2a81aa55cbf10c367d7a98e79f17b509a10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 392,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db88851f6b891c264866486c68970360ee59ff8d8cc14377316fee01aa652734",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dc4d3b9-6fa7-88f7-27dd-62bf7d83d1a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_eLpNorm_one_densityProcess_limitProcess (hκν : fst κ ≤ ν) [IsFiniteKernel ν]
    (a : α) {s : Set β} (hs : MeasurableSet s) :
    Tendsto (fun n ↦ eLpNorm ((fun x ↦ densityProcess κ ν n a x s)
      - (countableFiltration γ).limitProcess (fun n x ↦ densityProcess κ ν n a x s) (ν a))
      1 (ν a)) atTop (𝓝 0) := by
  refine Submartingale.tendsto_eLpNorm_one_limitProcess ?_ ?_
  · exact (martingale_densityProcess hκν a hs).submartingale
  · refine uniformIntegrable_of le_rfl one_ne_top ?_ ?_
    · exact fun n ↦ (measurable_densityProcess_right κ ν n a hs).aestronglyMeasurable
    · refine fun ε _ ↦ ⟨2, fun n ↦ ?_⟩
      suffices {x | 2 ≤ ‖densityProcess κ ν n a x s‖₊} = ∅ by simp [this]
      ext x
      simp only [mem_ofPred_eq, mem_empty_iff_false, iff_false, not_le]
      refine (?_ : _ ≤ (1 : ℝ≥0)).trans_lt one_lt_two
      rw [Real.nnnorm_of_nonneg (densityProcess_nonneg ..)]
      exact mod_cast (densityProcess_le_one hκν ..)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c54d2a81aa55cbf10c367d7a98e79f17b509a10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
