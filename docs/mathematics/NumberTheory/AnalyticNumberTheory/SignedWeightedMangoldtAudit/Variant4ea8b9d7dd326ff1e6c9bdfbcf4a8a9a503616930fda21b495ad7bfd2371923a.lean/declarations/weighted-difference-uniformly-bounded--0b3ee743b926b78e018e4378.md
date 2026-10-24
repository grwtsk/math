# weighted_difference_uniformly_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:179e45ba-dac7-c884-aae5-1e034764a439",
  "kind": "theorem",
  "lexical_name": "weighted_difference_uniformly_bounded",
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
  "slug": "weighted-difference-uniformly-bounded--0b3ee743b926b78e018e4378",
  "source": {
    "blob": "17757f18f42c9683947fe2ff3c9943c8cacb66c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 257,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b3ee743b926b78e018e43785e1f189fc2269ce24a174d2ef2407b2450418890",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:179e45ba-dac7-c884-aae5-1e034764a439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_difference_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ, 1 ≤ N →
      0 ≤ weightedMangoldt N - weightedPrime N ∧
        weightedMangoldt N - weightedPrime N ≤ C := by
  obtain ⟨C, hC⟩ := Chebyshev.psi_sub_theta_le_mul_sqrt
  have hC0 : 0 ≤ C := by simpa using hC 1
  refine ⟨3 * C, by positivity, ?_⟩
  intro N hN
  exact ⟨weighted_difference_nonneg N, weighted_difference_bound_of_sqrt C hC0 hC N hN⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17757f18f42c9683947fe2ff3c9943c8cacb66c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
