# logFunc_integrable_of_critical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c8a67f6-37aa-32e6-f0f9-193e6241b78a",
  "kind": "theorem",
  "lexical_name": "logFunc_integrable_of_critical",
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
  "slug": "logfunc-integrable-of-critical--2fe1a3dd96b15e669333c401",
  "source": {
    "blob": "771c1bde77709db1ce3e991fb46ac794538a016e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fe1a3dd96b15e669333c40149c9fd52ddaf8f937221d678fa10004a10f3dcf1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c8a67f6-37aa-32e6-f0f9-193e6241b78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logFunc_integrable_of_critical {f : ℝ → ℂ}
    (hm : AEStronglyMeasurable f positiveMeasure) {ξ : ℝ}
    (hf : MellinConvergent f ((1:ℂ)/2+Complex.I*(ξ:ℂ))) :
    Integrable (logFunc f) := by
  have hi := (critical_integrable_iff f ξ).mp hf
  apply hi.norm.mono' ?_ (Eventually.of_forall (fun u => ?_))
  · exact (Complex.measurable_ofReal.comp (Real.measurable_exp.comp
      (measurable_id.div_const 2))).aestronglyMeasurable.mul
      (hm.comp_quasiMeasurePreserving exp_quasi)
  · rw [norm_mul,phase_norm,one_mul]

/-- True actual F class; independent integral compensator/normalization retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771c1bde77709db1ce3e991fb46ac794538a016e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
