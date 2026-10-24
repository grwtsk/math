# actualEndpointCritical_edge_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:645205f2-c588-02d8-ac5f-a214479ed2d6",
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
  "slug": "actualendpointcritical-edge-upper--eb8a28c98382757adffe71e0",
  "source": {
    "blob": "efa58d8e47d0c682fd9e60d4ddc49667d8ed486d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant661202544d2d236e1924789aed6e0a47046b5926155627f7a81adde8b4ad0b31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb8a28c98382757adffe71e06fe8f19fb6551104b418208f136435c78ed241aa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant661202544d2d236e1924789aed6e0a47046b5926155627f7a81adde8b4ad0b31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:645205f2-c588-02d8-ac5f-a214479ed2d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–114.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant661202544d2d236e1924789aed6e0a47046b5926155627f7a81adde8b4ad0b31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant661202544d2d236e1924789aed6e0a47046b5926155627f7a81adde8b4ad0b31.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efa58d8e47d0c682fd9e60d4ddc49667d8ed486d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
