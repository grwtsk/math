# boundary_transform_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85a88ad0-a993-07bb-9a90-865941b5e336",
  "kind": "theorem",
  "lexical_name": "boundary_transform_exact",
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
  "slug": "boundary-transform-exact--d45eae14f82b2cc1546f16c3",
  "source": {
    "blob": "5436f7e84dd9a781a2135757f711d7d4ddb6ecd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d45eae14f82b2cc1546f16c358a06fc6564d43f1380cab30dbb2a357d54dd2e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85a88ad0-a993-07bb-9a90-865941b5e336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_transform_exact {A : ℝ} (hA : 1 ≤ A) (lambda : ℂ) :
    boundaryTransform A lambda = -lambda*(A : ℂ)^9*
      Complex.exp (-(2*lambda+1)*(A : ℂ))*normalizedTransform A (lambda+1/2)^2 := by
  have he (y : ℝ) : (boundaryWorkKernel A y : ℂ)*Complex.exp (-lambda*(y : ℂ)) =
      ((A : ℂ)^9*Complex.exp (-(A : ℂ)-lambda*(2*A : ℝ))) *
        (Complex.exp (lambda*((2*A-y : ℝ) : ℂ))*
          (deriv (criticalPrimeTest A) (2*A-y) : ℂ)) := by
    unfold boundaryWorkKernel
    push_cast
    rw [Complex.ofReal_exp]
    have hex : Complex.exp (-(A : ℂ))*Complex.exp (-lambda*(y : ℂ)) =
        Complex.exp (-(A : ℂ)-lambda*(2*(A : ℂ)))*
          Complex.exp (lambda*(2*(A : ℂ)-(y : ℂ))) := by
      rw [← Complex.exp_add,← Complex.exp_add]
      congr 1
      ring
    rw [hex]
    ring
  unfold boundaryTransform
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul]
  have href := intervalIntegral.integral_comp_sub_left
    (fun t : ℝ => Complex.exp (lambda*(t : ℂ))*(deriv (criticalPrimeTest A) t : ℂ))
    (a := 0) (b := 4*A) (2*A)
  have href' : (∫ y in 0..4*A, Complex.exp (lambda*((2*A-y : ℝ) : ℂ))*
        (deriv (criticalPrimeTest A) (2*A-y) : ℂ)) =
      ∫ t in -(2*A)..2*A, Complex.exp (lambda*(t : ℂ))*(deriv (criticalPrimeTest A) t : ℂ) := by
    simpa only [show 2*A-4*A=-(2*A) by ring,sub_zero] using href
  rw [href',critical_complex_ibp hA]
  push_cast
  rw [show -(A : ℂ)-lambda*(2*(A : ℂ))=-(2*lambda+1)*(A : ℂ) by ring]
  ring

end ContinuousResearch.SourceBoundaryTransform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5436f7e84dd9a781a2135757f711d7d4ddb6ecd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
