# thetaPhi_exp_interval_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cefbc8dc-87d8-e1f5-dae9-4746d69b5fb6",
  "kind": "theorem",
  "lexical_name": "thetaPhi_exp_interval_identity",
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
  "slug": "thetaphi-exp-interval-identity--342e0b1ef6cb3ab039cb385d",
  "source": {
    "blob": "de95741e9db97643230c3c0558d228aa9a97e8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:342e0b1ef6cb3ab039cb385d71f545f7bb4db3f267ca3166a9d89854fe8cabf4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cefbc8dc-87d8-e1f5-dae9-4746d69b5fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_exp_interval_identity (u : ℂ) (b : ℝ) :
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b, (thetaPhi t : ℂ) * thetaExpKernel u t =
      thetaExpBoundary u b - thetaExpBoundary u 0 +
        (((2 * u) ^ 2 - 1) *
          ∫ t in (0 : ℝ)..b, (thetaA t : ℂ) * thetaExpKernel u t) := by
  let q : ℂ := (2 * u) ^ 2 - 1
  let phiPart : ℝ → ℂ := fun t =>
    (thetaPhi t : ℂ) * thetaExpKernel u t
  let aPart : ℝ → ℂ := fun t =>
    (thetaA t : ℂ) * thetaExpKernel u t
  let sourceDeriv : ℝ → ℂ := fun t =>
    (8 : ℂ) * phiPart t - q * aPart t
  have hphi : Continuous phiPart := by
    unfold phiPart
    exact continuous_thetaPhi_complex.mul (continuous_thetaExpKernel u)
  have ha : Continuous aPart := by
    unfold aPart
    exact continuous_thetaA_complex.mul (continuous_thetaExpKernel u)
  have hsource : Continuous sourceDeriv := by
    unfold sourceDeriv
    fun_prop
  have hftc :
      (∫ t in (0 : ℝ)..b, sourceDeriv t) =
        thetaExpBoundary u b - thetaExpBoundary u 0 := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt
    · intro t _
      unfold sourceDeriv phiPart aPart q
      convert! thetaExpBoundary_hasDerivAt u t using 1
      ring
    · exact Continuous.intervalIntegrable hsource _ _
  have hleft :
      IntervalIntegrable (fun t : ℝ => (8 : ℂ) * phiPart t) volume 0 b :=
    Continuous.intervalIntegrable (continuous_const.mul hphi) _ _
  have hright :
      IntervalIntegrable (fun t : ℝ => q * aPart t) volume 0 b :=
    Continuous.intervalIntegrable (continuous_const.mul ha) _ _
  have hsplit :
      (∫ t in (0 : ℝ)..b, sourceDeriv t) =
        (8 : ℂ) * (∫ t in (0 : ℝ)..b, phiPart t) -
          q * (∫ t in (0 : ℝ)..b, aPart t) := by
    unfold sourceDeriv
    rw [intervalIntegral.integral_sub hleft hright]
    simp only [intervalIntegral.integral_const_mul]
  rw [hsplit] at hftc
  dsimp only [phiPart, aPart, q] at hftc
  linear_combination hftc

/-- The lower boundary is explicit.  The odd term in `u` cancels when the
`u` and `-u` identities are averaged, while the remaining derivative value
is exactly the `-1/2` source endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de95741e9db97643230c3c0558d228aa9a97e8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
