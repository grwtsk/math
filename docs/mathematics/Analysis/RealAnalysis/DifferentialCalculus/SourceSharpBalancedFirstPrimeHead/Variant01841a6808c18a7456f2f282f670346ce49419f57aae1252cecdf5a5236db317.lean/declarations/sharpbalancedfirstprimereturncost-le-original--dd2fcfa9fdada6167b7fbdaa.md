# sharpBalancedFirstPrimeReturnCost_le_original

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da8f05b3-1cf3-5b8f-c48d-8cf0d6939776",
  "kind": "theorem",
  "lexical_name": "sharpBalancedFirstPrimeReturnCost_le_original",
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
  "slug": "sharpbalancedfirstprimereturncost-le-original--dd2fcfa9fdada6167b7fbdaa",
  "source": {
    "blob": "58d4453509f7500d7f4156131806e929d056ea1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant01841a6808c18a7456f2f282f670346ce49419f57aae1252cecdf5a5236db317.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd2fcfa9fdada6167b7fbdaae00940e2946282e1ffefcfc2f46e01f3056ca1bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant01841a6808c18a7456f2f282f670346ce49419f57aae1252cecdf5a5236db317.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da8f05b3-1cf3-5b8f-c48d-8cf0d6939776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpBalancedFirstPrimeReturnCost_le_original {K Q : ℝ} (hQ : 91 ≤ Q) :
    sharpBalancedFirstPrimeReturnCost K Q ≤ balancedFirstPrimeReturnCost K Q := by
  have hp : 0 < Q := by linarith
  have hlogQ : 0 ≤ Real.log Q := Real.log_nonneg (by linarith)
  have hlog7 : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hl : Real.log (7 : ℝ) ≤ Real.log Q := Real.log_le_log (by norm_num) (by linarith)
  have hb : 0 ≤ 2 * Real.log Q + (Real.log Q)^2 - (Real.log 7)^2 / 4 := by
    nlinarith [mul_self_le_mul_self hlog7 hl]
  have hc : 0 ≤ 10 * Real.sqrt 7 *
      (2 * Real.log Q + (Real.log Q)^2 - (Real.log 7)^2 / 4) / Q^2 := by positivity
  unfold sharpBalancedFirstPrimeReturnCost balancedFirstPrimeReturnCost sharpBalancedHeadCost
  linarith

end RH16SharpBalancedFirstPrimeHead
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant01841a6808c18a7456f2f282f670346ce49419f57aae1252cecdf5a5236db317.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant01841a6808c18a7456f2f282f670346ce49419f57aae1252cecdf5a5236db317.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d4453509f7500d7f4156131806e929d056ea1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
