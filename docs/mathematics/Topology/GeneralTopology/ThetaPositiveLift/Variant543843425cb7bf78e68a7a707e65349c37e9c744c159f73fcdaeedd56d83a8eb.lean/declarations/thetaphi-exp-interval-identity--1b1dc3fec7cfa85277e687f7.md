# thetaPhi_exp_interval_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca2e105a880ce514a64556e457a92503762f5cb9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d68ef07c-5610-8d57-1151-f8223ebb9830",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e421f9b2-6374-97be-79ab-be908f4d033c",
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
  "slug": "thetaphi-exp-interval-identity--1b1dc3fec7cfa85277e687f7",
  "source": {
    "blob": "ca2e105a880ce514a64556e457a92503762f5cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b1dc3fec7cfa85277e687f7458b606a97f81b3006a8a2a2497fa0911beee92d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e421f9b2-6374-97be-79ab-be908f4d033c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–168.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca2e105a880ce514a64556e457a92503762f5cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
