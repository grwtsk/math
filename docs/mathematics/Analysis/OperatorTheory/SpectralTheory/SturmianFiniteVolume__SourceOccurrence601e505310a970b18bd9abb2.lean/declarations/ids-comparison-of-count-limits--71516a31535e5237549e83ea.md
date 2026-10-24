# ids_comparison_of_count_limits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1987de7b-69c6-aa79-5824-3dffb250d2ca",
  "kind": "theorem",
  "lexical_name": "ids_comparison_of_count_limits",
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
  "slug": "ids-comparison-of-count-limits--71516a31535e5237549e83ea",
  "source": {
    "blob": "ba2acf4237b1f2c5cf7146a727d841a42dcdb030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 137,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71516a31535e5237549e83ea462d05d1be2323cb21a09984c9921d6f1b3db579",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence601e505310a970b18bd9abb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1987de7b-69c6-aa79-5824-3dffb250d2ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ids_comparison_of_count_limits (α V ξ : ℝ) (origin : ℤ) (free ids : ℝ → ℝ)
    (hfree : ∀ E, Tendsto (fun N => freeNormalizedCount N E) atTop (nhds (free E)))
    (hids : ∀ E, Tendsto (fun N => sturmianNormalizedCount N α V ξ origin E)
      atTop (nhds (ids E))) (E : ℝ) :
    free (E - max V 0) ≤ ids E ∧ ids E ≤ free (E - min V 0) := by
  constructor
  · exact le_of_tendsto_of_tendsto' (hfree _) (hids _) (fun N =>
      (finite_normalized_comparison N α V ξ origin E).1)
  · exact le_of_tendsto_of_tendsto' (hids _) (hfree _) (fun N =>
      (finite_normalized_comparison N α V ξ origin E).2)

/-- The gap-width consumer now uses the proved finite-volume comparison. Actual
count limits, free inverse cuts and an actual gap still have to be supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence601e505310a970b18bd9abb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2acf4237b1f2c5cf7146a727d841a42dcdb030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
