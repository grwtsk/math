# first_contour_integrand_holomorphicOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eef9cd85-8a5e-45e2-ee71-ba54fb3edd41",
  "kind": "lemma",
  "lexical_name": "first_contour_integrand_holomorphicOn",
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
  "slug": "first-contour-integrand-holomorphicon--4b5212c1780f633233026a8a",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4105,
    "line": 4074,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b5212c1780f633233026a8a510f5a40e6118bd0b34a32966cb6485434084974",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef9cd85-8a5e-45e2-ee71-ba54fb3edd41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4074–4105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma first_contour_integrand_holomorphicOn (ν ε x : ℝ) (z' w' z₀ : ℂ)
    (hz₀ : z₀ = -(I * ν) / (2 * π))
    (h_rect_re : Set.uIcc z'.re w'.re = Set.Icc (-1 / 2 : ℝ) (1 / 2)) :
    HolomorphicOn (fun z ↦ Phi_circ ν ε z * E (-z * x)) (Rectangle z' w' \ {z₀}) := by
  intro z hz
  apply DifferentiableAt.differentiableWithinAt
  apply DifferentiableAt.mul
  · apply AnalyticAt.differentiableAt
    apply Phi_circ.analyticAt_of_not_pole ν ε z
    intro n hn
    by_cases hn0 : n = 0
    · subst hn0; have : z = z₀ := by rw [hn, hz₀]; ring
      exact hz.2 this
    · have hz_re : z.re ∈ Set.Icc (-1 / 2 : ℝ) (1 / 2) := h_rect_re ▸ hz.1.1
      rw [hn, Complex.sub_re, pole_re ν, sub_zero, Complex.intCast_re] at hz_re
      exact hn0 (unique_int_in_Icc n 0 hz_re (by norm_num) (by norm_num))
  · apply DifferentiableAt.comp
    · exact analyticAt_cexp.differentiableAt
    · fun_prop

@[blueprint
  "first-contour-limit"
  (title := "First contour limit")
  (statement := /--
\[
\int_{-\frac{1}{2}-i\infty}^{-\frac{1}{2}} \Phi^{\pm,\circ}_{\nu}(z)\, e(-zx)\, dz + \int_{-\frac{1}{2}}^{\frac{1}{2}} \Phi^{\pm,\circ}_{\nu}(z)\, e(-zx)\, dz + \int_{\frac{1}{2}}^{\frac{1}{2}-i\infty} \Phi^{\pm,\circ}_{\nu}(z)\, e(-zx)\, dz = e\!\left(-\!\left(-\frac{i\nu}{2\pi}\right)x\right) = e^{-\nu x}
\]
  -/)
  (proof := /-- since the pole is at $-\frac{i\nu}{2\pi}$, the residue of $\Phi^{\pm,\circ}_{\nu}(z)$ at the pole is $\frac{i}{2\pi}$, and our path goes clockwise.
. -/)
  (latexEnv := "sublemma")
  (discussion := 1085)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L4074).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
