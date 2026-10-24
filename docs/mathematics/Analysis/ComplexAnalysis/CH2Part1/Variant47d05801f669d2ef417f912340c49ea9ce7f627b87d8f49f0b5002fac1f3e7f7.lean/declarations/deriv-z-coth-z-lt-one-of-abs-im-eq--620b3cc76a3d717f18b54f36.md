# deriv_z_coth_z_lt_one_of_abs_im_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b53b69d7-cb79-fa79-8ca1-1f5c9e81dea7",
  "kind": "lemma",
  "lexical_name": "deriv_z_coth_z_lt_one_of_abs_im_eq",
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
  "slug": "deriv-z-coth-z-lt-one-of-abs-im-eq--620b3cc76a3d717f18b54f36",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5932,
    "line": 5897,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:620b3cc76a3d717f18b54f36c2dfb8c5c5837ad9fb22b9d97d1bfaf894e810f3",
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

Occurrence: `result:b53b69d7-cb79-fa79-8ca1-1f5c9e81dea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5897–5932.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma deriv_z_coth_z_lt_one_of_abs_im_eq (z : ℂ) (hz : |z.im| = π / 4) :
    ‖deriv (fun w : ℂ ↦ w * coth w) z‖ < 1 := by
  rcases abs_cases z.im with ⟨h_pos, _⟩ | ⟨h_neg, _⟩
  · have heq : z = z.re + ↑(π / 4) * Complex.I := by
      apply Complex.ext <;> simp; linarith [h_pos, hz]
    rw [heq]; exact deriv_z_coth_z_bound_boundary z.re
  · have heq : z = z.re + ↑(-(π / 4)) * Complex.I := by
      apply Complex.ext <;> simp; ring_nf; linarith [h_neg, hz]
    have h_z_neg : z = -(-z.re + ↑(π / 4) * Complex.I) := by
      rw [heq]; apply Complex.ext <;> simp
    rw [h_z_neg, deriv_z_coth_z_odd, norm_neg]
    have h_bound := deriv_z_coth_z_bound_boundary (-z.re)
    rw [Complex.ofReal_neg] at h_bound
    exact h_bound

@[blueprint
  "CH2-lemma-4-2a"
  (title := "CH2 Lemma 4.2(a)")
  (statement := /--
If $|\Im z| \leq \frac{\pi}{4}$, then $|(z \coth z)'| < 1$.  -/)
  (proof := /-- Since $z\coth(z)$ is regular at $0$ and an even function, we see that $f(z) := (z \coth z)'$ and $f(z)/z$ are regular at $0$, and hence analytic on the strip $|\Im z| \leq \frac{\pi}{2}$. We see from $f(z) = \coth z - z\operatorname{csch}^2 z$ that $f(z)$ has at most exponential growth as $\Re z \to \pm\infty$ within the strip. Hence, by Phragm\'{e}n--Lindel\"{o}f, it is enough to verify the inequalities $|f(z)/z| \leq 1$ for $\Im z = \pm\frac{\pi}{2}$ and $|f(z)| \leq 1$ for $\Im z = \pm\frac{\pi}{4}$; by complex conjugation, it suffices to check them for $\Im z = \frac{\pi}{2}$ and $\Im z = \frac{\pi}{4}$.

By the above, $f(z) = \frac{(\sinh 2z)/2 - z}{\sinh^2 z}$. Now, for $z = x + i\frac{\pi}{4}$ with $x \in \mathbb{R}$, we have $\sinh 2z = i\cosh 2x$ and $\sinh^2 z = -\frac{1}{2} + \frac{i}{2}\sinh 2x$, and so $|f(z)|^2 = \frac{(\cosh 2x - \pi/2)^2 + 4x^2}{1 + \sinh^2 2x}$. By $1 + \sinh^2 2x = \cosh^2 2x$,
\[
|f(z)|^2 = 1 - \frac{\pi \cosh 2x - \pi^2/4 - 4x^2}{\cosh^2 2x}.
\]
Since $\cosh 2x = 1 + 2\sinh^2 x \geq 1 + 2x^2$, $\pi > \frac{\pi^2}{4}$ and $2\pi > 4$, the numerator here is positive. We conclude that $|f(z)|^2 < 1$ for $z = x + i\frac{\pi}{4}$, as was desired.

For $z = x + i\frac{\pi}{2}$ with $x \in \mathbb{R}$, we have $\coth z = \tanh x$ and $\operatorname{csch}^2 z = -\operatorname{sech}^2 x$. Then $|f(z)|^2 = (\tanh x + x\operatorname{sech}^2 x)^2 + \left(\frac{\pi}{2}\operatorname{sech}^2 x\right)^2$. Since $\operatorname{sech}^2 x - 1 = -\tanh^2 x$, this is equal to
\[
\tanh^2 x \operatorname{sech} x\!\left(\cosh x + 2x\operatorname{csch} x - |z|^2(\operatorname{sech} x + \cosh x)\right) + |z|^2.
\]
Since $|z|^2 \geq \frac{\pi^2}{4} > 2$, it suffices to show that $2x\operatorname{csch} x - 2\operatorname{sech} x - \cosh x \leq 0$ for all $x \in \mathbb{R}$; by parity, it is enough to check all $x \geq 0$. The statement is then equivalent to $g(x) = 2x - 2\tanh x - \sinh x \cosh x \leq 0$, since $\sinh x \geq 0$. That follows from $g'(x) = 2\tanh^2 x - \cosh^2 x - \sinh^2 x = -2\sinh^2 x \tanh^2 x - 1 \leq 0$ (by $1 - \cosh^2 x = -\sinh^2 x$) and $g(0) = 0$.
-/)
  (latexEnv := "sublemma")
  (discussion := 1233)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L5897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
