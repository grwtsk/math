# beyond_source_cutoff_shortPrefix_eq_mertensResidual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df957f872edb62e8047a1bbec97ae9478d746362",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/8318d80831d572a83ff5f77fe3d19ff01244c10c54c9611da6d8376beb5afb76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:158392c2-6abd-b947-5db5-f5a33962c88a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:798bf3b1-a095-e64d-bffe-9e13ea179adc",
  "kind": "theorem",
  "lexical_name": "beyond_source_cutoff_shortPrefix_eq_mertensResidual",
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
  "slug": "beyond-source-cutoff-shortprefix-eq-mertensresidual--3ba13a05759d05e233e55c2f",
  "source": {
    "blob": "df957f872edb62e8047a1bbec97ae9478d746362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant8318d80831d572a83ff5f77fe3d19ff01244c10c54c9611da6d8376beb5afb76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ba13a05759d05e233e55c2fc71173679d016214a957ca70bb957eebbb3f8351",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant8318d80831d572a83ff5f77fe3d19ff01244c10c54c9611da6d8376beb5afb76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:798bf3b1-a095-e64d-bffe-9e13ea179adc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beyond_source_cutoff_shortPrefix_eq_mertensResidual (A : ℝ) (hA : 1 ≤ A)
    (U : ℕ) (hNU : sourceKernelCutoff A ≤ U) :
    (∑ m ∈ Finset.Icc 1 U, vonMangoldt m * sourcePlainWeight A (m : ℝ)) =
      mertensResidual A := by
  have hU : 1 ≤ U := (vaughanCutoff_pos A hA).trans
    ((vaughanCutoff_le_sourceKernelCutoff A hA).trans hNU)
  have hs := short_add_signed_boundary_eq_mertensResidual A hA U hU
  rw [beyond_source_cutoff_signed_boundary_eq_zero A hA U hNU, add_zero] at hs
  exact hs

/-- The complete reconstruction is the owned prime moment; classification supplies no bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant8318d80831d572a83ff5f77fe3d19ff01244c10c54c9611da6d8376beb5afb76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourcePhysicalCutoffComplement/Variant8318d80831d572a83ff5f77fe3d19ff01244c10c54c9611da6d8376beb5afb76.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df957f872edb62e8047a1bbec97ae9478d746362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
