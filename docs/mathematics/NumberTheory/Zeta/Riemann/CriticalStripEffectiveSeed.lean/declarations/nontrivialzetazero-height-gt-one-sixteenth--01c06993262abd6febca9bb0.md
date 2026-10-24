# nontrivialZetaZero_height_gt_one_sixteenth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62a4b445-6a41-9426-2aa2-529a2c8248d5",
  "kind": "theorem",
  "lexical_name": "nontrivialZetaZero_height_gt_one_sixteenth",
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
  "slug": "nontrivialzetazero-height-gt-one-sixteenth--01c06993262abd6febca9bb0",
  "source": {
    "blob": "09b537df0518dd3a70d50cafa8d9959127ce1382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01c06993262abd6febca9bb02ae53afdbaa2dc4fd1ee9c942396df878112cf81",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62a4b445-6a41-9426-2aa2-529a2c8248d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivialZetaZero_height_gt_one_sixteenth {z : ℂ}
    (hz : NontrivialZetaZero z) :
    (1 / 16 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hheight : |z.im| ≤ (1 / 16 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  have hstrip := hz.mem_critical_strip
  by_cases hright : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_on_effective_right_seed hright hstrip.2.le hheight
      (poleNormalizedZeta_zero_of_target hz)
  · have hmir := hz.critical_reflection
    have hmre : (criticalReflection z).re = 1 - z.re := by simp [criticalReflection]
    have hmheight : |(criticalReflection z).im| ≤ (1 / 16 : ℝ) := by
      simpa [criticalReflection] using hheight
    have hmleft : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      rw [hmre]
      linarith [lt_of_not_ge hright]
    exact poleNormalized_nonzero_on_effective_right_seed hmleft
      hmir.mem_critical_strip.2.le hmheight (poleNormalizedZeta_zero_of_target hmir)

/-- A rational-height statement, not a claim about any positive natural shell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b537df0518dd3a70d50cafa8d9959127ce1382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
