# sourceCorrector_deriv_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37f6ad00-8867-c740-944c-c6f468037938",
  "kind": "theorem",
  "lexical_name": "sourceCorrector_deriv_cancel",
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
  "slug": "sourcecorrector-deriv-cancel--b5427507ade568a8f9c9e158",
  "source": {
    "blob": "2977f78771e0daf2ff918aebcad63718b70eba73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variantaabf86b98633ddb6de82e7a8f67eaf73c3d79be42a41981acef59d089f12fe3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5427507ade568a8f9c9e1584ee46a9a5175146f4960b688b0cba8337093fe95",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variantaabf86b98633ddb6de82e7a8f67eaf73c3d79be42a41981acef59d089f12fe3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37f6ad00-8867-c740-944c-c6f468037938`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrector_deriv_cancel (A s : ℝ) (hA : 1 ≤ A) :
    deriv (sourceCorrector A) s - sourceCorrector A s =
      -Real.exp (s / 2) * (kapitzaKernel A s + 2 * sourceForcing A s) := by
  have hc : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) s) s :=
    ((sourceCorrelation_contDiff A (by linarith : 0 < A)).differentiable
      (by norm_num) s).hasDerivAt
  have h := hasDerivAt_corrector (hasDerivAt_weight s) hc (sourceForcing_hasDerivAt A s)
  change deriv (fun t => Real.exp (t / 2) *
    (sourceCorrelation explicitSecondDerivative A t + 4 * sourceForcing A t +
      8 * endpointSlope A)) s - _ = _
  rw [h.deriv]
  exact corrector_cancellation _ _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variantaabf86b98633ddb6de82e7a8f67eaf73c3d79be42a41981acef59d089f12fe3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variantaabf86b98633ddb6de82e7a8f67eaf73c3d79be42a41981acef59d089f12fe3d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2977f78771e0daf2ff918aebcad63718b70eba73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
