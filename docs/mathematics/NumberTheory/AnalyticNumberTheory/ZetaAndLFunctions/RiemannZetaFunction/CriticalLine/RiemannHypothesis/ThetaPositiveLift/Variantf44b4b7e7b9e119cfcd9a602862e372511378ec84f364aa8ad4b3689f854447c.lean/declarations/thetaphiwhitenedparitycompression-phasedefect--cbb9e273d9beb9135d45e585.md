# thetaPhiWhitenedParityCompression_phaseDefect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f10da5926b69b116079f95a37902c3383975a038",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44a687f1-a635-9d2b-493c-a44d1f6444c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e604276d-c405-991f-4163-4e35eb9f17b0",
  "kind": "theorem",
  "lexical_name": "thetaPhiWhitenedParityCompression_phaseDefect",
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
  "slug": "thetaphiwhitenedparitycompression-phasedefect--cbb9e273d9beb9135d45e585",
  "source": {
    "blob": "f10da5926b69b116079f95a37902c3383975a038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbb9e273d9beb9135d45e585281bda4c90cccd3f1a5a82f24e408cdae5efa064",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e604276d-c405-991f-4163-4e35eb9f17b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWhitenedParityCompression_phaseDefect
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    (1 : Matrix (Fin k) (Fin k) ℝ) -
        thetaPhiWhitenedParityCompression k L N t *
          thetaPhiWhitenedParityCompression k L N t =
      thetaPhiWhitenedKrylovFrame k L N t *
        thetaPhiParityInvolution L *
        ((1 : Matrix (Fin L) (Fin L) ℝ) -
          thetaPhiWhitenedProjection k L N t) *
        thetaPhiParityInvolution L *
        (thetaPhiWhitenedKrylovFrame k L N t).transpose := by
  let B :=
    thetaPhiWhitenedKrylovFrame k L N t
  let J := thetaPhiParityInvolution L
  let P := thetaPhiWhitenedProjection k L N t
  let C := thetaPhiWhitenedParityCompression k L N t
  have hBB : B * B.transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ) := by
    dsimp [B]
    exact thetaPhiWhitenedKrylovFrame_gram hk hN t
  have hJJ : J * J =
      (1 : Matrix (Fin L) (Fin L) ℝ) := by
    dsimp [J]
    exact thetaPhiParityInvolution_sq L
  have hP : P = B.transpose * B := by
    rfl
  have hC : C = B * J * B.transpose := by
    rfl
  have hfirst :
      B * J * J * B.transpose =
        (1 : Matrix (Fin k) (Fin k) ℝ) := by
    rw [Matrix.mul_assoc B J J, hJJ,
      Matrix.mul_one, hBB]
  have hsq :
      C * C =
        B * J * P * J * B.transpose := by
    rw [hC, hP]
    simp only [Matrix.mul_assoc]
  change
    (1 : Matrix (Fin k) (Fin k) ℝ) - C * C =
      B * J *
        ((1 : Matrix (Fin L) (Fin L) ℝ) - P) *
        J * B.transpose
  rw [Matrix.mul_sub, Matrix.sub_mul, Matrix.sub_mul]
  simp only [Matrix.mul_one]
  rw [hfirst, ← hsq]


/-- Complementary excursion of the ambient parity phase away from the
canonically whitened theta Krylov subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10da5926b69b116079f95a37902c3383975a038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
