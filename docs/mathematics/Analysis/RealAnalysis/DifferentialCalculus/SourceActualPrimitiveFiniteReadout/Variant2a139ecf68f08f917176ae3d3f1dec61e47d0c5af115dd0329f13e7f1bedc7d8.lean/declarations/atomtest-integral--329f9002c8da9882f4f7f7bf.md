# atomTest_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e388929-b36e-19d8-0c83-5cb7d760d8c3",
  "kind": "theorem",
  "lexical_name": "atomTest_integral",
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
  "slug": "atomtest-integral--329f9002c8da9882f4f7f7bf",
  "source": {
    "blob": "2c5fc8be7e78942cf7c1d2b35ec8257b0e6cf959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant2a139ecf68f08f917176ae3d3f1dec61e47d0c5af115dd0329f13e7f1bedc7d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:329f9002c8da9882f4f7f7bf3914d78a4e0997714737d79e89fc1c43effdd966",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant2a139ecf68f08f917176ae3d3f1dec61e47d0c5af115dd0329f13e7f1bedc7d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e388929-b36e-19d8-0c83-5cb7d760d8c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem atomTest_integral (l t : ℝ) :
    (∫ s in l..t, atomTest t s) =
      16 * Real.exp (t / 2) - Real.exp (l / 2) * (4 * (t - l) + 16) := by
  have hd (s : ℝ) : HasDerivAt
      (fun u : ℝ => Real.exp (u / 2) * (4 * (t - u) + 16)) (atomTest t s) s := by
    have he := ((hasDerivAt_id s).div_const 2).exp
    have hp := (((hasDerivAt_const s t).sub (hasDerivAt_id s)).const_mul 4).add_const 16
    exact (he.mul hp).congr_deriv
      (by dsimp only [id_eq, Pi.sub_apply]; unfold atomTest; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
    ((atomTest_contDiff t).continuous.intervalIntegrable l t)
  simpa only [sub_self, mul_zero, zero_mul, zero_add, mul_comm] using hi

/-- Exact finite Abel readout, including the actual lower error and full closed upper atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant2a139ecf68f08f917176ae3d3f1dec61e47d0c5af115dd0329f13e7f1bedc7d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant2a139ecf68f08f917176ae3d3f1dec61e47d0c5af115dd0329f13e7f1bedc7d8.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c5fc8be7e78942cf7c1d2b35ec8257b0e6cf959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
