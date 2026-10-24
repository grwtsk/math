# deriv_dilationOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d48eff4-4f3b-01a5-0281-7752a86182f5",
  "kind": "theorem",
  "lexical_name": "deriv_dilationOperator",
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
  "slug": "deriv-dilationoperator--bc57d552128b99ea39cb4102",
  "source": {
    "blob": "907a2a3ff957d11c68d3f7107e246c3e4a71881a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variant03365feeece114c2e19d1f7e11a846d5fc652e8a10c514eae39ccacc0dee1064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc57d552128b99ea39cb4102943e16d1ff24a06b404e58a5ece9acae8371f6e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variant03365feeece114c2e19d1f7e11a846d5fc652e8a10c514eae39ccacc0dee1064.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d48eff4-4f3b-01a5-0281-7752a86182f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_dilationOperator {h : ℝ → ℝ} (hc : ContDiff ℝ 3 h) (A x : ℝ) :
    deriv (dilationOperator h A) x = A⁻¹ * dilationOperator (deriv h) A x := by
  have hc2 : ContDiff ℝ 2 h := hc.of_le (by norm_num)
  have hc' : ContDiff ℝ 2 (deriv h) := hc.deriv'
  have heq : dilationOperator h A = fun y ↦
      (deriv (deriv h) (y / A) / A ^ 2 - h (y / A) / 4) / Real.sqrt A := by
    funext y
    exact dilationOperator_eq hc2 A y
  rw [heq]
  have hd := ((((hc'.differentiable_deriv_two (x / A)).hasDerivAt.comp x
    ((hasDerivAt_id x).div_const A)).div_const (A ^ 2)).sub
      (((hc.differentiable (by norm_num) (x / A)).hasDerivAt.comp x
        ((hasDerivAt_id x).div_const A)).div_const 4)).div_const (Real.sqrt A)
  change HasDerivAt (fun y ↦
      (deriv (deriv h) (y / A) / A ^ 2 - h (y / A) / 4) / Real.sqrt A)
    ((deriv (deriv (deriv h)) (x / A) * (1 / A) / A ^ 2 -
      deriv h (x / A) * (1 / A) / 4) / Real.sqrt A) x at hd
  rw [hd.deriv, dilationOperator_eq hc']
  ring

/-- The normalizing factor is constant in the spatial variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variant03365feeece114c2e19d1f7e11a846d5fc652e8a10c514eae39ccacc0dee1064.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variant03365feeece114c2e19d1f7e11a846d5fc652e8a10c514eae39ccacc0dee1064.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907a2a3ff957d11c68d3f7107e246c3e4a71881a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
