# ae_eq_const_or_norm_integral_lt_of_norm_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7cd79dd-8b22-9640-5d23-907c9051b6d7",
  "kind": "theorem",
  "lexical_name": "ae_eq_const_or_norm_integral_lt_of_norm_le_const",
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
  "slug": "ae-eq-const-or-norm-integral-lt-of-norm-le-const--e6ea9df0b0ed20821e1a3e6e",
  "source": {
    "blob": "2fa4c96abcb589f7ad9dd1ca5590e1078660981b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 331,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6ea9df0b0ed20821e1a3e6ea83769aff51807e85648a408f23247d17e2d8e48",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7cd79dd-8b22-9640-5d23-907c9051b6d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_const_or_norm_integral_lt_of_norm_le_const [StrictConvexSpace ℝ E] [IsFiniteMeasure μ]
    (h_le : ∀ᵐ x ∂μ, ‖f x‖ ≤ C) :
    f =ᵐ[μ] const α (⨍ x, f x ∂μ) ∨ ‖∫ x, f x ∂μ‖ < μ.real univ * C := by
  rcases eq_or_ne μ 0 with h₀ | h₀; · simp [h₀, EventuallyEq]
  have hμ : 0 < μ.real univ := by
    simp [measureReal_def, ENNReal.toReal_pos_iff, pos_iff_ne_zero, h₀, measure_lt_top]
  refine (ae_eq_const_or_norm_average_lt_of_norm_le_const h_le).imp_right fun H => ?_
  rwa [average_eq, norm_smul, norm_inv, Real.norm_eq_abs, abs_of_pos hμ, ← div_eq_inv_mul,
    div_lt_iff₀' hμ] at H

/-- If `E` is a strictly convex normed space and `f : α → E` is a function such that `‖f x‖ ≤ C`
a.e. on a set `t` of finite measure, then either this function is a.e. equal to its average value on
`t`, or the norm of its integral over `t` is strictly less than `μ.real t * C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fa4c96abcb589f7ad9dd1ca5590e1078660981b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
