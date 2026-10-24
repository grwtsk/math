# DeltaRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "610379f6a0b81a1ea6f64616e35c89a4ada2aba8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1524,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f15a204f-2971-45be-04a7-8a48445bb829",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b18ecaaf-8cab-e5cc-758c-aadc381675f7",
  "kind": "lemma",
  "lexical_name": "DeltaRange",
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
  "slug": "deltarange--dbbfb1c625b69043804580ea",
  "source": {
    "blob": "610379f6a0b81a1ea6f64616e35c89a4ada2aba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1640,
    "line": 1524,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbbfb1c625b69043804580eaee6cb5d2ce640fb19a3169acbcb5ca40f67b730b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b18ecaaf-8cab-e5cc-758c-aadc381675f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1524–1640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DeltaRange : ∀ (t : ℝ),
    |t| ≥ 2 →
        DeltaT t < (1 : ℝ) / 14 := by
    sorry



blueprint_comment /--
\begin{lemma}[SumBoundII]\label{SumBoundII}
    For all $t\in\mathbb{R}$ with $|t|\geq 2$ and $z=\sigma+it$
    where $1-\delta_t/3\leq\sigma\leq 3/2$, we have that
    $$\left|\frac{\zeta'}{\zeta}(z)
      -\sum_{\rho\in\mathcal{Z}_t}\frac{m_\zeta(\rho)}{z-\rho}\right|\ll\log|t|.$$
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
\uses{DeltaRange, LogDerivZetaFinalBound, ZeroInequality}
    By Lemma \ref{DeltaRange} we have that
    $$-11/21<-1/2-\delta_t/3\leq\sigma-3/2\leq0.$$
    We apply Theorem \ref{LogDerivZetaFinalBound} where $r'=2/3$, $r=3/4$, $R'=5/6$, and $R=8/9$.
    Thus for all $z\in\overline{\mathbb{D}_{2/3}}\setminus\mathcal{K}_f(5/6)$ we have that
    $$\left|\frac{\zeta'}{\zeta}(z+3/2+it)
      -\sum_{\rho\in\mathcal{K}_f(5/6)}\frac{m_f(\rho)}{z-\rho}\right|\ll\log|t|$$
    where $f(z)=\zeta(z+3/2+it)$ for $t\in\mathbb{R}$ with $|t|\geq 3$.
    Now if we let $z=\sigma-3/2$, then $z\in(-11/21,0)\subseteq\overline{\mathbb{D}_{2/3}}$.
    Additionally, $f(z)=\zeta(\sigma+it)$, where $\sigma+it$ lies in the zero free region given by
    Lemma \ref{ZeroInequality} since $\sigma\geq 1-\delta_t/3\geq 1-\delta_t$.
    Thus, $z\not\in\mathcal{K}_f(5/6)$. So,
    $$\left|\frac{\zeta'}{\zeta}(\sigma+it)
      -\sum_{\rho\in\mathcal{K}_f(5/6)}\frac{m_f(\rho)}{\sigma-3/2-\rho}\right|\ll\log|t|.$$
    But now note that if $\rho\in\mathcal{K}_f(5/6)$, then $\zeta(\rho+3/2+it)=0$
    and $|\rho|\leq 5/6$. Additionally, note that $m_f(\rho)=m_\zeta(\rho+3/2+it)$.
    So changing variables using these facts gives us that
    $$\left|\frac{\zeta'}{\zeta}(\sigma+it)
      -\sum_{\rho\in\mathcal{Z}_t}\frac{m_\zeta(\rho)}{\sigma+it-\rho}\right|\ll\log|t|.$$
\end{proof}
-/



blueprint_comment /--
\begin{lemma}[GapSize]\label{GapSize}
   Let $t\in\mathbb{R}$ with $|t|\geq 3$ and $z=\sigma+it$ where $1-\delta_t/3\leq\sigma\leq 3/2$.
   Additionally, let $\rho\in\mathcal{Z}_t$. Then we have that
   $$|z-\rho|\geq\delta_t/6.$$
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
\uses{ZeroInequality}
    Let $\rho=\sigma'+it'$ and note that since $\rho\in\mathcal{Z}_t$, we have $t'\in(t-5/6,t+5/6)$.
    Thus, if $t>1$ we have
    $$\log|t'|\leq\log|t+5/6|\leq\log|2t|=\log 2+\log|t|\leq 2\log|t|.$$
    And otherwise if $t<-1$ we have
    $$\log|t'|\leq\log|t-5/6|\leq\log|2t|=\log 2+\log|t|\leq 2\log|t|.$$
    So by taking reciprocals and multiplying through by a constant we have
    that $\delta_t\leq2\delta_{t'}$. Now note that since $\rho\in\mathcal{Z}_t$
    we know that $\sigma'\leq 1-\delta_{t'}$ by Theorem \ref{ZeroInequality}
    (here we use the fact that $|t|\geq 3$ to give us that $|t'|\geq 2$). Thus,
    $$\delta_t/6\leq\delta_{t'}-\delta_t/3
      =1-\delta_t/3-(1-\delta_{t'})\leq\sigma-\sigma'\leq|z-\rho|.$$
\end{proof}
-/



@[blueprint
  (title := "LogDerivZetaUniformLogSquaredBoundStrip")
  (statement := /--
    There exists a constant $F\in(0,1/2)$ such that
    for all $t\in\mathbb{R}$ with $|t|\geq 3$ one has
    $$1-\frac{F}{\log|t|}\leq\sigma\leq 3/2
      \implies\left|\frac{\zeta'}{\zeta}(\sigma+it)\right|\ll\log^2|t|$$
    where the implied constant is uniform in $\sigma$.
  -/)
  (proof := /--
    Take $F=E/3$ where $E$ comes from Theorem \ref{ZeroInequality}.
    Then we have that $\sigma\geq 1-\delta_t/3$. So, we apply Lemma \ref{SumBoundII},
    which gives us that
    $$\left|\frac{\zeta'}{\zeta}(z)
      -\sum_{\rho\in\mathcal{Z}_t}\frac{m_\zeta(\rho)}{z-\rho}\right|\ll\log|t|.$$
    Using the reverse triangle inequality and rearranging, we have that
    $$\left|\frac{\zeta'}{\zeta}(z)\right|
      \leq\sum_{\rho\in\mathcal{Z}_t}\frac{m_\zeta(\rho)}{|z-\rho|}+C\,\log|t|$$
    where $C$ is the implied constant in Lemma \ref{SumBoundII}.
    Now applying Lemma \ref{GapSize} we have that
    $$\left|\frac{\zeta'}{\zeta}(z)\right|
      \leq\frac{6}{\delta_t}\sum_{\rho\in\mathcal{Z}_t}m_\zeta(\rho)+C\,\log|t|.$$
    Now let $f(z)=\zeta(z+3/2+it)/\zeta(3/2+it)$ with $\rho=\rho'+3/2+it$.
    Then if $\rho\in\mathcal{Z}_t$ we have that
    $$0=\zeta(\rho)=\zeta(\rho'+3/2+it)=f(\rho')$$
    with the same multiplicity of zero, that is $m_\zeta(\rho)=m_f(\rho')$.
    And also if $\rho\in\mathcal{Z}_t$ then
    $$5/6\geq|\rho-(3/2+it)|=|\rho'|.$$
    Thus we change variables to have that
    $$\left|\frac{\zeta'}{\zeta}(z)\right|
      \leq\frac{6}{\delta_t}\sum_{\rho'\in\mathcal{K}_f(5/6)}m_f(\rho')+C\,\log|t|.$$
    Now note that $f(0)=1$ and for $|z|\leq 8/9$ we have
    $$|f(z)|=\frac{|\zeta(z+3/2+it)|}{|\zeta(3/2+it)|}
      \leq\frac{\zeta(3/2)}{\zeta(3)}\cdot(7+2\,|t|)\leq\frac{13\,\zeta(3/2)}{3\,\zeta(3)}\,|t|$$
    by Theorems \ref{ZetaFixedLowerBound} and \ref{GlobalBound}.
    Thus by Theorem \ref{ZerosBound} we have that
    $$\sum_{\rho'\in\mathcal{K}_f(5/6)}m_f(\rho')
      \leq\frac{\log|t|+\log(13\,\zeta(3/2)/(3\,\zeta(3)))}{\log((8/9)/(5/6))}\leq D\log|t|$$
    where $D$ is taken to be sufficiently large.
    Recall, by definition that, $\delta_t=E/\log|t|$ with $E$ coming from
    Theorem \ref{ZeroInequality}. By using this fact and the above, we have that
    $$\left|\frac{\zeta'}{\zeta}(z)\right|\ll\log^2|t|+\log|t|$$
    where the implied constant is taken to be bigger than $\max(6D/E,C)$.
    We know that the RHS is bounded above by $\ll\log^2|t|$; so the result follows.
  -/)
  (proofUses := ["ZetaFixedLowerBound", "ZerosBound", "GlobalBound", "SumBoundII", "ZeroInequality",
    "GapSize"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean#L1524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `610379f6a0b81a1ea6f64616e35c89a4ada2aba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
