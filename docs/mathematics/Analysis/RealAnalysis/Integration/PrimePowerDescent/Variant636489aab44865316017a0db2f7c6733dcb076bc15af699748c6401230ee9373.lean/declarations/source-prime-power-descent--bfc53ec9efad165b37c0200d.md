# source_prime_power_descent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d9832d6237c01078cf6aa307e3f7dcd1d05df3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a67ba531-8dff-ce4f-747a-ccfa23b02870",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23ce310c-4e70-4c23-eae7-37667ab7676c",
  "kind": "theorem",
  "lexical_name": "source_prime_power_descent",
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
  "slug": "source-prime-power-descent--bfc53ec9efad165b37c0200d",
  "source": {
    "blob": "7d9832d6237c01078cf6aa307e3f7dcd1d05df3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 307,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfc53ec9efad165b37c0200d5b4145537b2b0eece5d8630a5bd77745cc6738b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23ce310c-4e70-4c23-eae7-37667ab7676c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_prime_power_descent (g : ℝ → ℝ → ℝ) (A : ℝ) (hA : 1 ≤ A)
    (hC : ContDiff ℝ 1 (sourceCorrelation g A))
    (hzero : sourceCorrelation g A (2 * A) = 0) :
    primePowerContribution g A =
      (∫ t in lowerEndpoint..2 * A, Real.exp (t / 2) * sourceCorrelation g A t) +
      Real.sqrt 2 * sourceCorrelation g A lowerEndpoint - signedPairing g A := by
  have hi := source_signed_pairing_ibp g A hA hC
  have hend : exponentialTest (sourceCorrelation g A) (2 * A) = 0 := by
    rw [exponentialTest, hzero, mul_zero]
  rw [hend, mul_zero, zero_sub, ← source_prime_power_contribution_eq_closed g A hzero] at hi
  simp_rw [exp_mul_exponentialTest] at hi
  have htwo := prime_two_correction (sourceCorrelation g A)
  linarith

/-- Direct arithmetic reduction of `Q = M + 2 I`: the precise remaining pole
condition is an explicit finite correlation moment. This proof cancels the
identical archimedean term algebraically and makes no claim to evaluate it or
to construct a weak-family realization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d9832d6237c01078cf6aa307e3f7dcd1d05df3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
