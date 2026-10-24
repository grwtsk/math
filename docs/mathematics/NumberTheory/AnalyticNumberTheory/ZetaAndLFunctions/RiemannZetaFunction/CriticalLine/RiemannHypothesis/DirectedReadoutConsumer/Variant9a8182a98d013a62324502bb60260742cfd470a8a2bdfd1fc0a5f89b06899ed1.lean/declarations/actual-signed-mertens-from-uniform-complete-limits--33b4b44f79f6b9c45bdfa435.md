# actual_signed_mertens_from_uniform_complete_limits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5290f2ff-6a6d-1990-3d37-5e00c4e0e072",
  "kind": "theorem",
  "lexical_name": "actual_signed_mertens_from_uniform_complete_limits",
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
  "slug": "actual-signed-mertens-from-uniform-complete-limits--33b4b44f79f6b9c45bdfa435",
  "source": {
    "blob": "cef04ee71d622d07b970483b2bd77d4fc76fa1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant9a8182a98d013a62324502bb60260742cfd470a8a2bdfd1fc0a5f89b06899ed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33b4b44f79f6b9c45bdfa435a0532299f8d741801a0ca52bb7d8f98c95d7455f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant9a8182a98d013a62324502bb60260742cfd470a8a2bdfd1fc0a5f89b06899ed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5290f2ff-6a6d-1990-3d37-5e00c4e0e072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_mertens_from_uniform_complete_limits
    (ell : E →L[ℝ] ℝ) (source : ℝ → E) (v : ℝ → ℕ → E)
    (residual : ℝ → ℕ → ℝ) (m : ℕ) (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R)
    (hdecode : ∀ A, R ≤ A → ell (source A) = closedPrimeMoment A)
    (hv : ∀ A, R ≤ A → Tendsto (v A) atTop (𝓝 (source A)))
    (hr : ∀ A, R ≤ A → Tendsto (residual A) atTop (𝓝 0))
    (hcap : ∀ A, R ≤ A → ∀ n, ell (v A n) ≤ C * A ^ m + residual A n) :
    SignedMertensSupplier :=
  problemP_iff_signedMertensSupplier.mp
    (actual_source_from_uniform_complete_limits ell source v residual m C R hC hR hdecode hv hr
      hcap)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant9a8182a98d013a62324502bb60260742cfd470a8a2bdfd1fc0a5f89b06899ed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant9a8182a98d013a62324502bb60260742cfd470a8a2bdfd1fc0a5f89b06899ed1.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef04ee71d622d07b970483b2bd77d4fc76fa1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
