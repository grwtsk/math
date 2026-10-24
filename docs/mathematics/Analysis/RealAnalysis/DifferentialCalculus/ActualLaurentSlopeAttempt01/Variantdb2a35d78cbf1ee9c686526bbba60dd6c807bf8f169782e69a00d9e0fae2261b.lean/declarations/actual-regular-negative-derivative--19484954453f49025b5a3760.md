# actual_regular_negative_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2622c39-2691-5bc3-e1a2-7f30a5434ba9",
  "kind": "theorem",
  "lexical_name": "actual_regular_negative_derivative",
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
  "slug": "actual-regular-negative-derivative--19484954453f49025b5a3760",
  "source": {
    "blob": "f207dcdbe232d621cba6e1f87c9ce925bb386dba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19484954453f49025b5a3760bd1d6a7b7ea2a1a256a6d02bedb952f1a3970a42",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2622c39-2691-5bc3-e1a2-7f30a5434ba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_regular_negative_derivative :
    HasDerivAt regularNegativeLogDerivative
      ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1) 1 := by
  have h1 := (differentiable_riemannZeta₁ 1).hasDerivAt
  have h := actual_regular_zeta_second_derivative_at_one.neg.div h1 (by simp)
  convert h using 1
  · rfl
  · simp
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f207dcdbe232d621cba6e1f87c9ce925bb386dba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
