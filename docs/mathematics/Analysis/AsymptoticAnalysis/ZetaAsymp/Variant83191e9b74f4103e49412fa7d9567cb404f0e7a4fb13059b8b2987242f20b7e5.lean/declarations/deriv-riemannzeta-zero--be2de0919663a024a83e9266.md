# deriv_riemannZeta_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9a493b0-97ca-9a40-97e0-5436e120aced",
  "kind": "theorem",
  "lexical_name": "deriv_riemannZeta_zero",
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
  "slug": "deriv-riemannzeta-zero--be2de0919663a024a83e9266",
  "source": {
    "blob": "4b48e76570fde4bd3040098013184e9afc81887a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 504,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be2de0919663a024a83e92662d78ea5bd95d847e1651ef25656656b92bff87c8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9a493b0-97ca-9a40-97e0-5436e120aced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_riemannZeta_zero :
    deriv riemannZeta 0 = -log (2 * π) / 2 := by
  rw [funext riemannZeta_eq_mul_completedRiemannZeta₀]
  apply HasDerivAt.deriv
  have h₁ : HasDerivAt ((id * completedRiemannZeta₀ - 1) - id / (1 - id)) _ 0 :=
    .sub
      (.sub (.mul (hasDerivAt_id 0) differentiable_completedZeta₀.differentiableAt.hasDerivAt)
        (hasDerivAt_const 0 1))
      (.div (hasDerivAt_id 0) (.sub (hasDerivAt_const 0 1) (hasDerivAt_id 0)) (by simp))
  have h₂ : HasDerivAt ((fun x : ℂ => 2) * fun (x : ℂ) => (π : ℂ) ^ (-x / 2)) _ 0 :=
    .mul (hasDerivAt_const 0 2) <|
    .cpow (hasDerivAt_const 0 _) (.div_const (.neg <| hasDerivAt_id 0) 2) (by simp [Real.pi_pos])
  have h₃ : HasDerivAt (Gamma ∘ fun x => x / 2 + 1) (deriv Gamma (0 / 2 + 1) * (1 / 2 + 0)) 0 := by
    refine (differentiableAt_Gamma _ ?_).hasDerivAt.comp 0 ?_
    · simp only [zero_div]
      norm_cast
      simp
    · exact ((hasDerivAt_id 0).div_const 2).add (hasDerivAt_const 0 1)
  suffices h : -(log (2 * π) * 2) = γ - log (2 * 2 * π) + (-log π + -γ) by
    norm_num only at h
    convert! h₁.mul ((h₂.mul h₃).inv (by simp)) using 1
    simpa [completedRiemannZeta₀_zero, hasDerivAt_Gamma_one.deriv, field]
  open ComplexOrder in
  repeat rw [log_mul (by positivity) (by positivity) (by simp [arg, LT.lt.le, Real.pi_pos])]
  ring

section near_one

/-!
## More asymptotics near `s = 1`

To facilitate the analysis of `riemannZeta` near `s = 1`, we write `riemannZeta s` additively as
`(s-1)⁻¹ + riemannZeta₀ s` and multiplicatively as `(s-1)⁻¹ * riemannZeta₁ s` for certain
entire functions `riemannZeta₀`, `riemannZeta₁`.
-/

open Asymptotics

/-- `riemannZeta₀ s` is the completion of `riemannZeta s - (s-1)⁻¹` at `s = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b48e76570fde4bd3040098013184e9afc81887a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
