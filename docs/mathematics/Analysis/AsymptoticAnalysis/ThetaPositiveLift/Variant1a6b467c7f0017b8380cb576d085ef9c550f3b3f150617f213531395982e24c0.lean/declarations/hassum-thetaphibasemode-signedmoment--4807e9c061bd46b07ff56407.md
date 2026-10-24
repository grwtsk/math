# hasSum_thetaPhiBaseMode_signedMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:affa0736-f851-3142-be8a-bd234b7a7b41",
  "kind": "theorem",
  "lexical_name": "hasSum_thetaPhiBaseMode_signedMoment",
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
  "slug": "hassum-thetaphibasemode-signedmoment--4807e9c061bd46b07ff56407",
  "source": {
    "blob": "80627356bd904b18e8f330661adc869c7a59d500",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 267,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4807e9c061bd46b07ff564078f222d44527ab9bf8a4e1232c2de46be7361606c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:affa0736-f851-3142-be8a-bd234b7a7b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_thetaPhiBaseMode_signedMoment
    (hident : ThetaPhiBaseGeneralizedTouchardIdentification)
    (n m : ℕ) (t : ℝ) :
    HasSum
      (fun l : ℕ =>
        (Real.pi * ((m : ℝ) + 1) ^ 2 *
          Real.exp (5 * t)) *
          (thetaPhiSignedMomentNode l ^ n *
            (-thetaModeY m t) ^ l /
              (l.factorial : ℝ)))
      (thetaPhiBaseModeValue n m t) := by
  have h :=
    (hasSum_thetaPhiGeneralizedSignedPoisson
      n (thetaModeY m t)).mul_left
        (Real.pi * ((m : ℝ) + 1) ^ 2 *
          Real.exp (5 * t))
  have hvalue :
      (Real.pi * ((m : ℝ) + 1) ^ 2 *
          Real.exp (5 * t)) *
          (Real.exp (-thetaModeY m t) *
            thetaPhiGeneralizedSignedTouchardValue
              n (thetaModeY m t)) =
        thetaPhiBaseModeValue n m t := by
    rw [← hident n (thetaModeY m t)]
    unfold thetaPhiBaseModeValue
      thetaPhiDerivativeModeWeight
    ring
  rw [← hvalue]
  exact h

/-- The generalized Touchard identification closes the previously recorded
analytic bridge for every finite theta-mode truncation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80627356bd904b18e8f330661adc869c7a59d500` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
