# thetaPhiNormalizedParityCompression_nonnegative_of_negativeInertiaParity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2876cc3a70779b2bddf7cfb40100d255caace477",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c742dfc-8355-b0a3-3cdc-d7a7f7fb58bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43133b0e-8f0e-a823-ba12-b2f3ccec5b10",
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
  "slug": "thetaphinormalizedparitycompression-nonnegative-of-negativeinertiaparity--3b9ede1f8b15b68e6a280ec8",
  "source": {
    "blob": "2876cc3a70779b2bddf7cfb40100d255caace477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b9ede1f8b15b68e6a280ec84aa4b8e753f8995b41e91b6c28774abf8bfaea58",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43133b0e-8f0e-a823-ba12-b2f3ccec5b10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–109.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiWhitenedInertia/Variant60893b11cb3cbd037f866c229b3bd738d8de7b855f0f255a798436aed76efce2.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2876cc3a70779b2bddf7cfb40100d255caace477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
