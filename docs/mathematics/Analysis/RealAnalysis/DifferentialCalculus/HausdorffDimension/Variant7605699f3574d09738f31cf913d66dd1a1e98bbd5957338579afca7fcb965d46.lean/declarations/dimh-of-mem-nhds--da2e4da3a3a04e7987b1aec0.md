# dimH_of_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41228c6eae2545281b44433f8c1e65802e1dd31d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 545,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a19d8a78-fb1b-2850-a3dd-d1ab85125090",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf2261af-a874-50af-4e6a-c202cd00b01c",
  "kind": "theorem",
  "lexical_name": "dimH_of_mem_nhds",
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
  "slug": "dimh-of-mem-nhds--da2e4da3a3a04e7987b1aec0",
  "source": {
    "blob": "41228c6eae2545281b44433f8c1e65802e1dd31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 545,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da2e4da3a3a04e7987b1aec090d5a71a8ba7391eb52550a211f7701d18496fe8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf2261af-a874-50af-4e6a-c202cd00b01c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dimH_of_mem_nhds {x : E} {s : Set E} (h : s ∈ 𝓝 x) : dimH s = finrank ℝ E := by
  have e : E ≃L[ℝ] Fin (finrank ℝ E) → ℝ :=
    ContinuousLinearEquiv.ofFinrankEq (FiniteDimensional.finrank_fin_fun ℝ).symm
  rw [← e.dimH_image]
  refine le_antisymm ?_ ?_
  · exact (dimH_mono (subset_univ _)).trans_eq (dimH_univ_pi_fin _)
  · have : e '' s ∈ 𝓝 (e x) := by rw [← e.map_nhds_eq]; exact image_mem_map h
    rcases Metric.nhds_basis_ball.mem_iff.1 this with ⟨r, hr0, hr⟩
    simpa only [dimH_ball_pi_fin (e x) hr0] using dimH_mono hr
set_option linter.uppercaseLean3 false in
#align real.dimH_of_mem_nhds Real.dimH_of_mem_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41228c6eae2545281b44433f8c1e65802e1dd31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
