# even_homogeneous_residual_counterexample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ba1b178-dd51-e477-c88d-c847bce29f4b",
  "kind": "theorem",
  "lexical_name": "even_homogeneous_residual_counterexample",
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
  "slug": "even-homogeneous-residual-counterexample--1c2a34dc387fee89157f96b2",
  "source": {
    "blob": "349ab72f75cd0252e42b1aa152a62622da7ce6c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 78,
    "path": "GRWTSK/Analysis/TestFunctions/ExponentialMomentVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c2a34dc387fee89157f96b24fa3c82543b4e0ba9acdc43c330b8dc5d22e0d2d",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/ExponentialMomentVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ba1b178-dd51-e477-c88d-c847bce29f4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_homogeneous_residual_counterexample :
    let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) + Real.exp (-t / 2)
    Continuous f ∧ Function.Even f ∧ f 0 ≠ 0 ∧
      ∀ h : ℝ → ℝ, ContDiff ℝ ∞ h → HasCompactSupport h →
        Integrable (fun t ↦ f t * poleVariation h t) ∧
          (∫ t, f t * poleVariation h t) = 0 := by
  dsimp only
  refine ⟨by fun_prop, ?_, ?_, ?_⟩
  · intro t
    simp only [neg_neg]
    ring
  · norm_num
  · intro h hh hc
    obtain ⟨hpint, hp⟩ := pole_variation_exp_moment_zero hh hc
      (c := 1 / 2) (by norm_num)
    obtain ⟨hnint, hn⟩ := pole_variation_exp_moment_zero hh hc
      (c := -(1 / 2)) (by norm_num)
    have heqp : (fun t : ℝ ↦ Real.exp ((1 / 2) * t) * poleVariation h t) =
        (fun t : ℝ ↦ Real.exp (t / 2) * poleVariation h t) := by
      funext t
      congr 2
      ring
    have heqn : (fun t : ℝ ↦ Real.exp (-(1 / 2) * t) * poleVariation h t) =
        (fun t : ℝ ↦ Real.exp (-t / 2) * poleVariation h t) := by
      funext t
      congr 2
      ring
    rw [heqp] at hpint hp
    rw [heqn] at hnint hn
    constructor
    · simpa only [add_mul] using hpint.fun_add hnint
    · simp_rw [add_mul]
      rw [integral_add hpint hnint, hp, hn, add_zero]

end GRWTSK.RiemannHypothesis.PoleAdmissibleTest
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/ExponentialMomentVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/ExponentialMomentVariation.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349ab72f75cd0252e42b1aa152a62622da7ce6c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
