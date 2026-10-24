# mutuallySingular_singularPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14e340e6-be7f-c44a-4722-71cfd1ac82c5",
  "kind": "theorem",
  "lexical_name": "mutuallySingular_singularPart",
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
  "slug": "mutuallysingular-singularpart--ca88439e2949b6a9bc2f63db",
  "source": {
    "blob": "9bb96252bae541dc36dfd476ae8e77bb951a6cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 158,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca88439e2949b6a9bc2f63db63934f4cee1d88bbd9c20fb540a7987c6b25a0dd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e340e6-be7f-c44a-4722-71cfd1ac82c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem mutuallySingular_singularPart (s : SignedMeasure α) (μ : Measure α) :
    singularPart s μ ⟂ᵥ μ.toENNRealVectorMeasure := by
  rw [mutuallySingular_ennreal_iff, singularPart_totalVariation,
    VectorMeasure.ennrealToMeasure_toENNRealVectorMeasure]
  exact (mutuallySingular_singularPart _ _).add_left (mutuallySingular_singularPart _ _)

end

/-- The Radon-Nikodym derivative between a signed measure and a positive measure.

`rnDeriv s μ` satisfies `μ.withDensityᵥ (s.rnDeriv μ) = s`
if and only if `s` is absolutely continuous with respect to `μ` and this fact is known as
`MeasureTheory.SignedMeasure.absolutelyContinuous_iff_withDensity_rnDeriv_eq`
and can be found in `Mathlib/MeasureTheory/Measure/Decomposition/RadonNikodym.lean`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bb96252bae541dc36dfd476ae8e77bb951a6cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
