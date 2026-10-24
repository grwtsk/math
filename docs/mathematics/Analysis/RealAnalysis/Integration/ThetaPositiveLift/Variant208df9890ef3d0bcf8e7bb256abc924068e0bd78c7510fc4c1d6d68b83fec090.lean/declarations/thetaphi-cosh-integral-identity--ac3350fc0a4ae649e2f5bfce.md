# thetaPhi_cosh_integral_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cca49af-b614-d750-8c0e-185eac1083a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fe1a775-1130-e83e-33de-cd892ae1eb83",
  "kind": "theorem",
  "lexical_name": "thetaPhi_cosh_integral_identity",
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
  "slug": "thetaphi-cosh-integral-identity--ac3350fc0a4ae649e2f5bfce",
  "source": {
    "blob": "d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 220,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac3350fc0a4ae649e2f5bfce2e0ef665b5a3891d26a34dbeb0ebf32d4a53b639",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fe1a775-1130-e83e-33de-cd892ae1eb83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_cosh_integral_identity (u : ℂ) :
    (8 : ℂ) * ∫ t in Ioi (0 : ℝ), thetaPhiCosh u t =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          ∫ t in Ioi (0 : ℝ), thetaACosh u t := by
  have hPhi := thetaPhiCosh_interval_tendsto u
  have hA := thetaACosh_interval_tendsto u
  have hleft :
      Tendsto
        (fun b : ℝ =>
          (8 : ℂ) * ∫ t in (0 : ℝ)..b, thetaPhiCosh u t)
        atTop
        (𝓝 ((8 : ℂ) * ∫ t in Ioi (0 : ℝ), thetaPhiCosh u t)) :=
    tendsto_const_nhds.mul hPhi
  have hscaledA :
      Tendsto
        (fun b : ℝ =>
          (4 * u ^ 2 - 1) *
            ∫ t in (0 : ℝ)..b, thetaACosh u t)
        atTop
        (𝓝 ((4 * u ^ 2 - 1) *
          ∫ t in Ioi (0 : ℝ), thetaACosh u t)) :=
    tendsto_const_nhds.mul hA
  have hright :
      Tendsto
        (fun b : ℝ =>
          (1 / 2 : ℂ) +
            (4 * u ^ 2 - 1) *
              (∫ t in (0 : ℝ)..b, thetaACosh u t) +
            thetaCoshBoundary u b)
        atTop
        (𝓝 ((1 / 2 : ℂ) +
          (4 * u ^ 2 - 1) *
            ∫ t in Ioi (0 : ℝ), thetaACosh u t)) := by
    simpa using
      (tendsto_const_nhds.add hscaledA).add
        (thetaCoshBoundary_tendsto_atTop u)
  have hright' :
      Tendsto
        (fun b : ℝ =>
          (8 : ℂ) * ∫ t in (0 : ℝ)..b, thetaPhiCosh u t)
        atTop
        (𝓝 ((1 / 2 : ℂ) +
          (4 * u ^ 2 - 1) *
            ∫ t in Ioi (0 : ℝ), thetaACosh u t)) := by
    apply Tendsto.congr'
      (Eventually.of_forall fun b => ?_) hright
    simpa [thetaPhiCosh, thetaACosh] using
      (thetaPhi_cosh_interval_identity u b).symm
  exact tendsto_nhds_unique hleft hright'

/-- Function-level positive theta representation of the repository's actual
centered xi function.  Every source transform and endpoint term is explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
