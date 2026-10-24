# bump_laplace_moment_ode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44864acd-d565-eaa4-fa3f-3f4de525d08e",
  "kind": "theorem",
  "lexical_name": "bump_laplace_moment_ode",
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
  "slug": "bump-laplace-moment-ode--b3986e046849bbb2e0eaa651",
  "source": {
    "blob": "b68ce8b2791c958889ebad8f34616976f3abbf8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3986e046849bbb2e0eaa651a4ab4f7df6195acd3d229a2bc9634e5d5d7d148f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44864acd-d565-eaa4-fa3f-3f4de525d08e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bump_laplace_moment_ode (z : ℂ) :
    z * bumpLaplaceMoment 2 z + 10 * bumpLaplaceMoment 1 z = z * bumpLaplace z := by
  let F : ℝ → ℂ := fun x ↦ (((1 - x ^ 2) ^ 5 : ℝ) : ℂ) * Complex.exp (z * (x : ℂ))
  let F' : ℝ → ℂ := fun x ↦ z *
    ((((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp (z * (x : ℂ))) -
    z * ((x : ℂ) ^ 2 * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp (z * (x : ℂ))) -
    10 * ((x : ℂ) * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp (z * (x : ℂ)))
  have hd (x : ℝ) : HasDerivAt F (F' x) x := by
    have hp := ((hasDerivAt_const x (1 : ℝ)).sub ((hasDerivAt_id x).pow 2)).pow 5
    have he := (((hasDerivAt_id x).ofReal_comp).const_mul z).cexp
    have h := hp.ofReal_comp.mul he
    convert h using 1 <;> try rfl
    dsimp [F']
    push_cast
    ring
  have hi : IntervalIntegrable F' volume (-1) 1 :=
    (by dsimp [F']; fun_prop : Continuous F').intervalIntegrable _ _
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ ↦ hd x) hi
  have hzero : F 1 - F (-1) = 0 := by norm_num [F]
  rw [hzero] at h
  dsimp [F'] at h
  rw [intervalIntegral.integral_sub
    ((by fun_prop : Continuous _).intervalIntegrable _ _)
    ((by fun_prop : Continuous _).intervalIntegrable _ _),
    intervalIntegral.integral_sub
    ((by fun_prop : Continuous _).intervalIntegrable _ _)
    ((by fun_prop : Continuous _).intervalIntegrable _ _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul] at h
  have hm : (∫ x in (-1 : ℝ)..1, (x : ℂ) * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (z * (x : ℂ))) = bumpLaplaceMoment 1 z := by simp [bumpLaplaceMoment]
  rw [hm] at h
  change z * bumpLaplace z - z * bumpLaplaceMoment 2 z - 10 * bumpLaplaceMoment 1 z = 0 at h
  linear_combination -h

/-- The radial source function is the actual complex transform on a fixed ray. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1f3ef636747f742891d9SourceBumpLaplace/Variant4bc7e737e44c0331a70bb5ce178fbcdb66ec3a5d92233440e42fdc5a13541198.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b68ce8b2791c958889ebad8f34616976f3abbf8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
