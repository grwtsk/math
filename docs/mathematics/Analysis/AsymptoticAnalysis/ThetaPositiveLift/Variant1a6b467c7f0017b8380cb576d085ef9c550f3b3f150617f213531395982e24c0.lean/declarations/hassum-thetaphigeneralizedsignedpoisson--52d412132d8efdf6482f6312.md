# hasSum_thetaPhiGeneralizedSignedPoisson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:407e009f-fb99-2458-9c0f-d2af0bcdb40d",
  "kind": "theorem",
  "lexical_name": "hasSum_thetaPhiGeneralizedSignedPoisson",
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
  "slug": "hassum-thetaphigeneralizedsignedpoisson--52d412132d8efdf6482f6312",
  "source": {
    "blob": "80627356bd904b18e8f330661adc869c7a59d500",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 201,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52d412132d8efdf6482f6312213855709d0864ee0a32ccbb47727061cd02b59f",
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

Occurrence: `result:407e009f-fb99-2458-9c0f-d2af0bcdb40d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_thetaPhiGeneralizedSignedPoisson
    (n : ℕ) (y : ℝ) :
    HasSum
      (fun l : ℕ =>
        thetaPhiSignedMomentNode l ^ n *
          (-y) ^ l / (l.factorial : ℝ))
      (Real.exp (-y) *
        thetaPhiGeneralizedSignedTouchardValue n y) := by
  have hsum :
      HasSum
        (fun l : ℕ =>
          ∑ j ∈ Finset.range (n + 1),
            ((n.choose j : ℝ) *
              (4 : ℝ) ^ j *
              (5 : ℝ) ^ (n - j)) *
                ((l : ℝ) ^ j *
                  (-y) ^ l / (l.factorial : ℝ)))
        (∑ j ∈ Finset.range (n + 1),
          ((n.choose j : ℝ) *
            (4 : ℝ) ^ j *
            (5 : ℝ) ^ (n - j)) *
              (Real.exp (-y) *
                thetaPhiSignedTouchardValue j y)) := by
    exact hasSum_sum fun j hj =>
      (hasSum_signedTouchard j y).mul_left
        ((n.choose j : ℝ) *
          (4 : ℝ) ^ j *
          (5 : ℝ) ^ (n - j))
  convert hsum using 1
  · funext l
    have hnode :
        thetaPhiSignedMomentNode l =
          (4 : ℝ) * (l : ℝ) + 5 := by
      norm_num [thetaPhiSignedMomentNode]
    rw [hnode, add_pow, Finset.sum_mul, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro j hj
    ring
  · unfold thetaPhiGeneralizedSignedTouchardValue
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    ring

/-- The signed-Poisson series itself evaluates to the generalized signed
Touchard value after multiplication by exp(y). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80627356bd904b18e8f330661adc869c7a59d500` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
