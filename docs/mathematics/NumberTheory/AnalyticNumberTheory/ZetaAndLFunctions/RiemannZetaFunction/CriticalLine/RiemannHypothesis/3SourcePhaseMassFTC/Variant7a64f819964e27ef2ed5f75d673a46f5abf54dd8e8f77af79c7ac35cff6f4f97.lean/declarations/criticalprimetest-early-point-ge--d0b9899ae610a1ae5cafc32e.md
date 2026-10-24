# criticalPrimeTest_early_point_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "868808fe6f62fd45e11d290a1d053bb60aceaa8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45d3941f-8f06-7ac7-4ece-536853f11b83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e982e4d9-59d5-7564-6a35-5198865d3815",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_early_point_ge",
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
  "slug": "criticalprimetest-early-point-ge--d0b9899ae610a1ae5cafc32e",
  "source": {
    "blob": "868808fe6f62fd45e11d290a1d053bb60aceaa8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Variant7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0b9899ae610a1ae5cafc32e2ca12e081f294f39b08492e82a7a7492357af73b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Variant7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e982e4d9-59d5-7564-6a35-5198865d3815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_early_point_ge {A : ℝ} (hA : 1 ≤ A) :
    (7 / 8 : ℝ) * Real.exp (A / 80) ≤ criticalPrimeTest A (A / 40) := by
  have hc := earlyCorrelation_ge hA (show 0 ≤ A / 40 by linarith) (le_refl (A / 40))
  unfold criticalPrimeTest
  have hm := mul_le_mul_of_nonneg_left hc (Real.exp_pos ((A / 40) / 2)).le
  rw [show (A / 40) / 2 = A / 80 by ring] at hm ⊢
  simpa only [mul_comm] using hm

/-- Exponential phase-mass growth follows from the unchanged source, for every A at least one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Variant7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3SourcePhaseMassFTC/Variant7a64f819964e27ef2ed5f75d673a46f5abf54dd8e8f77af79c7ac35cff6f4f97.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `868808fe6f62fd45e11d290a1d053bb60aceaa8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
