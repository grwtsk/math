# reciprocal_prefix_power_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:376563e3-518b-5fee-6db9-47cf2af5a213",
  "kind": "theorem",
  "lexical_name": "reciprocal_prefix_power_integrable",
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
  "slug": "reciprocal-prefix-power-integrable--1d3918f410335af8e2342a71",
  "source": {
    "blob": "4c87af3ff5fdeeb0abb9e52d3f8b2be4e1eae889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant74dc1c61fc223af3d01caabbfde8f9a1e8fbd3017ec2aaed27ecdb0bbbac625a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d3918f410335af8e2342a71e920a1b742f6f6fdbe4f261a0bac8f7f88d91bb8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant74dc1c61fc223af3d01caabbfde8f9a1e8fbd3017ec2aaed27ecdb0bbbac625a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:376563e3-518b-5fee-6db9-47cf2af5a213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_prefix_power_integrable (X : ℕ) (z : ℂ) :
    IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)) (Set.Icc (1 : ℝ) X) := by
  have hl : ContinuousOn (fun x : ℝ => (Real.log x : ℂ)) (Set.Icc (1 : ℝ) X) :=
    Complex.continuous_ofReal.comp_continuousOn (Real.continuousOn_log.mono
      (fun x hx => ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  have hc : ContinuousOn (fun x : ℝ => powerWeight z x / (x : ℂ))
      (Set.Icc (1 : ℝ) X) := by
    unfold powerWeight
    exact (Complex.continuous_exp.comp_continuousOn
      (continuousOn_const.mul hl)).div Complex.continuous_ofReal.continuousOn
      (fun x hx => Complex.ofReal_ne_zero.mpr
        (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  have hi := integrableOn_mul_sum_Icc reciprocalCoefficient
    (m := 0) (by norm_num : (0 : ℝ) ≤ 1) hc.integrableOn_Icc
  simp_rw [reciprocal_prefix_eq] at hi
  convert hi using 1
  funext x
  simp only [powerWeight]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant74dc1c61fc223af3d01caabbfde8f9a1e8fbd3017ec2aaed27ecdb0bbbac625a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant74dc1c61fc223af3d01caabbfde8f9a1e8fbd3017ec2aaed27ecdb0bbbac625a.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c87af3ff5fdeeb0abb9e52d3f8b2be4e1eae889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
