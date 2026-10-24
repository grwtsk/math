# pinnedPrimeWeightFixedCapacityCriterion_to_constantRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f95d466a-b4a2-6b18-3f98-6d6e8693021e",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightFixedCapacityCriterion_to_constantRule",
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
  "slug": "pinnedprimeweightfixedcapacitycriterion-to-constantrule--49fb3ddc6ab00fc5652cb746",
  "source": {
    "blob": "5ce497796ef5b5baa088dde0755a6f53b8963e8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 247,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49fb3ddc6ab00fc5652cb746aa673e5245ab62370803ef03bf2be62d36329f6a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f95d466a-b4a2-6b18-3f98-6d6e8693021e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightFixedCapacityCriterion_to_constantRule
    {C ρ : ℝ}
    (hcriterion : PinnedPrimeWeightFixedCapacityCriterionAt C ρ) :
    PinnedPrimeWeightRuleDeficitCriterionAt
      (pinnedPrimeWeightConstantCapacityRule C) ρ := by
  intro η hη
  obtain ⟨R, hR, j₀, hstages⟩ := hcriterion.2 η hη
  refine ⟨C, hcriterion.1, R, hR, j₀, ?_⟩
  intro j hj
  refine ⟨?_, ?_⟩
  · intro v hv
    simp [pinnedPrimeWeightConstantCapacityRule,
      abs_of_nonneg hcriterion.1]
  · intro v hv
    change
      pinnedPrimeWeightCanonicalDeficit
          (dyadicScale j) C v ≤
        R * Real.rpow (dyadicScale j : ℝ)
          (quadraticThreshold ρ + η / 2)
    rw [pinnedPrimeWeightCanonicalDeficit_eq_boundedDeficit
      (dyadicScale j) hcriterion.1 v]
    exact hstages j hj v hv

/-- Conversely, the constant optimizer's deficit criterion is exactly the
fixed-capacity condition once `C ≥ 0` is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ce497796ef5b5baa088dde0755a6f53b8963e8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
