# reflectedSample_actual_finite_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88e068f9-7da0-8965-d5e0-f308f8a0d96a",
  "kind": "theorem",
  "lexical_name": "reflectedSample_actual_finite_integral_zero",
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
  "slug": "reflectedsample-actual-finite-integral-zero--a3e530a5b4c919f490693d03",
  "source": {
    "blob": "c1e6de0944c3a0cd834a7dba52347e2559e54acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 343,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3e530a5b4c919f490693d03f8ec34d1f4e7b6a25a99fd36c0323060e28bddba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88e068f9-7da0-8965-d5e0-f308f8a0d96a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedSample_actual_finite_integral_zero (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 - A ≤ x) :
    (∫ u in (0 : ℝ)..((sourceKernelCutoff A + 1 : ℕ) : ℝ), reflectedSample A x u) = 0 := by
  have hs : support (reflectedSample A x) ⊆ Ioc 0 ((sourceKernelCutoff A + 1 : ℕ) : ℝ) := by
    intro u hu
    constructor
    · by_contra h
      exact hu (reflectedSample_eq_zero_of_nonpos A x (le_of_not_gt h))
    · by_contra h
      exact hu (reflectedSample_actual_upper_tail A x hA hx u (le_of_lt (lt_of_not_ge h)))
  have he : (∫ u : ℝ, reflectedSample A x u) =
      ∫ u in Ioi (0 : ℝ), reflectedSample A x u :=
    (setIntegral_eq_integral_of_forall_compl_eq_zero
      (fun u hu => reflectedSample_eq_zero_of_nonpos A x (le_of_not_gt hu))).symm
  rw [intervalIntegral.integral_eq_integral_of_support_subset hs, he,
    reflectedSample_positive_integral_zero A x hA]

/-- Above-one quadrature is exactly the declared actual q-prime fractional remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e6de0944c3a0cd834a7dba52347e2559e54acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
