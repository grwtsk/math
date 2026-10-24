# mode_pole_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35632d34-3bd7-3611-fa98-63023d2b246b",
  "kind": "theorem",
  "lexical_name": "mode_pole_integrable",
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
  "slug": "mode-pole-integrable--127415882f8f5d2210ac3be9",
  "source": {
    "blob": "44fd227875533f400f80e6b30fdd4b968ffee655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:127415882f8f5d2210ac3be99d5f65337a75943989445ca0979b8afb94cd2447",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35632d34-3bd7-3611-fa98-63023d2b246b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mode_pole_integrable (A : ℝ) (i : Fin 5) :
    Integrable (fun x : ℝ => Real.exp (x/2) * normalizedMode A i x) := by
  have hc : Continuous (fun x : ℝ => Real.exp (x/2) *
      (Real.sqrt (modeWeight i / (2*A)) * mode i (x/A))) :=
    (by fun_prop : Continuous (fun x : ℝ => Real.exp (x/2))).mul
      (continuous_const.mul ((mode_continuous i).comp (continuous_id.div_const A)))
  have heq : (fun x : ℝ => Real.exp (x/2) * normalizedMode A i x) =
      (Icc (-A) A).indicator (fun x => Real.exp (x/2) *
        (Real.sqrt (modeWeight i / (2*A)) * mode i (x/A))) := by
    unfold normalizedMode
    funext x
    exact (Set.indicator_mul_right (Icc (-A) A) (fun x : ℝ => Real.exp (x/2))
      (fun x : ℝ => Real.sqrt (modeWeight i / (2*A)) * mode i (x/A))).symm
  rw [heq]
  exact integrable_zeroExtension _ hc (-A) A

/-- The pole is cancelled only after its actual source moment is proved zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44fd227875533f400f80e6b30fdd4b968ffee655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
