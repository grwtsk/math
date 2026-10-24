# thetaGaussianSum_poly_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f7a96ce-6aa0-8622-d8f0-f506fa3459f4",
  "kind": "theorem",
  "lexical_name": "thetaGaussianSum_poly_integrableOn",
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
  "slug": "thetagaussiansum-poly-integrableon--7ba17bd4eea72968e780c638",
  "source": {
    "blob": "36e39e1db8c72be2e2559aac7ad0ce96d2575d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ba17bd4eea72968e780c6382bea834ccebd885e7ac485b825aee6579a3923d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f7a96ce-6aa0-8622-d8f0-f506fa3459f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussianSum_poly_integrableOn (k c p : ℕ) :
    IntegrableOn (fun t => thetaGaussianSum k c t * t ^ p) (Ici (0 : ℝ)) := by
  let T : ℝ := (c : ℝ) + 3
  have hTpos : 0 < T := by dsimp [T]; positivity
  have hcont : Continuous (fun t => thetaGaussianSum k c t * t ^ p) :=
    (continuous_thetaGaussianSum k c).mul (continuous_id.pow p)
  have hinitial : IntegrableOn (fun t => thetaGaussianSum k c t * t ^ p) (Icc 0 T) :=
    hcont.continuousOn.integrableOn_Icc
  have hmajor : IntegrableOn (fun t : ℝ =>
      (HurwitzKernelBounds.F_nat k 1 (1 / 2) * (p.factorial : ℝ)) * Real.exp (-t)) (Ioi T) :=
    (integrableOn_exp_neg_Ioi T).const_mul _
  have htail : IntegrableOn (fun t => thetaGaussianSum k c t * t ^ p) (Ioi T) := by
    refine Integrable.mono' hmajor hcont.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact thetaGaussianSum_poly_norm_le_tail k c p (le_of_lt ht)
  apply (hinitial.union htail).mono_set
  intro t ht
  by_cases htT : t ≤ T
  · exact Or.inl ⟨ht, htT⟩
  · exact Or.inr (lt_of_not_ge htT)


/-- Exact first mode derivative as three polynomial Gaussian modes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36e39e1db8c72be2e2559aac7ad0ce96d2575d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
