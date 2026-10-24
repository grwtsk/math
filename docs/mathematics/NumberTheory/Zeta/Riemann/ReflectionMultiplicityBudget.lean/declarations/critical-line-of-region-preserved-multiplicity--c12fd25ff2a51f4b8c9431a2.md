# critical_line_of_region_preserved_multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18a81f9f-bdbf-a07b-e01d-0a55f8d45c13",
  "kind": "theorem",
  "lexical_name": "critical_line_of_region_preserved_multiplicity",
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
  "slug": "critical-line-of-region-preserved-multiplicity--c12fd25ff2a51f4b8c9431a2",
  "source": {
    "blob": "e3495264419428f4bb2423bb2c2596f40b972688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c12fd25ff2a51f4b8c9431a2b5b18910748df4f1fff7901598ce821d19e2a9c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18a81f9f-bdbf-a07b-e01d-0a55f8d45c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_line_of_region_preserved_multiplicity (T : ℝ) (U : Set ℂ)
    (z : ZeroPoint) (lower upper : ℕ) (member : z ∈ regionHead T U)
    (stable : ∀ s ∈ U, criticalReflection s ∈ U)
    (preserved : multiplicity (reflected z) = multiplicity z)
    (lowerBound : lower ≤ multiplicity z)
    (countBound : regionCount T U ≤ upper) (strict : upper < 2 * lower) :
    z.1.re = 1 / 2 := by
  apply critical_line_of_region_common_lower T U z lower upper member stable lowerBound
  · simpa only [preserved] using lowerBound
  · exact countBound
  · exact strict

/-- The off-line obstruction retains unequal analytic weights before any upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3495264419428f4bb2423bb2c2596f40b972688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
