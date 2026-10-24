# actualXiCumulativeLaplace_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:135aa893-f75e-a4e7-7d43-8bc760f61b68",
  "kind": "theorem",
  "lexical_name": "actualXiCumulativeLaplace_integrableOn",
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
  "slug": "actualxicumulativelaplace-integrableon--dc192e0fa5f755c908640331",
  "source": {
    "blob": "d726895e10d10e1c0424455ba72ee07916326592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc192e0fa5f755c908640331b8ce41ded6a0d0c86228057ad647b2d622723a5c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:135aa893-f75e-a4e7-7d43-8bc760f61b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiCumulativeLaplace_integrableOn {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    IntegrableOn (fun t => actualXiAbsoluteCumulative t * Real.exp (-σ * t))
      (Ioi (Real.log 7)) := by
  apply integrableOn_Ioi_of_intervalIntegral_norm_bounded
    (M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * Real.log 7))
      (Real.log 7) (l := (atTop : Filter ℝ)) (b := fun b : ℝ => b)
  · intro b
    by_cases hb : Real.log 7 ≤ b
    · exact (cumulative_weight_intervalIntegrable hb σ).1
    · simp [Ioc_eq_empty_of_le (le_of_not_ge hb)]
  · exact tendsto_id
  · filter_upwards [eventually_ge_atTop (Real.log 7)] with b hb
    exact cumulative_weight_norm_bound hM hT₀ hσ haverage hb

/-- The actual upper Abel trace decays under the precise future average hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Varianta23147d55f6d56c23ace36a5a8b813e56bbce717cf10c2380031b1a57e62e282.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d726895e10d10e1c0424455ba72ee07916326592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
