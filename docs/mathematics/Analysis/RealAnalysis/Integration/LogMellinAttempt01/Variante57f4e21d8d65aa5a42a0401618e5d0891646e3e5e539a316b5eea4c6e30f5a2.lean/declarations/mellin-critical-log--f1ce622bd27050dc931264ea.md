# mellin_critical_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:341732a2-bf8d-b170-cc91-56c9cc419b18",
  "kind": "theorem",
  "lexical_name": "mellin_critical_log",
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
  "slug": "mellin-critical-log--f1ce622bd27050dc931264ea",
  "source": {
    "blob": "638e0d302e11fc34b4c0be8e084c38ae53edaf80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1ce622bd27050dc931264eadd58e2bb90423d1b06b06446674f9230849532a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:341732a2-bf8d-b170-cc91-56c9cc419b18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_critical_log (f : ℝ → ℂ) (ξ : ℝ) :
    mellin f ((1:ℂ)/2+Complex.I*(ξ:ℂ)) = angularIntegral (logFunc f) ξ := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn
    (fun x : ℝ => (x:ℂ)^((1:ℂ)/2+Complex.I*(ξ:ℂ)-1)*f x)
  simpa only [mellin,angularIntegral,image_univ,Real.range_exp,
    abs_of_pos (Real.exp_pos _),Complex.real_smul,smul_eq_mul,
    critical_jacobian,Measure.restrict_univ] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt01/Variante57f4e21d8d65aa5a42a0401618e5d0891646e3e5e539a316b5eea4c6e30f5a2.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638e0d302e11fc34b4c0be8e084c38ae53edaf80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
