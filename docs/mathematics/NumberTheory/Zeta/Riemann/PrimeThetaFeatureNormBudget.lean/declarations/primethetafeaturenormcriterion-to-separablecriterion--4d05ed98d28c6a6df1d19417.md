# primeThetaFeatureNormCriterion_to_separableCriterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d15fe568-9faa-492d-fd82-8289f892fe49",
  "kind": "theorem",
  "lexical_name": "primeThetaFeatureNormCriterion_to_separableCriterion",
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
  "slug": "primethetafeaturenormcriterion-to-separablecriterion--4d05ed98d28c6a6df1d19417",
  "source": {
    "blob": "3e63b032cf102e51e3c0a4f83068703c8fb81d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 270,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d05ed98d28c6a6df1d19417a61dc8a416d3a5f91bc849966b32cb5ed433145e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d15fe568-9faa-492d-fd82-8289f892fe49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeThetaFeatureNormCriterion_to_separableCriterion
    {ρ : ℝ}
    (hcriterion : PrimeThetaFeatureNormCriterionAt ρ) :
    PrimeThetaSeparableKernelCriterionAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj
  obtain ⟨stage, certificate, hbudget, hresidual, hsource⟩ :=
    hstages j hj
  refine ⟨stage, ?_, ?_, ?_⟩
  · intro v hv
    exact
      (stage.absoluteFactorMass_le_certifiedFeatureBudget
        certificate v).trans
        (hbudget v hv)
  · intro v hv
    exact hresidual v hv
  · intro v hv
    exact hsource v hv

/-- The norm-certified feature criterion supplies the existing nonlinear theta
recurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaFeatureNormBudget.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e63b032cf102e51e3c0a4f83068703c8fb81d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
