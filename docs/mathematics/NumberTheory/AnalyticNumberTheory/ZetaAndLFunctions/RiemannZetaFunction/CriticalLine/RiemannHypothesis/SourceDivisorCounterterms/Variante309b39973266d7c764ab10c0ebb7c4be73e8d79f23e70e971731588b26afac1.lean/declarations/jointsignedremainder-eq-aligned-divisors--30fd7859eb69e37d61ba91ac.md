# jointSignedRemainder_eq_aligned_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a642b90cfbd3a2533d98f2b8bdda427b66213bcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0ede9bb-3c99-49e5-5a7c-319b2a2ea830",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:152449ce-865f-139b-f153-e4bb7fe50adf",
  "kind": "theorem",
  "lexical_name": "jointSignedRemainder_eq_aligned_divisors",
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
  "slug": "jointsignedremainder-eq-aligned-divisors--30fd7859eb69e37d61ba91ac",
  "source": {
    "blob": "a642b90cfbd3a2533d98f2b8bdda427b66213bcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 142,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30fd7859eb69e37d61ba91ac46b912b20052fcf3ba2228be2251d9021e057887",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:152449ce-865f-139b-f153-e4bb7fe50adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointSignedRemainder_eq_aligned_divisors (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * (divisorInteraction A d - divisorCounterterm A d) := by
  rw [jointSignedRemainder_eq_covariance A hA,
    SourceDivisorClassification.covarianceOperator_half_eq_divisor_interactions A hA,
    independentMainTerm_eq_baseline_add_divisors]
  unfold divisorInteraction realMoebius
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  ring

/-- The independent centering means cancel exactly, leaving the global baseline and full
covariance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a642b90cfbd3a2533d98f2b8bdda427b66213bcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
