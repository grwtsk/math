# actual_negative_log_laurent_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4d04de5-8f18-a729-d63c-a25b4ef0ac2d",
  "kind": "theorem",
  "lexical_name": "actual_negative_log_laurent_slope",
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
  "slug": "actual-negative-log-laurent-slope--7a37b1d2a23914cf4e2af85f",
  "source": {
    "blob": "4ae40aea0b4cc190fd272eb6d4e15aea13c4288a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variant736eb4a5d830c3e847528c9e120491ec424ed9e1a279d44a66e5b342d2ea664c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a37b1d2a23914cf4e2af85f4bf428caa1c52e4c5effdb11215478544c84bf5a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variant736eb4a5d830c3e847528c9e120491ec424ed9e1a279d44a66e5b342d2ea664c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4d04de5-8f18-a729-d63c-a25b4ef0ac2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_log_laurent_slope :
    Tendsto (fun u : ℂ =>
      (- deriv riemannZeta (1 + u) / riemannZeta (1 + u) - u⁻¹ +
        (Real.eulerMascheroniConstant : ℂ)) / u)
      (𝓝[≠] 0)
      (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1)) := by
  have hshift : Tendsto (fun u : ℂ => 1 + u) (𝓝[≠] 0) (𝓝[≠] 1) := by
    change Filter.map (fun u : ℂ => 1 + u) (𝓝[≠] 0) ≤ 𝓝[≠] 1
    simp
  apply actual_regular_negative_slope.congr'
  filter_upwards [hshift.eventually actual_negative_log_regularization] with u hu
  simpa using congrArg (fun v : ℂ => (v + (Real.eulerMascheroniConstant : ℂ)) / u) hu

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variant736eb4a5d830c3e847528c9e120491ec424ed9e1a279d44a66e5b342d2ea664c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variant736eb4a5d830c3e847528c9e120491ec424ed9e1a279d44a66e5b342d2ea664c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ae40aea0b4cc190fd272eb6d4e15aea13c4288a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
