# scaledSampling_endpoint_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68286b0c-29d8-463f-bbcc-522b04bfa3ee",
  "kind": "theorem",
  "lexical_name": "scaledSampling_endpoint_zero",
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
  "slug": "scaledsampling-endpoint-zero--54e518fde7d2a7bfe06ec537",
  "source": {
    "blob": "7234b2fd921e44fd22137c8075fbb788e9d5ea8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e518fde7d2a7bfe06ec537b0de17a2be68595eff9f0a31e5410a96885ecda0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68286b0c-29d8-463f-bbcc-522b04bfa3ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledSampling_endpoint_zero (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    sourceSamplingKernel A ((q : ℝ) * (⌊Real.exp (2 * A)⌋₊ + 1 : ℕ)) = 0 := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hN : (0 : ℝ) < (⌊Real.exp (2 * A)⌋₊ + 1 : ℕ) := by positivity
  apply MertensTransport.sourceSamplingKernel_zero_of_exp_le A _ (mul_pos hq0 hN)
  have hf := Nat.lt_floor_add_one (Real.exp (2 * A))
  push_cast
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7234b2fd921e44fd22137c8075fbb788e9d5ea8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
