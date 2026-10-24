# exists_eq_setAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6295be232e94167e5402f139258de1bfc91ca6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 894,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9489b3c-2ad8-27b7-8a27-ecffdc3035ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecb91037-82a1-b1e3-3aa2-5c0847e283fd",
  "kind": "theorem",
  "lexical_name": "exists_eq_setAverage",
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
  "slug": "exists-eq-setaverage--96c9bd4f46b8a9a1c0b82292",
  "source": {
    "blob": "c6295be232e94167e5402f139258de1bfc91ca6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 908,
    "line": 894,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96c9bd4f46b8a9a1c0b82292e3aca8b2af9b7ebba0216fe7b7b77ff701e88c3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecb91037-82a1-b1e3-3aa2-5c0847e283fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–908.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_setAverage
    [TopologicalSpace α] {f : α → ℝ} (hs : IsConnected s) (hf : ContinuousOn f s)
    (hint : IntegrableOn f s μ) (hμfin : μ s ≠ ⊤) (hμ0 : μ s ≠ 0) :
    ∃ c ∈ s, f c = ⨍ x in s, f x ∂μ := by
  let ave := ⨍ x in s, f x ∂μ
  let S₁ : Set α := {x | x ∈ s ∧ f x ≤ ave}
  let S₂ : Set α := {x | x ∈ s ∧ ave ≤ f x}
  have hS₁ : 0 < μ S₁ := measure_le_setAverage_pos hμ0 hμfin hint
  have hS₂ : 0 < μ S₂ := measure_setAverage_le_pos hμ0 hμfin hint
  rcases nonempty_of_measure_ne_zero hS₁.ne' with ⟨c₁, hc₁⟩
  rcases nonempty_of_measure_ne_zero hS₂.ne' with ⟨c₂, hc₂⟩
  apply hs.isPreconnected.intermediate_value hc₁.1 hc₂.1 hf
  grind

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant759510dba5f8134ea4ccc03d434f5f55d3ca93ac855c8d72fc280f18a83aea42.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6295be232e94167e5402f139258de1bfc91ca6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
