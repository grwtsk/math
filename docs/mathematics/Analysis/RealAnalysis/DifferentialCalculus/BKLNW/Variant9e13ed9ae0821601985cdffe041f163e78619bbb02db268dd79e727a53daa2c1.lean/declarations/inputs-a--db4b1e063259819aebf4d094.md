# Inputs.a₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dce4d79b2760db305e6d34914d2cae360b4f617ebca01b708c28c773e7136c39",
  "kind": "def",
  "lexical_name": "Inputs.a₂",
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
  "slug": "inputs-a--db4b1e063259819aebf4d094",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 713,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db4b1e063259819aebf4d094c134d972a07b4dab090ad552866ea6433b230fbb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dce4d79b2760db305e6d34914d2cae360b4f617ebca01b708c28c773e7136c39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Inputs.a₂ (I : Inputs) (b : ℝ) : ℝ :=
  (1 + I.α) * (max (f (exp b)) (f (2^(⌊ b / (log 2) ⌋₊ + 1))))

@[blueprint
  "bklnw-thm-5"
  (title := "BKLNW Theorem 5")
  (statement := /--  Let $\alpha > 0$ exist such that
\[
\theta(x) \leq (1 + \alpha)x \quad \text{for all } x > 0.
\]
Assume for every $b \geq 7$ there exists a positive constant $\varepsilon(b)$ such that
\[
\psi(x) - x \leq \varepsilon(b)x \quad \text{for all } x \geq e^b.
\]
Assume there exists $x_1 \geq e^7$ such that
\begin{equation}
\theta(x) < x \quad \text{for } x \leq x_1.
\end{equation}
Let $b \geq 7$. Then, for all $x \geq e^b$ we have
\[
\psi(x) - \theta(x) < a_1 x^{1/2} + a_2 x^{1/3},
\]
where
\[
a_1 = \begin{cases}
1 + \varepsilon(\log x_1) & \text{if } b \leq 2\log x_1, \\
1 + \varepsilon(b/2) & \text{if } b > 2\log x_1,
\end{cases}
\]
and
\[
a_2 = (1 + \alpha) \max\left( f(e^b), f(2^{\lfloor \frac{b}{\log 2} \rfloor + 1}) \right).
\]
  -/)
  (proof := /-- We have $\psi(x) - \theta(x) = \theta(x^{1/2}) + \sum_{k=3}^{\lfloor \frac{\log x}{\log 2} \rfloor} \theta(x^{1/k})$. For any $b \geq 7$, setting $x_0 = e^b$ in Proposition 4, we bound $\sum_{k=3}^{\lfloor \frac{\log x}{\log 2} \rfloor} \theta(x^{1/k})$ by $\eta x^{1/3}$ as defined in (2.3). We bound $\theta(x^{1/2})$ with Proposition \ref{bklnw-prop-4} by taking either $a_1 = 1 + \varepsilon(\log x_1)$ for $b \leq 2\log x_1$ or $a_1 = 1 + \varepsilon(b/2)$ for $b > 2\log x_1$.
 -/)
  (latexEnv := "theorem")
  (discussion := 643)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
