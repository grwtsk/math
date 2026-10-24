# integral_piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05cda93d-dbec-5eb1-f707-4d716f6e1fd3",
  "kind": "theorem",
  "lexical_name": "integral_piecewise",
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
  "slug": "integral-piecewise--d8da287280975f39baf8a851",
  "source": {
    "blob": "7c73e89f84ce475e59e63393bd479f8e5c8ce97d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8da287280975f39baf8a8510f6927988eeb945a2cb0c608c5a4bd7c3c611ce8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05cda93d-dbec-5eb1-f707-4d716f6e1fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_piecewise [DecidablePred (· ∈ s)]
    (hs : MeasurableSet s) (hf : μ.IntegrableOn f s) (hg : μ.IntegrableOn g sᶜ) :
    ∫ᵛ x, s.piecewise f g x ∂[B; μ] = ∫ᵛ x in s, f x ∂[B; μ] + ∫ᵛ x in sᶜ, g x ∂[B; μ] := by
  rw [← Set.indicator_add_compl_eq_piecewise,
    integral_add (hf.integrable_indicator hs) (hg.integrable_indicator hs.compl),
    integral_indicator hs, integral_indicator hs.compl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c73e89f84ce475e59e63393bd479f8e5c8ce97d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
