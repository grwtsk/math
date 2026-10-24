# actual_weak_second_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:defc8696-8f1f-2456-e80f-8020b49bce74",
  "kind": "theorem",
  "lexical_name": "actual_weak_second_derivative",
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
  "slug": "actual-weak-second-derivative--570585ff6a17cc8a6ba3a4a7",
  "source": {
    "blob": "629b8cbebe9a99eeab159d1fd0f53f8818a5f1a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 63,
    "path": "GRWTSK/Analysis/Distribution/CompactProfileDilation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:570585ff6a17cc8a6ba3a4a7baf469adb243fa5a8b379d19e212966f8c6254c9",
  "verification": {
    "reference": "docs/verification/Analysis/Distribution/CompactProfileDilation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:defc8696-8f1f-2456-e80f-8020b49bce74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_weak_second_derivative {A : ℝ} (hA : 0 < A) :
    GRWTSK.RiemannHypothesis.SourcePairing.IsWeakSecondDerivative
      (GRWTSK.RiemannHypothesis.SourcePairing.scaledBump A) (sourceSecond A) := by
  rw [← source_eq_scaled_bump hA]
  refine ⟨(source_continuous A).locallyIntegrable,
    (source_second_continuous A).locallyIntegrable, ?_⟩
  intro η smooth _compact
  have ηone : ContDiff ℝ 1 η := smooth.of_le (by simp)
  have ηderiv : ContDiff ℝ 1 (deriv η) :=
    (contDiff_infty_iff_deriv.mp smooth).2.of_le (by simp)
  have ηfirst := ηone.continuous_deriv_one
  have ηsecond := ηderiv.continuous_deriv_one
  have product (g : ℝ → ℝ) (hg : Continuous g) :=
    compact_product_integrable (source_continuous A) (source_hasCompactSupport hA) hg
  have firstProduct (g : ℝ → ℝ) (hg : Continuous g) :=
    compact_product_integrable (source_first_continuous A) (source_first_hasCompactSupport hA) hg
  have secondProduct := compact_product_integrable (source_second_continuous A)
    (source_second_hasCompactSupport hA) smooth.continuous
  refine ⟨secondProduct, product _ ηsecond, ?_⟩
  have firstParts := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := sourceFirst A) (u' := sourceSecond A) (v := η) (v' := deriv η)
    (fun x _ ↦ sourceFirst_hasDerivAt A x)
    (fun x _ ↦ (ηone.differentiable one_ne_zero).differentiableAt.hasDerivAt)
    (firstProduct _ ηfirst) secondProduct (firstProduct _ smooth.continuous)
  have secondParts := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := source A) (u' := sourceFirst A) (v := deriv η) (v' := deriv (deriv η))
    (fun x _ ↦ source_hasDerivAt A x)
    (fun x _ ↦ (ηderiv.differentiable one_ne_zero).differentiableAt.hasDerivAt)
    (product _ ηsecond) (firstProduct _ ηfirst) (product _ ηfirst)
  rw [firstParts, neg_neg] at secondParts
  exact secondParts.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Distribution/CompactProfileDilation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Distribution/CompactProfileDilation.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629b8cbebe9a99eeab159d1fd0f53f8818a5f1a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
