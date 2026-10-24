# setLintegral_setLaverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a307304-f417-9a21-ff33-42fe7ada8cc7",
  "kind": "theorem",
  "lexical_name": "setLintegral_setLaverage",
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
  "slug": "setlintegral-setlaverage--0180f8d09cbc067d8a69c1c0",
  "source": {
    "blob": "7822a691deac583070e118cc6cad026ca3dca11e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variantdc610a41fc730d57d30a454780446a0e5c9979bcf93564e7b04ee457a5154e74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0180f8d09cbc067d8a69c1c02ca0d1cd0987b0ea9eda79ca7bdd34ef459b8e43",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variantdc610a41fc730d57d30a454780446a0e5c9979bcf93564e7b04ee457a5154e74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a307304-f417-9a21-ff33-42fe7ada8cc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setLintegral_setLaverage (μ : Measure α) [IsFiniteMeasure μ] (f : α → ℝ≥0∞) (s : Set α) :
    ∫⁻ _x in s, ⨍⁻ a in s, f a ∂μ ∂μ = ∫⁻ x in s, f x ∂μ :=
  lintegral_laverage _ _
#align measure_theory.set_lintegral_set_laverage MeasureTheory.setLintegral_setLaverage

end ENNReal

section NormedAddCommGroup

variable (μ)
variable {f g : α → E}

/-- Average value of a function `f` w.r.t. a measure `μ`, notation: `⨍ x, f x ∂μ`. It is defined as
`(μ univ).toReal⁻¹ • ∫ x, f x ∂μ`, so it is equal to zero if `f` is not integrable or if `μ` is an
infinite measure. If `μ` is a probability measure, then the average of any function is equal to its
integral.

For the average on a set, use `⨍ x in s, f x ∂μ` (defined as `⨍ x, f x ∂(μ.restrict s)`). For
average w.r.t. the volume, one can omit `∂volume`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variantdc610a41fc730d57d30a454780446a0e5c9979bcf93564e7b04ee457a5154e74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variantdc610a41fc730d57d30a454780446a0e5c9979bcf93564e7b04ee457a5154e74.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7822a691deac583070e118cc6cad026ca3dca11e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
