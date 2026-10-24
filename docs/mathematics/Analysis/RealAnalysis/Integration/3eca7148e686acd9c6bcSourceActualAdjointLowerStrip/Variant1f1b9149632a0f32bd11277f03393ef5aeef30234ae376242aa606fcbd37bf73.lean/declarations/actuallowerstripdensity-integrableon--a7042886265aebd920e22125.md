# actualLowerStripDensity_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77a76090-0988-c094-c261-61950836ff8d",
  "kind": "theorem",
  "lexical_name": "actualLowerStripDensity_integrableOn",
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
  "slug": "actuallowerstripdensity-integrableon--a7042886265aebd920e22125",
  "source": {
    "blob": "d476e5d895c0b97b2ece89e8edbf93700742304f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3eca7148e686acd9c6bcSourceActualAdjointLowerStrip/Variant1f1b9149632a0f32bd11277f03393ef5aeef30234ae376242aa606fcbd37bf73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7042886265aebd920e22125a60deff6df93af57e5e5451c886f49add01c2832",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3eca7148e686acd9c6bcSourceActualAdjointLowerStrip/Variant1f1b9149632a0f32bd11277f03393ef5aeef30234ae376242aa606fcbd37bf73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77a76090-0988-c094-c261-61950836ff8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLowerStripDensity_integrableOn {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    IntegrableOn (actualLowerStripDensity A offset)
      (Icc (actualTimeLower A) (actualLowerStripUpper A w) ×ˢ
        Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A))
      (volume.prod volume) := by
  obtain ⟨hb, hl, hs⟩ := strip_orders hA hw
  have hp : ContinuousOn (actualAdjointTimePrimitive A offset)
      (Icc (actualTimeLower A) (actualLowerStripUpper A w)) := by
    simpa only [uIcc_of_le hb] using
      (actualAdjointTimePrimitive_absolutelyContinuous A offset _ hb).continuousOn
  have hq : ContinuousOn (actualAdjointColumnPrimitive A)
      (Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A)) := by
    simpa only [uIcc_of_le hs] using
      (actualAdjointColumnPrimitive_absolutelyContinuous (by linarith) hl hs).continuousOn
  have hc : ContinuousOn (actualLowerStripDensity A offset)
      (Icc (actualTimeLower A) (actualLowerStripUpper A w) ×ˢ
        Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A)) := by
    exact ((hp.comp continuous_fst.continuousOn (fun z hz => hz.1)).mul
      (hq.comp continuous_snd.continuousOn (fun z hz => hz.2))).mul
      (kernel_continuous (by linarith)).continuousOn
  exact hc.integrableOn_compact (isCompact_Icc.prod isCompact_Icc)

/-- Fubini gives genuine interval integrability of the literal inner integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3eca7148e686acd9c6bcSourceActualAdjointLowerStrip/Variant1f1b9149632a0f32bd11277f03393ef5aeef30234ae376242aa606fcbd37bf73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3eca7148e686acd9c6bcSourceActualAdjointLowerStrip/Variant1f1b9149632a0f32bd11277f03393ef5aeef30234ae376242aa606fcbd37bf73.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d476e5d895c0b97b2ece89e8edbf93700742304f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
