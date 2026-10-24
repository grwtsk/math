# firstPrimeMoment_eq_baseline_sub_storage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9dd5b886bdbfc49bca67f67d9c0a546eb93aaa52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:246f3579-d92a-4fee-19fb-b4410ba86205",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9456cb7-e4c6-6b13-c4f6-c290087d29c7",
  "kind": "theorem",
  "lexical_name": "firstPrimeMoment_eq_baseline_sub_storage",
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
  "slug": "firstprimemoment-eq-baseline-sub-storage--9afa46eb8c518db15a0e994e",
  "source": {
    "blob": "9dd5b886bdbfc49bca67f67d9c0a546eb93aaa52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Variant0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9afa46eb8c518db15a0e994e1ee9330918de378816872cf27bc5f96d3a223c7d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Variant0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9456cb7-e4c6-6b13-c4f6-c290087d29c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeMoment_eq_baseline_sub_storage {A : ℝ} (hA : 0 < A) :
    firstPrimeMoment A = firstPrimeBaseline A - firstPrimeStorage A := by
  unfold firstPrimeMoment firstPrimeBaseline firstPrimeStorage
  have h := finiteMangoldt_reconstruction (primeLogInventory (2 * A)) (originalSourceState A)
  rw [originalSourceState_norm hA] at h
  simp only [one_pow, mul_one] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro p hp
  rw [← sourceCorrelation_eq_inner hA]
  unfold closedPrimeWeight exponentialTest mangoldtCoefficient
  ring

/-- Disjoint translated support has square complement one, not zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Variant0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Variant0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dd5b886bdbfc49bca67f67d9c0a546eb93aaa52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
