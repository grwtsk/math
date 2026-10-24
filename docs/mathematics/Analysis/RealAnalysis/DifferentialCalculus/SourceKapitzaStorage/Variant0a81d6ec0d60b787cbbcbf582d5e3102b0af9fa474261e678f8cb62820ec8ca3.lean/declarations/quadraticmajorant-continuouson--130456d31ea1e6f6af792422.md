# quadraticMajorant_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20b727bb-53bc-8183-2dee-de1aeeb97c2e",
  "kind": "theorem",
  "lexical_name": "quadraticMajorant_continuousOn",
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
  "slug": "quadraticmajorant-continuouson--130456d31ea1e6f6af792422",
  "source": {
    "blob": "50432f5bb6f6b72e4835ccf5fa05eeea642501fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 260,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:130456d31ea1e6f6af7924225e6eeab62cca1fc812fe5b8e6bc7e67ce8d27b59",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20b727bb-53bc-8183-2dee-de1aeeb97c2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticMajorant_continuousOn {y : ℝ} (hy : 1 ≤ y) :
    ContinuousOn quadraticMajorant (Set.uIcc 1 y) := by
  rw [Set.uIcc_of_le hy]
  intro x hx
  have hx0 : 0 < x := by linarith [hx.1]
  exact (((continuousAt_const.add (Real.continuousAt_log hx0.ne')).pow 2).div
    (Real.continuousAt_rpow_const x (3 / 2) (Or.inl hx0.ne'))
    (Real.rpow_pos_of_pos hx0 _).ne').continuousWithinAt

/-- Exact finite integral with its nonpositive terminal correction retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50432f5bb6f6b72e4835ccf5fa05eeea642501fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
