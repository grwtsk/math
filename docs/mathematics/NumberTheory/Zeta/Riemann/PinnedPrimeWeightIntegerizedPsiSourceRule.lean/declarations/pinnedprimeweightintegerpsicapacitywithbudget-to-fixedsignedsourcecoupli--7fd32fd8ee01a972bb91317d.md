# pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81cfb321-5854-b266-398e-91d1e33afa6a",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling",
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
  "slug": "pinnedprimeweightintegerpsicapacitywithbudget-to-fixedsignedsourcecoupli--7fd32fd8ee01a972bb91317d",
  "source": {
    "blob": "8b38b9d6436983921e3687a4d154a8b90c700bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 311,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fd32fd8ee01a972bb91317d6b84b217f81617255e4f10b460d3c2d9c0e282a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81cfb321-5854-b266-398e-91d1e33afa6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling
    {C ρ : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C) :
    PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt
      pinnedPrimeWeightIntegerPsiSourceRule C ρ := by
  have hrule :=
    (pinnedPrimeWeightIntegerPsiCapacity_iff_ruleResponseCapacity C).1 hcapacity
  refine ⟨hrule.1, ?_⟩
  intro η hη
  obtain ⟨R, hR, hresidual⟩ :=
    pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_stageEnvelope
      (ρ := ρ) (η := η) hρ hη
  obtain ⟨j₀, hresponse⟩ := hrule.2
  refine ⟨R, hR, j₀, ?_⟩
  intro j hj
  exact ⟨hresponse j hj, hresidual j⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b38b9d6436983921e3687a4d154a8b90c700bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
