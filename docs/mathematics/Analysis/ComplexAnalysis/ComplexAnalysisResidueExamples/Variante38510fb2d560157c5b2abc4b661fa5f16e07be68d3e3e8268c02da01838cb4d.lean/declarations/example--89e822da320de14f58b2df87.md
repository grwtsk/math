# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:affff14de3b5c0d091809a2602daa481c0ed648134849f0e0c77579103bf2398",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--89e822da320de14f58b2df87",
  "source": {
    "blob": "a759356c35d8534170e59c8c740854e57a1ba91f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 52,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variante38510fb2d560157c5b2abc4b661fa5f16e07be68d3e3e8268c02da01838cb4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89e822da320de14f58b2df8752e3e4f32d2f3f780317b5229e35f084c9b711f0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variante38510fb2d560157c5b2abc4b661fa5f16e07be68d3e3e8268c02da01838cb4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:affff14de3b5c0d091809a2602daa481c0ed648134849f0e0c77579103bf2398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (z : ℂ) (n : ℕ) :
    ∃ R : ℝ, 0 < R ∧
      ∀ r : ℝ, 0 < r → r < R →
        Surface.Core.ComplexAnalysis.normalizedResidueCircleIntegral
          (logDeriv
            (fun w : ℂ ↦ (w - z) ^ n * Complex.exp w))
          z r = (n : ℂ) := by
  have hpow :
      AnalyticAt ℂ (fun w : ℂ ↦ (w - z) ^ n) z := by
    fun_prop
  have hexp : AnalyticAt ℂ Complex.exp z := analyticAt_cexp
  apply Surface.Core.ComplexAnalysis.logDeriv_smallCircle_normalizedIntegral_eq_order
    (hf := hpow.mul hexp)
  change analyticOrderAt
      ((fun w : ℂ ↦ (w - z) ^ n) * Complex.exp) z = n
  rw [analyticOrderAt_mul hpow hexp,
    analyticOrderAt_sub_pow z n,
    hexp.analyticOrderAt_eq_zero.mpr (Complex.exp_ne_zero z)]
  simp

end Surface.Audit.ComplexAnalysisResidueExamples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variante38510fb2d560157c5b2abc4b661fa5f16e07be68d3e3e8268c02da01838cb4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variante38510fb2d560157c5b2abc4b661fa5f16e07be68d3e3e8268c02da01838cb4d.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a759356c35d8534170e59c8c740854e57a1ba91f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
