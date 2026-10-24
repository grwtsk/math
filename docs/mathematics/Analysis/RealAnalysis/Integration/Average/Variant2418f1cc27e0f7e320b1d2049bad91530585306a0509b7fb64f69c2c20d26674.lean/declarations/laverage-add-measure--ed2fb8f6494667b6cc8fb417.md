# laverage_add_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06b6cf5c-8716-3d7f-1388-5753ce99be28",
  "kind": "theorem",
  "lexical_name": "laverage_add_measure",
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
  "slug": "laverage-add-measure--ed2fb8f6494667b6cc8fb417",
  "source": {
    "blob": "b388584b2fede8567659de8133fa8d6b8bf556b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant2418f1cc27e0f7e320b1d2049bad91530585306a0509b7fb64f69c2c20d26674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2fb8f6494667b6cc8fb417c8384be2dde7cc3b41496839370a8d259a47f7fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variant2418f1cc27e0f7e320b1d2049bad91530585306a0509b7fb64f69c2c20d26674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06b6cf5c-8716-3d7f-1388-5753ce99be28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laverage_add_measure :
    ⨍⁻ x, f x ∂(μ + ν) =
      μ univ / (μ univ + ν univ) * ⨍⁻ x, f x ∂μ + ν univ / (μ univ + ν univ) * ⨍⁻ x, f x ∂ν := by
  by_cases hμ : IsFiniteMeasure μ; swap
  · rw [not_isFiniteMeasure_iff] at hμ
    simp [laverage_eq, hμ]
  by_cases hν : IsFiniteMeasure ν; swap
  · rw [not_isFiniteMeasure_iff] at hν
    simp [laverage_eq, hν]
  simp only [← ENNReal.mul_div_right_comm, measure_mul_laverage, ← ENNReal.add_div,
    ← lintegral_add_measure, ← Measure.add_apply, ← laverage_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variant2418f1cc27e0f7e320b1d2049bad91530585306a0509b7fb64f69c2c20d26674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant2418f1cc27e0f7e320b1d2049bad91530585306a0509b7fb64f69c2c20d26674.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b388584b2fede8567659de8133fa8d6b8bf556b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
