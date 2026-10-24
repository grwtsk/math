# empty_region_is_not_full_source_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6395cf36-44aa-8d2a-b9ff-2a07347db9f9",
  "kind": "theorem",
  "lexical_name": "empty_region_is_not_full_source_kernel",
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
  "slug": "empty-region-is-not-full-source-kernel--8026bd81850d6d9fc9939e52",
  "source": {
    "blob": "65aa7d5e70bf55c65c6f0a4df6a1146ef7f86991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8026bd81850d6d9fc9939e52f5db2562652af795fb92314194f1f738c6fb8b52",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6395cf36-44aa-8d2a-b9ff-2a07347db9f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem empty_region_is_not_full_source_kernel {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    restrictedMixedSourceForm ∅ A x x ≠
      -(deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 -
        sourceCorrelation explicitSecondDerivative A 0 / 4) := by
  have hp := arbitrary_region_is_not_whole hA x
  have hs := restrictedMixedSourceForm_univ (by linarith : 0 < A) x x
  simpa only [sub_self, hs] using hp

/-- Time [0,1] and the corresponding spatial strip [-2,-1) are distinct sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/005RestrictedMixedPairingFixtures/Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65aa7d5e70bf55c65c6f0a4df6a1146ef7f86991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
