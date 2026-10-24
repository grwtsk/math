# angleBaseUnit_le_arcsin_perturbation_div_reducedGap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd51b7e8-d4ee-26ea-845d-58cfbe776bc2",
  "kind": "theorem",
  "lexical_name": "angleBaseUnit_le_arcsin_perturbation_div_reducedGap",
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
  "slug": "anglebaseunit-le-arcsin-perturbation-div-reducedgap--1972b71c55f076dc96cd3330",
  "source": {
    "blob": "de1b6533ca5944bc38e85eb0e1f5bd351911ce5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 410,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1972b71c55f076dc96cd3330a7355c2d1f2c53c7ef922b48eb3434e94fd8efb6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd51b7e8-d4ee-26ea-845d-58cfbe776bc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angleBaseUnit_le_arcsin_perturbation_div_reducedGap
    (A V : H →L[ℂ] H) (x y : H) (lambda mu delta : ℝ)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1)
    (hA : A.toLinearMap.IsSymmetric)
    (hAx : A x = (lambda : ℂ) • x)
    (hBy : (A + V) y = (mu : ℂ) • y)
    (hdelta : 0 < delta) (hgap : ReducedGapAt A x mu delta) :
    ProjectiveFubiniStudy.angleBaseUnit x y ≤ Real.arcsin (‖V‖ / delta) := by
  have hnonneg : 0 ≤ ProjectiveFubiniStudy.angleBaseUnit x y := Real.arccos_nonneg _
  have hlower : -(Real.pi / 2) ≤ ProjectiveFubiniStudy.angleBaseUnit x y := by
    have hpi : 0 ≤ Real.pi / 2 := by positivity
    linarith
  have hupper : ProjectiveFubiniStudy.angleBaseUnit x y ≤ Real.pi / 2 := by
    rw [ProjectiveFubiniStudy.angleBaseUnit, Real.arccos_le_pi_div_two]
    exact norm_nonneg _
  calc
    ProjectiveFubiniStudy.angleBaseUnit x y =
        Real.arcsin (Real.sin (ProjectiveFubiniStudy.angleBaseUnit x y)) :=
      (Real.arcsin_sin hlower hupper).symm
    _ ≤ Real.arcsin (‖V‖ / delta) := Real.arcsin_le_arcsin
      (sin_angleBaseUnit_le_perturbation_div_reducedGap
        A V x y lambda mu delta hx hy hA hAx hBy hdelta hgap)

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1b6533ca5944bc38e85eb0e1f5bd351911ce5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
