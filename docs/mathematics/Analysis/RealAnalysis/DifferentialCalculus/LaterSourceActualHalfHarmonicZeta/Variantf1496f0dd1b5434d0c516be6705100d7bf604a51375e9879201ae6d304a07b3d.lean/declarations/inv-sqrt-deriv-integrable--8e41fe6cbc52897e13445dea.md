# inv_sqrt_deriv_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25d066b4-3cd5-ba09-c721-2172b576b2e9",
  "kind": "theorem",
  "lexical_name": "inv_sqrt_deriv_integrable",
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
  "slug": "inv-sqrt-deriv-integrable--8e41fe6cbc52897e13445dea",
  "source": {
    "blob": "28260fedd4836e7762722bdea9f76e2c1f054655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variantf1496f0dd1b5434d0c516be6705100d7bf604a51375e9879201ae6d304a07b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e41fe6cbc52897e13445dea374b6b89145ec00e9f76ad6768bb683eced84a0d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variantf1496f0dd1b5434d0c516be6705100d7bf604a51375e9879201ae6d304a07b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25d066b4-3cd5-ba09-c721-2172b576b2e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inv_sqrt_deriv_integrable (L : ℕ) :
    IntegrableOn (deriv (fun x : ℝ => 1 / Real.sqrt x)) (Icc (1 : ℝ) (L : ℝ)) := by
  have hc : ContinuousOn (fun x : ℝ => -1 / (2 * x * Real.sqrt x))
      (Icc (1 : ℝ) (L : ℝ)) := by
    intro x hx
    have hx0 : 0 < x := by linarith [hx.1]
    have hd : ContinuousAt (fun x : ℝ => 2 * x * Real.sqrt x) x := by fun_prop
    exact (continuousAt_const.div hd
      (ne_of_gt (by positivity : 0 < 2 * x * Real.sqrt x))).continuousWithinAt
  apply hc.integrableOn_Icc.congr_fun
  · intro x hx
    exact (inv_sqrt_hasDerivAt (by linarith [hx.1])).deriv.symm
  · exact measurableSet_Icc

/-- Exact finite harmonic calibration with the original signed zeta constant and true tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variantf1496f0dd1b5434d0c516be6705100d7bf604a51375e9879201ae6d304a07b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variantf1496f0dd1b5434d0c516be6705100d7bf604a51375e9879201ae6d304a07b3d.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28260fedd4836e7762722bdea9f76e2c1f054655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
