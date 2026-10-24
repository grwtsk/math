# radial_integrands_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5822537b-e206-55ab-9151-eef3fdba8dfc",
  "kind": "theorem",
  "lexical_name": "radial_integrands_intervalIntegrable",
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
  "slug": "radial-integrands-intervalintegrable--d38b2ab9ad9b3a20a63ca9f9",
  "source": {
    "blob": "ebf915e5fbfa6cd1ea627a0edf0e4ddefeb90b0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalFragment/Variantbf5de7f444d02eba63bf07c9c00eb851cc9a00fe9b5086f4063d58c19869296b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d38b2ab9ad9b3a20a63ca9f9613dad230d793bd19af4f8835d9c56ed92bf7997",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalFragment/Variantbf5de7f444d02eba63bf07c9c00eb851cc9a00fe9b5086f4063d58c19869296b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5822537b-e206-55ab-9151-eef3fdba8dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radial_integrands_intervalIntegrable (z : ℂ) :
    IntervalIntegrable (fun r : ℝ => r ^ 10 * ‖radialProfile z r‖ ^ 2) volume 0 1 ∧
    IntervalIntegrable (fun r : ℝ =>
      r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2) volume 0 1 := by
  constructor
  · apply Continuous.intervalIntegrable
    exact (continuous_id.pow 10).mul ((radialProfile_continuous z).norm.pow 2)
  · apply Continuous.intervalIntegrable
    have hm := bumpMoment_continuous 1
    fun_prop

/-- The radial energy is nonnegative, independent of whether the endpoint is a zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalFragment/Variantbf5de7f444d02eba63bf07c9c00eb851cc9a00fe9b5086f4063d58c19869296b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalFragment/Variantbf5de7f444d02eba63bf07c9c00eb851cc9a00fe9b5086f4063d58c19869296b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebf915e5fbfa6cd1ea627a0edf0e4ddefeb90b0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
