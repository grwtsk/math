# jointLogKernel_first_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f5a7767-0d49-a752-9159-5fe739dd0b38",
  "kind": "theorem",
  "lexical_name": "jointLogKernel_first_moment",
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
  "slug": "jointlogkernel-first-moment--cfb3ba1ed9ea9c494e0e7496",
  "source": {
    "blob": "0fa26f4c71b597578d9326548c33f91f461a1c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant1edb85e9d772e5f8d94e4b796463ff12cc2b41997e4dc6fee6ab1eec4bd46753.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb3ba1ed9ea9c494e0e749636c2014a28b7bd9759f8385a11c4e3c3ae1a8817",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant1edb85e9d772e5f8d94e4b796463ff12cc2b41997e4dc6fee6ab1eec4bd46753.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f5a7767-0d49-a752-9159-5fe739dd0b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointLogKernel_first_moment (b : ℝ) :
    (∫ t in 0..b, t * jointLogKernel b t) =
      Real.exp (b / 2) + Real.exp (-b / 2) - 2 := by
  let P : ℝ → ℝ := fun t =>
    Real.exp (-b / 2) * ((t - 1) * Real.exp t) - (t - 2) * Real.exp (t / 2)
  have hd : ∀ t : ℝ, HasDerivAt P (t * jointLogKernel b t) t := by
    intro t
    have hf := (((hasDerivAt_id t).sub_const 1).mul (Real.hasDerivAt_exp t)).const_mul
      (Real.exp (-b / 2))
    have hg := ((hasDerivAt_id t).sub_const 2).mul
      ((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2))
    exact (hf.sub hg).congr_deriv (by
      dsimp only [jointLogKernel, Function.comp_def, id_eq]
      ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((continuous_id.mul (jointLogKernel_continuous b)).intervalIntegrable 0 b)
  have he : Real.exp (-b / 2) * Real.exp b = Real.exp (b / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [hi]
  dsimp only [P]
  simp only [zero_div, Real.exp_zero, mul_one, zero_sub]
  calc
    _ = (b - 1) * (Real.exp (-b / 2) * Real.exp b) -
        (b - 2) * Real.exp (b / 2) + Real.exp (-b / 2) - 2 := by ring
    _ = _ := by rw [he]; ring

/-- The constant gamma is compensated jointly; its kernel mass is bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant1edb85e9d772e5f8d94e4b796463ff12cc2b41997e4dc6fee6ab1eec4bd46753.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant1edb85e9d772e5f8d94e4b796463ff12cc2b41997e4dc6fee6ab1eec4bd46753.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fa26f4c71b597578d9326548c33f91f461a1c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
