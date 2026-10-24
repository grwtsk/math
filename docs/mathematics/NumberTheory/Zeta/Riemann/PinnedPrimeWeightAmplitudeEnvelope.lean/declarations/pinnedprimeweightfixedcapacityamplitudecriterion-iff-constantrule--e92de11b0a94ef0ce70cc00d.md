# pinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff_constantRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4e261f1-6281-3e10-2f50-07ef61891414",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff_constantRule",
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
  "slug": "pinnedprimeweightfixedcapacityamplitudecriterion-iff-constantrule--e92de11b0a94ef0ce70cc00d",
  "source": {
    "blob": "626068b47c529c01361f775183bde7e10478dfa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 283,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92de11b0a94ef0ce70cc00d84bb91555e59e48156d17cdfd38423c33fab06bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4e261f1-6281-3e10-2f50-07ef61891414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff_constantRule
    (C ρ : ℝ) :
    PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt C ρ ↔
      (0 ≤ C ∧
        PinnedPrimeWeightRuleDeficitCriterionAt
          (pinnedPrimeWeightConstantCapacityRule C) ρ) := by
  calc
    PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt C ρ ↔
        PinnedPrimeWeightFixedCapacityCriterionAt C ρ :=
      (pinnedPrimeWeightFixedCapacityCriterion_iff_amplitudeCriterion
        C ρ).symm
    _ ↔
        (0 ≤ C ∧
          PinnedPrimeWeightRuleDeficitCriterionAt
            (pinnedPrimeWeightConstantCapacityRule C) ρ) :=
      pinnedPrimeWeightFixedCapacityCriterion_iff_constantRule C ρ

/-- A fixed amplitude-envelope criterion supplies the already isolated
quadratic recurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `626068b47c529c01361f775183bde7e10478dfa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
