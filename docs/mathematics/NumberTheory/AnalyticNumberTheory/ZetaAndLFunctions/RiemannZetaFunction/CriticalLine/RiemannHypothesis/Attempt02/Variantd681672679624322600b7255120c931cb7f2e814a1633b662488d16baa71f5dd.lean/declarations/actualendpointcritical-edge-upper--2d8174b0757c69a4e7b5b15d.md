# actualEndpointCritical_edge_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e39247c3-cab3-401e-554b-c60c05b57069",
  "kind": "theorem",
  "lexical_name": "actualEndpointCritical_edge_upper",
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
  "slug": "actualendpointcritical-edge-upper--2d8174b0757c69a4e7b5b15d",
  "source": {
    "blob": "e6a5cc411494b3410bbc72df82a3db7122cfda4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 107,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantd681672679624322600b7255120c931cb7f2e814a1633b662488d16baa71f5dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d8174b0757c69a4e7b5b15dbf1b6dfbafbd6b3293ae9760b0689baee3f9c319",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantd681672679624322600b7255120c931cb7f2e814a1633b662488d16baa71f5dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39247c3-cab3-401e-554b-c60c05b57069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEndpointCritical_edge_upper {A r : ℝ} (hA : 91 ≤ A)
    (hr : 0 ≤ r) (hr1 : r ≤ 1) :
    endpointPolynomial A r / 4 - endpointDerivativePolynomial A r / 2 ≤ -50 * r := by
  have hd := actualEndpointDerivative_edge_lower hA hr hr1
  have hp := endpointPolynomial_abs_le A r (by linarith) hr (by linarith)
  have hr2 : r ^ 2 ≤ r := by nlinarith
  have hr4 : r ^ 4 ≤ r ^ 2 := by nlinarith [sq_nonneg (r ^ 2)]
  have hh := (le_abs_self (endpointPolynomial A r)).trans hp
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantd681672679624322600b7255120c931cb7f2e814a1633b662488d16baa71f5dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantd681672679624322600b7255120c931cb7f2e814a1633b662488d16baa71f5dd.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6a5cc411494b3410bbc72df82a3db7122cfda4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
