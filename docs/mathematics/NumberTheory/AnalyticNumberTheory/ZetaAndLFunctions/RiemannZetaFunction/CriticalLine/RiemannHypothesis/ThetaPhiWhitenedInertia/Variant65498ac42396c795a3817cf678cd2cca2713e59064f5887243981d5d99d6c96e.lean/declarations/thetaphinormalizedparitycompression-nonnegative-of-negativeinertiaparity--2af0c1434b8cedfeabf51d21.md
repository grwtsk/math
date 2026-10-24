# thetaPhiNormalizedParityCompression_nonnegative_of_negativeInertiaParity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66c1a1b6-7e4d-946c-4d02-58168ad31c55",
  "kind": "theorem",
  "lexical_name": "thetaPhiNormalizedParityCompression_nonnegative_of_negativeInertiaParity",
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
  "slug": "thetaphinormalizedparitycompression-nonnegative-of-negativeinertiaparity--2af0c1434b8cedfeabf51d21",
  "source": {
    "blob": "68a79d610ba96b9b9c90842c507f9cdb3b67eeba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant65498ac42396c795a3817cf678cd2cca2713e59064f5887243981d5d99d6c96e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2af0c1434b8cedfeabf51d216f25bb17bb0fcf277aaf4584eca67a84eb77bd24",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant65498ac42396c795a3817cf678cd2cca2713e59064f5887243981d5d99d6c96e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66c1a1b6-7e4d-946c-4d02-58168ad31c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiNormalizedParityCompression_nonnegative_of_negativeInertiaParity
    (hparity : ThetaPhiWhitenedNegativeInertiaParity)
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤ thetaPhiNormalizedParityCompression k L N t := by
  by_cases hz :
      ∃ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i = 0
  · rw [thetaPhiNormalizedParityCompression_eq_prod_eigenvalues
      hk hN t]
    obtain ⟨i, hi⟩ := hz
    rw [Finset.prod_eq_zero (Finset.mem_univ i) hi]
  · have hnz :
        ∀ i : Fin k,
          (thetaPhiWhitenedParityCompression_isHermitian
            k L N t).eigenvalues i ≠ 0 := by
      intro i hi
      exact hz ⟨i, hi⟩
    have heven :
        Even
          (thetaPhiWhitenedNegativeEigenvalueCount
            k L N t) :=
      hparity k L N t hk hN hnz
    exact
      (thetaPhiNormalizedParityCompression_pos_of_even_negativeInertia
        hk hN t hnz heven).le

/-- The same inertia-parity criterion transfers through the positive Gram
normalization to the original finite signed Christoffel-Hankel determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant65498ac42396c795a3817cf678cd2cca2713e59064f5887243981d5d99d6c96e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant65498ac42396c795a3817cf678cd2cca2713e59064f5887243981d5d99d6c96e.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a79d610ba96b9b9c90842c507f9cdb3b67eeba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
