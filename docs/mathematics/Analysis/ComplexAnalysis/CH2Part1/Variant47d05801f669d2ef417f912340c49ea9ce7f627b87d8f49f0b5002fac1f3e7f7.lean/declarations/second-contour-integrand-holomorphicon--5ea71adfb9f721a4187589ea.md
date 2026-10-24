# second_contour_integrand_holomorphicOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77107576-7801-0c76-9414-26aae922e709",
  "kind": "lemma",
  "lexical_name": "second_contour_integrand_holomorphicOn",
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
  "slug": "second-contour-integrand-holomorphicon--5ea71adfb9f721a4187589ea",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4340,
    "line": 4309,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ea71adfb9f721a4187589ea7db79c79567e96896fce72b2d2e6c2c18ca9543a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77107576-7801-0c76-9414-26aae922e709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4309–4340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma second_contour_integrand_holomorphicOn (ν ε x : ℝ) (T : ℝ) (_hT : T ≥ 0) :
    HolomorphicOn (fun z ↦ Phi_star ν ε z * E (-z * x))
      (Rectangle (↑(-1/2 : ℝ)) (↑(0 : ℝ) - I * ↑T)) := by
  intro z hz
  apply DifferentiableWithinAt.mul
  · apply AnalyticAt.differentiableWithinAt
    apply Phi_star.analyticAt_of_not_pole_nz
    intro n hn h_eq
    have h_z_re : z.re = n := by
      replace h_eq := congr_arg Complex.re h_eq
      simp only [sub_re, intCast_re] at h_eq
      rw [pole_re] at h_eq
      simp only [sub_zero] at h_eq
      exact h_eq
    have h_re := hz.1
    simp only [Set.mem_preimage, ofReal_re, sub_re, mul_re, I_re, I_im, ofReal_im,
      zero_mul, mul_zero, sub_zero] at h_re
    rw [Set.uIcc_of_le (by norm_num), Set.mem_Icc, h_z_re] at h_re
    exact hn (unique_int_in_Icc n 0 h_re (by norm_num) (by norm_num))
  · dsimp [E]; apply DifferentiableAt.differentiableWithinAt; fun_prop

@[blueprint
  "second-contour-limit"
  (title := "Second contour limit")
  (statement := /--
\[
-\int_{-\frac{1}{2}-i\infty}^{-\frac{1}{2}} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz - \int_{-\frac{1}{2}}^{0} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz = \int_0^{-i\infty} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz.
\]
  -/)
  (proof := /-- Again by Cauchy's theorem and decay as $\Im z \to -\infty$ -/)
  (latexEnv := "sublemma")
  (discussion := 1086)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L4309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
