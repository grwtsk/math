# pinnedPrimeWeightSignedSourceCouplingCriterion_to_bertrandRatioCriterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b1a58ef-db97-1f20-da4b-b27963b6db5d",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightSignedSourceCouplingCriterion_to_bertrandRatioCriterion",
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
  "slug": "pinnedprimeweightsignedsourcecouplingcriterion-to-bertrandratiocriterion--e69c10e8c30341bd41db8bb5",
  "source": {
    "blob": "9102da31aa4c46d069e457878bac7e738ad6f353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 175,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e69c10e8c30341bd41db8bb5d90060c7d03f810b659afaf355d614aafa76c721",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b1a58ef-db97-1f20-da4b-b27963b6db5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightSignedSourceCouplingCriterion_to_bertrandRatioCriterion
    {rule : PinnedPrimeWeightSignedSourceRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightSignedSourceCouplingCriterionAt rule ρ) :
    PinnedPrimeWeightBertrandRatioCriterionAt ρ := by
  intro η hη
  obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨C, hC, R, hR, j₀, ?_⟩
  intro j hj v hv
  obtain ⟨hresponse, hresidual⟩ := hstages j hj
  exact
    rule.pointwise_to_bertrandRatioRequirement
      hC hv (hresponse v hv) (hresidual v hv)

/-- A fixed signed source supplier constructs the fixed Bertrand-ratio
criterion with the same coefficient budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9102da31aa4c46d069e457878bac7e738ad6f353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
