# psi_integral_log_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05af073b-0b08-bd4e-719d-b1994eb02375",
  "kind": "theorem",
  "lexical_name": "psi_integral_log_dictionary",
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
  "slug": "psi-integral-log-dictionary--529c02b0fef20e0e699aaa71",
  "source": {
    "blob": "ccddc1edd5c8338a7d4cdddaf6404af304da79b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:529c02b0fef20e0e699aaa71c9d50e512123022c152ef2e2c229a9c6323ba011",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05af073b-0b08-bd4e-719d-b1994eb02375`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_integral_log_dictionary (t : ℝ) :
    (∫ x in Ioc (1:ℝ) (Real.exp t), Chebyshev.psi x / x^2) =
      ∫ u in Ioc (0:ℝ) t, (1+psiRelativeError u) := by
  have hj := integral_image_eq_integral_abs_deriv_smul
    (s:=Ioc (0:ℝ) t) measurableSet_Ioc
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn (fun x : ℝ => Chebyshev.psi x / x^2)
  have he : (fun u : ℝ => |Real.exp u| • (Chebyshev.psi (Real.exp u)/(Real.exp u)^2)) =
      fun u : ℝ => 1+psiRelativeError u := by
    funext u
    rw [abs_of_pos (Real.exp_pos u),smul_eq_mul]
    unfold psiRelativeError
    rw [Real.exp_neg]
    field_simp
    ring
  simpa only [Real.image_exp_Ioc,Real.exp_zero,he] using hj

/-- Exact finite source dictionary for every real nonnegative height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccddc1edd5c8338a7d4cdddaf6404af304da79b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
