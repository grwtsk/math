# continuous_source_has_zero_pole_charge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fdb15f3-67dc-0820-3cc2-a002af621505",
  "kind": "theorem",
  "lexical_name": "continuous_source_has_zero_pole_charge",
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
  "slug": "continuous-source-has-zero-pole-charge--388245ec2279b9ef59f5769b",
  "source": {
    "blob": "28730a4b5d984ad1fe93f51be3520b84f7e822c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeparatedPoleCharges/Variant7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:388245ec2279b9ef59f5769b5670ed460369f2515f99dd1671ca943f225aeab4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeparatedPoleCharges/Variant7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fdb15f3-67dc-0820-3cc2-a002af621505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_source_has_zero_pole_charge {C : ℂ → ℂ} (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (s - 1) * C s) (𝓝[≠] 1) (𝓝 0) := by
  have hs : Tendsto (fun s : ℂ ↦ s - 1) (𝓝[≠] 1) (𝓝 0) := by
    have hc : ContinuousAt (fun s : ℂ ↦ s - 1) 1 :=
      continuousAt_id.sub continuousAt_const
    simpa using hc.tendsto.mono_left
      (nhdsWithin_le_nhds : (𝓝[≠] (1 : ℂ)) ≤ 𝓝 1)
  simpa using hs.mul (hC.tendsto.mono_left nhdsWithin_le_nhds)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeparatedPoleCharges/Variant7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeparatedPoleCharges/Variant7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28730a4b5d984ad1fe93f51be3520b84f7e822c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
