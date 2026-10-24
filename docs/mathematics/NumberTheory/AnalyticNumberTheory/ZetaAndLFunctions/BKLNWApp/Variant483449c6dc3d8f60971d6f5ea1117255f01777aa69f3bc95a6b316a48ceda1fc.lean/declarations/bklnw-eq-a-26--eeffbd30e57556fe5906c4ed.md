# bklnw_eq_A_26

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76645851-d2ee-ead5-1fa0-558c741adee3",
  "kind": "theorem",
  "lexical_name": "bklnw_eq_A_26",
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
  "slug": "bklnw-eq-a-26--eeffbd30e57556fe5906c4ed",
  "source": {
    "blob": "8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 425,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeffbd30e57556fe5906c4ed24e5da0720ec4f12ec1d8e1d7057be455978dbba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76645851-d2ee-ead5-1fa0-558c741adee3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_eq_A_26 (x : ℝ)
    (hx1 : 100 ≤ x) (hx2 : x ≤ 1e19) :
    Eψ x ≤ 0.94 / sqrt x :=
  Buthe.theorem_2a (by linarith) (by linarith)

@[blueprint
  "bklnw-lemma_15"
  (title := "Lemma 15")
  (statement := /-- Let $B_0$, $B$, and $c$ be
  positive constants such that
\begin{equation}\tag{A.27}\label{bklnw:A.27}
|(x-\psi(x))/\sqrt{x}| \leq c
\hbox{ for all } B_0 < x \leq B
\end{equation}
  is known.  Furthermore, assume for every
  $b_0 > 0$ there exists $\varepsilon(b_0) > 0$
  such that
\begin{equation}\tag{A.28}\label{bklnw:A.28}
|\psi(x) - x| \leq \varepsilon(b_0) x
\quad \text{for all } x \geq e^{b_0}.
\end{equation}
Let $b$ be positive such that
$e^b \in (B_0, B]$. Then, for all
$x \geq e^b$ we have
\begin{equation}\tag{A.29}\label{bklnw:A.29}
\left|\frac{\psi(x) - x}{x}\right|
\leq \max (\frac{c}{e^{\frac{b}{2}}},
\varepsilon(\log B)).
\end{equation} -/)
  (proof := /-- Multiplying both sides of
  \eqref{bklnw:A.27} by $\frac{1}{\sqrt{x}}$ gives
\[
\left|\frac{\psi(x) - x}{x}\right|
\leq \frac{c}{e^{\frac{b}{2}}}
\quad \text{for all } e^b \leq x \leq B
\]
as $\frac{1}{\sqrt{x}}
\leq \frac{1}{e^{\frac{b}{2}}}$.
Then, for $x \geq B$ we apply \eqref{bklnw:A.28}
with $b_0 = \log B$.
Combining these bounds,
we derive \eqref{bklnw:A.29}. -/)
  (latexEnv := "lemma")
  (discussion := 753)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant483449c6dc3d8f60971d6f5ea1117255f01777aa69f3bc95a6b316a48ceda1fc.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8540b9c42bd040f88ceaa130fd3ccba5e0ae6db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
