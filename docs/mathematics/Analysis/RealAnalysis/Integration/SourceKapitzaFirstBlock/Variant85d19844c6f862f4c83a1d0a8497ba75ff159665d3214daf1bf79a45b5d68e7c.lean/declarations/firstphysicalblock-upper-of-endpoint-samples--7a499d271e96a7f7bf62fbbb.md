# firstPhysicalBlock_upper_of_endpoint_samples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d432c455-a5be-550b-7046-560c001f3f35",
  "kind": "theorem",
  "lexical_name": "firstPhysicalBlock_upper_of_endpoint_samples",
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
  "slug": "firstphysicalblock-upper-of-endpoint-samples--7a499d271e96a7f7bf62fbbb",
  "source": {
    "blob": "15c9ff544ebd533f5a320cb151822729018c251b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 337,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a499d271e96a7f7bf62fbbb2b571bb87727654e991796f9d2e8ba75aec47972",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d432c455-a5be-550b-7046-560c001f3f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPhysicalBlock_upper_of_endpoint_samples (A K : ℝ)
    (hK : 0 ≤ K) (hA : 80 ≤ A) (hKA : 320 * K ≤ A)
    (hp : |endpointValue A| ≤ K / A ^ 2)
    (hb : |endpointSlope A| ≤ 2 * K / A ^ 2) :
    firstPhysicalBlock A ≤ -(1293 / 5120 : ℝ) := by
  apply firstPhysicalBlock_upper A hA
  intro s hs
  have hsfull : s ∈ Icc (0 : ℝ) (2 * A) := by
    constructor
    · exact log_two_bounds.1.trans hs.1
    · linarith [hs.2, Real.log_four_eq, log_two_bounds.2]
  have henv := affineTrend_abs_le_of_endpoint_samples A K s hK (by linarith) hsfull hp hb
  have hratio : 5 * K / A ≤ (1 / 64 : ℝ) :=
    (div_le_iff₀ (by linarith : 0 < A)).mpr (by linarith)
  have hlo := (abs_le.mp henv).1
  linarith

/-- Original physical head `[0, log 2]`; its separate negative cap remains an input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15c9ff544ebd533f5a320cb151822729018c251b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
