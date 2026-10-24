# factorial_mul_det_thetaPhi_signedMomentTruncation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c693c502-1752-267b-8197-1564d2d91f51",
  "kind": "theorem",
  "lexical_name": "factorial_mul_det_thetaPhi_signedMomentTruncation",
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
  "slug": "factorial-mul-det-thetaphi-signedmomenttruncation--61516350a7db25107f6130c1",
  "source": {
    "blob": "d995d63a8e91a338e89fcc9d60f7cd2cb0df0cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantdc340ca0e5ce7f47587c7d9448d5c16853d615a8457522c7ea3f41cc23fd990b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61516350a7db25107f6130c1c56938e6df04a4d3a1cc947ae7d418199652bf97",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantdc340ca0e5ce7f47587c7d9448d5c16853d615a8457522c7ea3f41cc23fd990b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c693c502-1752-267b-8197-1564d2d91f51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_mul_det_thetaPhi_signedMomentTruncation
    (k L N : ℕ) (t : ℝ) :
    (k.factorial : ℝ) *
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation
                L N n t)) =
      ∑ f : Fin k → Fin L,
        (∏ i : Fin k,
          thetaPhiBaseSignedMomentWeight
              N t (f i).val *
            (thetaPhiSignedMomentNode
              (f i).val + 1)) *
          (thetaPhiSignedMomentVandermondeDet f) ^ 2 := by
  let nodes : Fin L → ℝ :=
    fun l => thetaPhiSignedMomentNode l.val
  let weights : Fin L → ℝ :=
    fun l => thetaPhiBaseSignedMomentWeight N t l.val
  have htape :
      (fun n =>
        thetaPhiBaseSignedMomentTruncation L N n t) =
        finiteSignedMomentTape nodes weights := by
    funext n
    rfl
  rw [htape]
  simpa only [nodes, weights,
    thetaPhiSignedMomentVandermondeDet,
    finiteMomentVandermondeDet] using
      (factorial_mul_det_christoffel_finiteSignedMoment
        (k := k) nodes weights)

/-- Exact analytic bridge still required to identify the verified finite base
tape with the infinite signed moment sequence on the arithmetic support
`4*l+5`.  It is recorded as a target, not installed as an axiom or theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantdc340ca0e5ce7f47587c7d9448d5c16853d615a8457522c7ea3f41cc23fd990b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantdc340ca0e5ce7f47587c7d9448d5c16853d615a8457522c7ea3f41cc23fd990b.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d995d63a8e91a338e89fcc9d60f7cd2cb0df0cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
