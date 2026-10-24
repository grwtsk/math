# thetaPhiDerivativeTapeValue_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c8a9304-bbe6-a954-3cc3-6668180d956e",
  "kind": "theorem",
  "lexical_name": "thetaPhiDerivativeTapeValue_zero",
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
  "slug": "thetaphiderivativetapevalue-zero--3d9239f04be001808a0c4290",
  "source": {
    "blob": "195b8c00db2cec0332eedd0ed00f81067ba295e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 199,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d9239f04be001808a0c42904227fbf9c2a15f3cbe3d8039b3527b5a16851f5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c8a9304-bbe6-a954-3cc3-6668180d956e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiDerivativeTapeValue_zero :
    thetaPhiDerivativeTapeValue 0 = thetaPhi := by
  funext t
  have he (m : ℕ) :
      thetaPhiTerm m t =
        (2 * Real.pi ^ 2) * thetaGaussianTerm 4 9 m t -
          (3 * Real.pi) * thetaGaussianTerm 2 5 m t := by
    rw [thetaPhiTerm_eq_gaussians]
    unfold thetaGaussianTerm
    ring_nf
  have hsource :
      thetaPhi t =
        (2 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
          (3 * Real.pi) * thetaGaussianSum 2 5 t := by
    unfold thetaPhi
    simp_rw [he]
    rw [((thetaGaussianTerm_summable 4 9 t).mul_left
        (2 * Real.pi ^ 2)).tsum_sub
      ((thetaGaussianTerm_summable 2 5 t).mul_left
        (3 * Real.pi)),
      tsum_mul_left, tsum_mul_left]
    rfl
  rw [hsource]
  change
    thetaPhiGaussianLift
        (Polynomial.monomial 0 (-3) +
          Polynomial.monomial 1 2) t =
      (2 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
        (3 * Real.pi) * thetaGaussianSum 2 5 t
  rw [thetaPhiGaussianLift_add,
    thetaPhiGaussianLift_monomial,
    thetaPhiGaussianLift_monomial]
  norm_num
  ring

/-- The all-order recurrence therefore gives an actual literal theta source
jet, not merely a formal polynomial tape. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34913b17f565acdb203280e319b2ea14c21212039e230cd657b881a117e387a9.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `195b8c00db2cec0332eedd0ed00f81067ba295e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
