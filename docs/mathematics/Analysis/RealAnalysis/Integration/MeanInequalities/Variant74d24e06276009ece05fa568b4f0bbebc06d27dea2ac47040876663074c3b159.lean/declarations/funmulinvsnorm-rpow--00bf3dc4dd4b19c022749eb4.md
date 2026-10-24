# funMulInvSnorm_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:137195b4-827e-3f70-d4c5-0deb79084b22",
  "kind": "theorem",
  "lexical_name": "funMulInvSnorm_rpow",
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
  "slug": "funmulinvsnorm-rpow--00bf3dc4dd4b19c022749eb4",
  "source": {
    "blob": "931e69ad6afb3c17b677b6029211c720218e4863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00bf3dc4dd4b19c022749eb426fb25ada9b79b2d19b29e88e8b232f4f7484e26",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:137195b4-827e-3f70-d4c5-0deb79084b22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem funMulInvSnorm_rpow {p : ℝ} (hp0 : 0 < p) {f : α → ℝ≥0∞} {a : α} :
    funMulInvSnorm f p μ a ^ p = f a ^ p * (∫⁻ c, f c ^ p ∂μ)⁻¹ := by
  rw [funMulInvSnorm, mul_rpow_of_nonneg _ _ (le_of_lt hp0)]
  suffices h_inv_rpow : ((∫⁻ c : α, f c ^ p ∂μ) ^ (1 / p))⁻¹ ^ p = (∫⁻ c : α, f c ^ p ∂μ)⁻¹ by
    rw [h_inv_rpow]
  rw [inv_rpow, ← rpow_mul, one_div_mul_cancel hp0.ne', rpow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931e69ad6afb3c17b677b6029211c720218e4863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
