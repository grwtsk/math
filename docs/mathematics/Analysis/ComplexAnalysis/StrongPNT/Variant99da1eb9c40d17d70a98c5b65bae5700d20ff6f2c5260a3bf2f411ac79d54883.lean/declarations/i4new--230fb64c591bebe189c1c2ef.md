# I4New

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df7dcd0a85133ddec1eda0358eb736b6e8716af47c8ab583825d2b8e5da9729b",
  "kind": "def",
  "lexical_name": "I4New",
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
  "slug": "i4new--230fb64c591bebe189c1c2ef",
  "source": {
    "blob": "610379f6a0b81a1ea6f64616e35c89a4ada2aba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2180,
    "line": 2148,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:230fb64c591bebe189c1c2efd6e64981715959787cadcfe06d53a258d3ec5fc2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df7dcd0a85133ddec1eda0358eb736b6e8716af47c8ab583825d2b8e5da9729b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2148–2180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def I4New (SmoothingF : ℝ → ℝ) (ε T X σ' : ℝ) : ℂ :=
  (1 / (2 * π * I)) * ((∫ σ₀ in σ'..(1 + (Real.log X)⁻¹),
    SmoothedChebyshevIntegrand SmoothingF ε X (σ₀ + T * I)))



@[blueprint
  (title := "I2NewBound")
  (statement := /--
    We have that
    $$|I_2(\nu,\varepsilon,X,T)|\ll\frac{X}{\varepsilon\sqrt{T}}.$$
  -/)
  (proof := /--
    Note that $|I_2(\nu,\varepsilon,X,T)|=$
    $$\left|\frac{1}{2\pi i}\int_{\sigma'}^\sigma\left(-\frac{\zeta'}{\zeta}(\sigma_0-iT)\right)
      \,\mathcal{M}(\tilde{1}_\varepsilon)(\sigma_0-iT)\,X^{\sigma_0-iT}\,d\sigma_0\right|
      \ll\int_{\sigma'}^\sigma\left|\frac{\zeta'}{\zeta}(\sigma_0-iT)\right|
      \cdot|\mathcal{M}(\tilde{1}_\varepsilon)(\sigma_0-iT)|\cdot X^{\sigma_0}\,d\sigma_0.$$
    Applying Theorem \ref{LogDerivZetaUniformLogSquaredBound} and Lemma \ref{MellinOfSmooth1b},
    we have that
    $$|I_2(\nu,\varepsilon,X,T)|\ll\int_{\sigma'}^\sigma\log^2 T
      \cdot\frac{X^{\sigma_0}}{\varepsilon\,|\sigma_0-iT|^2}\,d\sigma_0
      \ll\frac{X\,\log^2T}{\varepsilon\,T^2}\int_{\sigma'}^\sigma d\,\sigma_0
      =\frac{X\,\log^2T}{\varepsilon\,T^2}\,(\sigma-\sigma').$$
    Here we are using the fact that $X^{\sigma_0}\leq X^\sigma=X\cdot X^{1/\log X}=eX$
    and $|\sigma_0-iT|^2\geq T^2$. Now note that
    $$|I_2(\nu,\varepsilon,X,T)|\ll\frac{X\,\log^2T}{\varepsilon\,T^2}\,(\sigma-\sigma')
      =\frac{X\,\log^2T}{\varepsilon\,T^2\,\log X}+\frac{FX\,\log T}{\varepsilon\,T^2}
      \ll\frac{X}{\varepsilon\sqrt{T}}.$$
    Here we are using the fact that $\log T\ll T^{3/2}$, $\log^2T\ll T^{3/2}$, and $X/\log X\ll X$.
  -/)
  (proofUses := ["LogDerivZetaUniformLogSquaredBound", "MellinOfSmooth1b"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean#L2148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `610379f6a0b81a1ea6f64616e35c89a4ada2aba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
