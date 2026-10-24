# criticalOneSidedMass_window_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7846cbc-cd33-7977-0efc-f9662bcca10e",
  "kind": "theorem",
  "lexical_name": "criticalOneSidedMass_window_integrable",
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
  "slug": "criticalonesidedmass-window-integrable--c4ce11a0b2885dd05cba3345",
  "source": {
    "blob": "d1e15acb826be614702567d80c5f574d85b754cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4ce11a0b2885dd05cba33451723cf5d70b4ba0101b001c1a44aad8595ee7b8d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7846cbc-cd33-7977-0efc-f9662bcca10e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalOneSidedMass_window_integrable (σ A : ℝ) (hA : 10 ≤ A) :
    IntegrableOn (fun u ↦ Real.exp (3 * u / 2) * max (σ * fullPeanoError u) 0)
      (Ioc (0 : ℝ) (A / 20)) := by
  have hA1 : 1 ≤ A := by linarith
  have hgi := (actualOneSidedPairing_integrable σ A hA1).mono_set
    (show Ioc (0 : ℝ) (A / 20) ⊆ Ioi 0 from fun _ hu ↦ hu.1)
  have he : Measurable fullPeanoError := by
    unfold fullPeanoError
    exact fullPeanoRaw_measurable.sub (by fun_prop)
  have hm : Measurable (fun u : ℝ ↦ Real.exp (3 * u / 2) * max (σ * fullPeanoError u) 0) :=
    (by fun_prop : Measurable (fun u : ℝ ↦ Real.exp (3 * u / 2))).mul
      ((measurable_const.mul he).max measurable_const)
  apply hgi.mono' hm.aestronglyMeasurable
  filter_upwards [self_mem_ae_restrict measurableSet_Ioc] with u hu
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (Real.exp_pos _).le (le_max_right _ _))]
  have hp := oneSided_window_pointwise σ A u hA hu.1.le hu.2
  have hn := mul_nonneg (Real.exp_pos (3 * u / 2)).le (le_max_right (σ * fullPeanoError u) 0)
  linarith

/-- Any constant controlling a whole one-sided source pairing must control its critical mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePeanoOneSidedMass/Variant7c4c4699e093519cef29ef30b4d9e3440cf1882540f06bc77140c48b7f4bda73.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e15acb826be614702567d80c5f574d85b754cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
