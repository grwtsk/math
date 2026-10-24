# pinnedPrimeWeightRuleDeficitCriterion_to_capacityCriterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2e6a0cf-6d15-b2e0-c9f0-8c0dc458fb00",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightRuleDeficitCriterion_to_capacityCriterion",
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
  "slug": "pinnedprimeweightruledeficitcriterion-to-capacitycriterion--4cd473ea86d17d089b567aa9",
  "source": {
    "blob": "5ce497796ef5b5baa088dde0755a6f53b8963e8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 215,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cd473ea86d17d089b567aa90daad114042327d79f8c147f121d50420c0f4621",
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

Occurrence: `result:e2e6a0cf-6d15-b2e0-c9f0-8c0dc458fb00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightRuleDeficitCriterion_to_capacityCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    PinnedPrimeWeightCapacityCriterionAt ρ := by
  intro η hη
  obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨C, hC, R, hR, j₀, ?_⟩
  intro j hj v hv
  obtain ⟨hcoefficient, hdeficit⟩ := hstages j hj
  exact
    (pinnedPrimeWeightBoundedDeficit_le_canonicalDeficit
      (hcoefficient v hv)).trans
      (hdeficit v hv)

/-- Stronger capacity criterion with one budget fixed before `eta`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ce497796ef5b5baa088dde0755a6f53b8963e8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
