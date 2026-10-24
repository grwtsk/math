# thetaPhiWhitenedParityCompression_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5bb0d3a5190b3bbe2ea4956db6701ace2e56024",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:415574f0-c82c-5343-302b-17ab8b3131fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:633408c6-26fd-4bc4-3a6d-a2150e88d4e6",
  "kind": "theorem",
  "lexical_name": "thetaPhiWhitenedParityCompression_eq",
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
  "slug": "thetaphiwhitenedparitycompression-eq--66f9861d6aff524af60f95e7",
  "source": {
    "blob": "e5bb0d3a5190b3bbe2ea4956db6701ace2e56024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66f9861d6aff524af60f95e7686716ae73feec8c336724d30a78057d1fba3886",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:633408c6-26fd-4bc4-3a6d-a2150e88d4e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWhitenedParityCompression_eq
    (k L N : ℕ) (t : ℝ) :
    thetaPhiWhitenedParityCompression k L N t =
      thetaPhiKrylovWhitening k L N t *
        thetaPhiChristoffelHankel k
          (fun n =>
            thetaPhiBaseSignedMomentTruncation
              L N n t) *
        (thetaPhiKrylovWhitening k L N t).transpose := by
  unfold thetaPhiWhitenedParityCompression
    thetaPhiWhitenedKrylovFrame
  rw [involutionCompressionGram_mul_left]
  rw [←
    thetaPhiChristoffelHankel_signedMomentTruncation_eq_involutionCompression]

/-- On every nondegenerate finite cutoff, the basis-invariant normalized theta
observable is exactly the determinant of the canonical orthonormal parity
compression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5bb0d3a5190b3bbe2ea4956db6701ace2e56024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
