# varphi_fourier_inversion_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c08981fd-12b0-2d17-a903-a9c29608f91c",
  "kind": "lemma",
  "lexical_name": "varphi_fourier_inversion_re",
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
  "slug": "varphi-fourier-inversion-re--b5681922318e28f8104ed36b",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5372,
    "line": 5341,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5681922318e28f8104ed36b3099618a870323c2e36d041a263198bc42b84f5d",
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

Occurrence: `result:c08981fd-12b0-2d17-a903-a9c29608f91c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5341–5372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma varphi_fourier_inversion_re (ν ε : ℝ) (hlam : ν ≠ 0)
    (hf_hat_int : Integrable (𝓕 (ϕ_pm ν ε))) :
    ∫ x : ℝ, (𝓕 (ϕ_pm ν ε) x).re = (ϕ_pm ν ε 0).re := by
  have h_inv := (varphi_integ ν ε hlam).fourierInv_fourier_eq hf_hat_int (ϕ_continuous ν ε hlam).continuousAt (v := 0)
  erw [integral_re hf_hat_int, show ∫ x, 𝓕 (ϕ_pm ν ε) x = 𝓕⁻ (𝓕 (ϕ_pm ν ε)) 0 by rw [fourierInv_eq]; simp, h_inv]
  rfl


@[blueprint
  "varphi-fourier-minus-error"
  (title := "$L^1$ error bound for Fourier transform of $\\varphi^-$")
  (statement := /--
\[
\int_{-\infty}^{\infty} (I_\nu(x) - \hat{\varphi_\nu^-}(x))\, dx = \frac{1}{\nu} - \frac{1}{e^\nu - 1}.
\]
  -/)
  (proof := /--
  We know that $\varphi_\nu^\pm$ is continuous and in $L^1(\mathbb{R})$; by Corollary \ref{varphi-fourier-decay}, $\widehat{\varphi_\nu^\pm}$ is in $L^1(\mathbb{R})$. Hence, Fourier inversion holds everywhere, and in particular for $t = 0$:
\[
\varphi_\nu^\pm(0) = \int_{-\infty}^{\infty} \widehat{\varphi_\nu^\pm}(x)\, dx.
\]
By definition, $\varphi_\nu^\pm(0) = \Phi_\nu^{\pm,\circ}(0)$, and, by definition, $\Phi_\nu^{-,\circ}(0) = \frac{1}{e^\nu - 1}$ and $\Phi_\nu^{+,\circ}(0) = \frac{1}{1 - e^{-\nu}}$. Thus,
\[
\int_{-\infty}^{\infty} (I_\nu(x) - \widehat{\varphi_\nu^-}(x))\, dx = \frac{1}{\nu} - \frac{1}{e^\nu - 1},
\]
\[
\int_{-\infty}^{\infty} (\widehat{\varphi_\nu^+}(x) - I_\nu(x))\, dx = \frac{1}{1 - e^{-\nu}} - \frac{1}{\nu},
\]
since $\int_{-\infty}^{\infty} I_\nu(x)\, dx = 1/\nu$. We are done by Corollary \ref{Inu_bounds}.
-/)
  (latexEnv := "proposition")
  (discussion := 1231)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L5341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
