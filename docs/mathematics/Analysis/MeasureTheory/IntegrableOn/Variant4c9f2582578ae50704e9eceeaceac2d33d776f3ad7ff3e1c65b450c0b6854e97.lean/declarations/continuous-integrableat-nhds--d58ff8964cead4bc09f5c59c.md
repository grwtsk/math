# Continuous.integrableAt_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8781a7f5-1c4f-6fa5-c360-f6a06ed14d18",
  "kind": "theorem",
  "lexical_name": "Continuous.integrableAt_nhds",
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
  "slug": "continuous-integrableat-nhds--d58ff8964cead4bc09f5c59c",
  "source": {
    "blob": "9b000638b28d1dbc542c5e2e53ca7b509e5bb560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 597,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d58ff8964cead4bc09f5c59c25a1c0fdcc094917201a7d762b55b27ed875e583",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8781a7f5-1c4f-6fa5-c360-f6a06ed14d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 597–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.integrableAt_nhds [TopologicalSpace α] [SecondCountableTopologyEither α E]
    [OpensMeasurableSpace α] {μ : Measure α} [IsLocallyFiniteMeasure μ] {f : α → E}
    (hf : Continuous f) (a : α) : IntegrableAtFilter f (𝓝 a) μ := by
  rw [← nhdsWithin_univ]
  exact hf.continuousOn.integrableAt_nhdsWithin MeasurableSet.univ (mem_univ a)
#align continuous.integrable_at_nhds Continuous.integrableAt_nhds

/-- If a function is continuous on an open set `s`, then it is strongly measurable at the filter
`𝓝 x` for all `x ∈ s` if either the source space or the target space is second-countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean#L597).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b000638b28d1dbc542c5e2e53ca7b509e5bb560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
