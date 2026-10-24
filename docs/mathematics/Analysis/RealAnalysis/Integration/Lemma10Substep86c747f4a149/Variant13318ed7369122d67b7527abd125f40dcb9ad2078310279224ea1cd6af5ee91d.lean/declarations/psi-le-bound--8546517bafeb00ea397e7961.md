# psi_le_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0617a27a-9a9e-0a2d-2168-0b6b31cd80d3",
  "kind": "theorem",
  "lexical_name": "psi_le_bound",
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
  "slug": "psi-le-bound--8546517bafeb00ea397e7961",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2437,
    "line": 2405,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8546517bafeb00ea397e796122280243e79ca8640aca4c4cb153a101d3870ced",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0617a27a-9a9e-0a2d-2168-0b6b31cd80d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2405–2437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_le_bound (y : ℝ) (hy : 1 < y) : ψ y ≤ 1.00000002 * y + 0.94 * y ^ (1/2 : ℝ) := by
  by_cases hy_large : y ≤ 1e19
  · by_cases hy_small : y < 100
    · exact psi_le_bound_small y hy hy_small
    · exact psi_le_bound_medium y (by grind) (by grind)
  · exact psi_le_bound_large y (by grind)

@[blueprint
  "fks2-proposition-17"
  (title := "FKS2 Proposition 17")
  (statement := /--
  Let $x > x_0 > 2$.  If $E_\psi(x) \leq \varepsilon_{\psi,num}(x_0)$, then
  $$ - \varepsilon_{\theta,num}(x_0) \leq \frac{\theta(x)-x}{x}
    \leq \varepsilon_{\psi,num}(x_0) \leq \varepsilon_{\theta,num}(x_0)$$
  where
  $$ \varepsilon_{\theta,num}(x_0) = \varepsilon_{\psi,num}(x_0) +
    1.00000002(x_0^{-1/2}+x_0^{-2/3}+x_0^{-4/5}) +
    0.94 (x_0^{-3/4} + x_0^{-5/6} + x_0^{-9/10})$$ -/)
  (proof := /-- The upper bound is immediate since $\theta(x) \leq \psi(x)$ for all $x$. For the lower bound, we have
  $$\frac{\theta(x) - x}{x} = \frac{\psi(x) - x}{x} + \frac{\theta(x) - \psi(x)}{x}.$$
  By Theorem \ref{costa-pereira-theorem-1a}, we have
  $$\psi(x) - \theta(x) \leq \psi(x^{1/2}) + \psi(x^{1/3}) + \psi(x^{1/5}).$$
  We use \cite[Theorem 2]{Buthe}, that for $0 < x < 11$, $\psi(x) < x$, and that $\varepsilon_{\psi,num}(10^{19}) < 2 \cdot 10^{-8}$. In particular when $2 < x < 10^{38}$,
  $$\psi(x^{1/2}) + \psi(x^{1/3}) + \psi(x^{1/5}) \leq x^{1/2} + x^{1/3} + x^{1/5} + 0.94(x^{1/4} + x^{1/6} + x^{1/10}),$$
  when $10^{38} \leq x < 10^{54}$,
  $$\psi(x^{1/2}) + \psi(x^{1/3}) + \psi(x^{1/5}) \leq 1.00000002x^{1/2} + x^{1/3} + x^{1/5} + 0.94(x^{1/6} + x^{1/10}),$$
  when $10^{54} \leq x < 10^{95}$,
  $$\psi(x^{1/2}) + \psi(x^{1/3}) + \psi(x^{1/5}) \leq 1.00000002(x^{1/2} + x^{1/3}) + x^{1/5} + 0.94x^{1/10},$$
  and finally when $x \geq 10^{95}$,
  $$\psi(x^{1/2}) + \psi(x^{1/3}) + \psi(x^{1/5}) \leq 1.00000002(x^{1/2} + x^{1/3} + x^{1/5}).$$
  The result follows by combining the worst coefficients from all cases and dividing by $x$. -/)
  (latexEnv := "proposition")
  (discussion := 711)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L2405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
