# interactionOperator_selfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dea9cfcf-d624-f514-1c5a-1911f1f2121d",
  "kind": "theorem",
  "lexical_name": "interactionOperator_selfAdjoint",
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
  "slug": "interactionoperator-selfadjoint--35ba85b8a8a1cbd9f17a81a6",
  "source": {
    "blob": "695045ae8ebe63c9041be9a02a6912f701f01e56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35ba85b8a8a1cbd9f17a81a609ae9fd22d199a4199f779c58de7861de08dd4be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dea9cfcf-d624-f514-1c5a-1911f1f2121d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interactionOperator_selfAdjoint [CompleteSpace H] :
    IsSelfAdjoint (interactionOperator (H := H)) := by
  apply ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.2
  intro x y
  change ⟪(1 / 2 : ℂ) • pairSwap x, y⟫_ℂ =
    ⟪x, (1 / 2 : ℂ) • pairSwap y⟫_ℂ
  simp only [inner_smul_left, inner_smul_right, WithLp.prod_inner_apply]
  change (star (1 / 2 : ℂ)) * (⟪x.snd, y.fst⟫_ℂ + ⟪x.fst, y.snd⟫_ℂ) =
    (1 / 2 : ℂ) * (⟪x.fst, y.snd⟫_ℂ + ⟪x.snd, y.fst⟫_ℂ)
  simp
  ring

/-- The real quadratic value of a bounded operator on its actual state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695045ae8ebe63c9041be9a02a6912f701f01e56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
