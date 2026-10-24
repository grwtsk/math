# thetaPhiWhitenedProjection_sq

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
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:896f5fac-e2f2-c2f2-5529-c01e8359144c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09fd737e-095a-33f1-033c-1ed452ed4b6a",
  "kind": "theorem",
  "lexical_name": "thetaPhiWhitenedProjection_sq",
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
  "slug": "thetaphiwhitenedprojection-sq--99fe1f064e6180c7448eb7a1",
  "source": {
    "blob": "f10da5926b69b116079f95a37902c3383975a038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99fe1f064e6180c7448eb7a12cf132b2cdcb72f040e2675e907038df37baa547",
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

Occurrence: `result:09fd737e-095a-33f1-033c-1ed452ed4b6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWhitenedProjection_sq
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedProjection k L N t *
        thetaPhiWhitenedProjection k L N t =
      thetaPhiWhitenedProjection k L N t := by
  let B :=
    thetaPhiWhitenedKrylovFrame k L N t
  have hBB : B * B.transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ) := by
    dsimp [B]
    exact thetaPhiWhitenedKrylovFrame_gram hk hN t
  change
    (B.transpose * B) * (B.transpose * B) =
      B.transpose * B
  calc
    (B.transpose * B) * (B.transpose * B) =
        B.transpose * ((B * B.transpose) * B) := by
          simp only [Matrix.mul_assoc]
    _ = B.transpose * ((1 : Matrix (Fin k) (Fin k) ℝ) * B) := by
          rw [hBB]
    _ = B.transpose * B := by
          rw [Matrix.one_mul]

/-- The canonically whitened parity compression is symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10da5926b69b116079f95a37902c3383975a038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
