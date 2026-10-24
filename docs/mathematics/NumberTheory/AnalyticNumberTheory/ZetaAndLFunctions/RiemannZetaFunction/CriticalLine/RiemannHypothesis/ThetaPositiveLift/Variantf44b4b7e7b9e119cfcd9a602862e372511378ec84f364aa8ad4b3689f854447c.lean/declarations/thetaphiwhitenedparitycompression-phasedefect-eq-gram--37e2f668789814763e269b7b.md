# thetaPhiWhitenedParityCompression_phaseDefect_eq_gram

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
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3aeed9a5-10b9-8ea0-a9dd-8e5f226c3df6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:580e85c7-ff1a-025a-11aa-4ed9f7fcd053",
  "kind": "theorem",
  "lexical_name": "thetaPhiWhitenedParityCompression_phaseDefect_eq_gram",
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
  "slug": "thetaphiwhitenedparitycompression-phasedefect-eq-gram--37e2f668789814763e269b7b",
  "source": {
    "blob": "f10da5926b69b116079f95a37902c3383975a038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37e2f668789814763e269b7b25c66a659f79688d39b5478abd40914ae8ff6faf",
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

Occurrence: `result:580e85c7-ff1a-025a-11aa-4ed9f7fcd053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWhitenedParityCompression_phaseDefect_eq_gram
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    (1 : Matrix (Fin k) (Fin k) ℝ) -
        thetaPhiWhitenedParityCompression k L N t *
          thetaPhiWhitenedParityCompression k L N t =
      (thetaPhiWhitenedPhaseExcursion k L N t).transpose *
        thetaPhiWhitenedPhaseExcursion k L N t := by
  rw [thetaPhiWhitenedParityCompression_phaseDefect hk hN t]
  unfold thetaPhiWhitenedPhaseExcursion
  rw [Matrix.transpose_mul, Matrix.transpose_mul,
    Matrix.transpose_transpose,
    thetaPhiParityInvolution_transpose,
    thetaPhiWhitenedComplementProjection_transpose]
  let Q :=
    (1 : Matrix (Fin L) (Fin L) ℝ) -
      thetaPhiWhitenedProjection k L N t
  have hQ : Q * Q = Q := by
    dsimp [Q]
    exact thetaPhiWhitenedComplementProjection_sq hk hN t
  change
    thetaPhiWhitenedKrylovFrame k L N t *
          thetaPhiParityInvolution L *
        Q *
      thetaPhiParityInvolution L *
        (thetaPhiWhitenedKrylovFrame k L N t).transpose =
      thetaPhiWhitenedKrylovFrame k L N t *
          (thetaPhiParityInvolution L * Q) *
        (Q * thetaPhiParityInvolution L *
          (thetaPhiWhitenedKrylovFrame k L N t).transpose)
  simp only [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc Q Q, hQ]

/-- The canonical compressed parity phase has positive-semidefinite squared
defect on every nondegenerate finite cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10da5926b69b116079f95a37902c3383975a038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
