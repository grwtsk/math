# identity_16_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca21dbd7-5453-9cca-cbfb-ac56adbf4352",
  "kind": "theorem",
  "lexical_name": "identity_16_complex",
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
  "slug": "identity-16-complex--6a8440f3a81e13cfe11b64c2",
  "source": {
    "blob": "6326567f538c80e40d2edd733922ee69b10b823a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 368,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variantec4a0c436037d0d21eeac8b92b3059f8d3301f468f8c28e00a299a646818cfb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a8440f3a81e13cfe11b64c25b9839ff479bf815596e0fe02a63545a8a1ed984",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Kadiri/Variantec4a0c436037d0d21eeac8b92b3059f8d3301f468f8c28e00a299a646818cfb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca21dbd7-5453-9cca-cbfb-ac56adbf4352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem identity_16_complex {d : ℝ} (hd : 0 < d) {f : ℝ → ℝ}
    (hf_C2 : ContDiffOn ℝ 2 f (.Icc 0 d))
    (hf_supp : tsupport f ⊆ .Ico 0 d)
    (hf_d : f d = 0)
    (hf_deriv_0 : deriv f 0 = 0)
    (hf_deriv_d : deriv f d = 0)
    (hf_deriv2_d : deriv (deriv f) d = 0)
    {s : ℂ} (hs : 1 < s.re) :
    (∑' n : ℕ, (Λ n : ℂ) / (n : ℂ) ^ s * ((f (Real.log n) : ℝ) : ℂ)) =
      (f 0 : ℂ) * ((∑' n : ℕ, (Λ n : ℂ) / (n : ℂ) ^ s)
                    - 1 / (s - 1)
                    + ∑' ρ : riemannZeta.zeroes_rect (.Ioo 0 1) (.univ : Set ℝ),
                        1 / (s - ρ.val))
      + laplaceTransform f (s - 1)
      - ∑' ρ : riemannZeta.zeroes_rect (.Ioo 0 1) (.univ : Set ℝ),
          laplaceTransform f (s - ρ.val)
      + ((1 / (2 * (Real.pi : ℂ) * I)) *
          (∫ t : ℝ,
            ((digamma ((1 / 2 + (t : ℂ) * I) / 2)).re : ℂ) *
              laplaceTransform (fun u ↦ deriv (deriv f) u) (s - (1 / 2 + (t : ℂ) * I))
              / (s - (1 / 2 + (t : ℂ) * I)) ^ 2)
          + laplaceTransform (fun u ↦ deriv (deriv f) u) s / s ^ 2) := by
  sorry

@[blueprint
  "kadiri-identity-16"
  (title := "Equation (16) of \\cite{Kadiri2005}: intermediate identity")
  (statement := /-- Under the hypotheses of \ref{kadiri-prop-2-1}: for every
  $s \in \mathbb{C}$ with $\Re s > 1$,
  $$ \Re \sum_{n \geq 1} \frac{\Lambda(n)}{n^s} f(\log n)
   = f(0) \Re \Bigl( \sum_{n \geq 1} \frac{\Lambda(n)}{n^s} - \frac{1}{s - 1}
                     + \sum_{\rho \in Z(\zeta)} \frac{1}{s - \rho} \Bigr)
   + \Re F(s - 1) - \sum_{\rho \in Z(\zeta)} \Re F(s - \rho)
   + \Re \Bigl( \frac{1}{2\pi i} \int_{1/2 - i\infty}^{1/2 + i\infty}
       \Re \tfrac{\Gamma'}{\Gamma}\!\left(\tfrac{z}{2}\right) \frac{F_2(s - z)}{(s - z)^2}\, dz
       + \frac{F_2(s)}{s^2} \Bigr). $$
  This is the real-part form of \ref{kadiri-identity-16-complex}; the substantive
  derivation from \ref{kadiri-thm-3-1-q1} via the Kadiri test function
  $\varphi(y) = (f(0) - f(y)) e^{-y s} \mathbf{1}_{y \geq 0}$ lives in that sublemma.
  The restriction $\Re s > 1$ is where the Dirichlet series for $-\zeta'/\zeta(s)$
  converges absolutely and the $\sum_\rho 1/(s - \rho)$ regularization makes sense; this
  is also the range used in Kadiri's downstream zero-free region argument, so we do not
  extend further. -/)
  (proof := /-- Apply \ref{kadiri-identity-16-complex} to obtain the $\mathbb{C}$-valued
  equation, then take real parts of both sides. The $f(0)$ factor extracts via
  $\Re((f(0) : \mathbb{C}) \cdot X) = f(0) \cdot \Re X$ (since $f(0) \in \mathbb{R}$), and
  the $\rho$-tsum commutes with $\Re$ via the continuous linear map
  $\Re \colon \mathbb{C} \to \mathbb{R}$ (`ContinuousLinearMap.map\_tsum`), modulo complex
  summability of $\sum_\rho F(s - \rho)$ — derivable from
  \ref{kadiri-summable-lap-at-zeros} together with the analogous Im-summability (would need
  a `laplaceTransform\_im\_decay` lemma paralleling \ref{kadiri-laplace-re-decay}). To be
  formalised. -/)
  (latexEnv := "lemma")
  (discussion := 1488)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Kadiri/Variantec4a0c436037d0d21eeac8b92b3059f8d3301f468f8c28e00a299a646818cfb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variantec4a0c436037d0d21eeac8b92b3059f8d3301f468f8c28e00a299a646818cfb8.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6326567f538c80e40d2edd733922ee69b10b823a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
