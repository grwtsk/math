# thetaPhiDerivativeHankelTruncation_eq_christoffel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdc1ab48-22e6-2fab-e07a-696ea3336326",
  "kind": "theorem",
  "lexical_name": "thetaPhiDerivativeHankelTruncation_eq_christoffel",
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
  "slug": "thetaphiderivativehankeltruncation-eq-christoffel--823bd35e01c0b42161f92775",
  "source": {
    "blob": "be85167f0727a3da8a2a46d476e864d7cdfd2f34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 180,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823bd35e01c0b42161f9277579f32c7912fe789319d6bbba558597e7257e2508",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdc1ab48-22e6-2fab-e07a-696ea3336326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiDerivativeHankelTruncation_eq_christoffel
    (k N : ℕ) (t : ℝ) :
    Matrix.of
        (fun i j : Fin k =>
          thetaPhiDerivativeTapeTruncation
            N (i.val + j.val) t) =
      (-1 / 2 : ℝ) •
        thetaPhiChristoffelHankel k
          (fun n => thetaPhiBaseTapeTruncation N n t) := by
  ext i j
  simp only [Matrix.of_apply, Matrix.smul_apply,
    smul_eq_mul, thetaPhiChristoffelHankel]
  rw [thetaPhiDerivativeTapeTruncation_christoffel]

/-- Exact whole-determinant Christoffel reduction of every finite-mode signed
theta Hankel determinant.  No sign is asserted for the base determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be85167f0727a3da8a2a46d476e864d7cdfd2f34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
