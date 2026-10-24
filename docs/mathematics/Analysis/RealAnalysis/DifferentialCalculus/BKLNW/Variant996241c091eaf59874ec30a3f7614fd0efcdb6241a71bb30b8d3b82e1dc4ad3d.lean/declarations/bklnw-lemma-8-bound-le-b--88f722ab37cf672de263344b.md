# bklnw_lemma_8_bound_le_B

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1066,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de6d8ba8-c04e-d373-2c92-dfee1dc7f002",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b21711d-c7de-643d-d783-2e4f932350b5",
  "kind": "lemma",
  "lexical_name": "bklnw_lemma_8_bound_le_B",
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
  "slug": "bklnw-lemma-8-bound-le-b--88f722ab37cf672de263344b",
  "source": {
    "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1127,
    "line": 1066,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88f722ab37cf672de263344b76d9d2f71a38b1fcdb79d07e7e88c9c1a369f92a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b21711d-c7de-643d-d783-2e4f932350b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1066–1127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bklnw_lemma_8_bound_le_B (k n : ℕ) (a : ℕ → ℝ) (ε : ℝ → ℝ) (b b' x : ℝ)
    (hx_mem : x ∈ Set.Icc (exp b) (exp b')) :
    (∑ ℓ ∈ Finset.Icc 1 n, a ℓ * (log x)^k * x ^ (-(ℓ:ℝ) / (ℓ + 1))) + ε b * (log x) ^ k ≤ B k n a ε b b' := by
  have h_y_pos : ∀ y : Set.Icc (exp b) (exp b'), 0 < (y : ℝ) := fun y ↦ (exp_pos b).trans_le y.2.1
  have h_y_ne_zero : ∀ y : Set.Icc (exp b) (exp b'), (y : ℝ) ≠ 0 := fun y ↦ (h_y_pos y).ne'
  refine le_ciSup (f := fun (y : Set.Icc (exp b) (exp b')) ↦ (∑ ℓ ∈ Finset.Icc 1 n, a ℓ * (log (y : ℝ))^k * (y : ℝ) ^ (-(ℓ:ℝ) / (ℓ + 1)) + ε b * (log (y : ℝ)) ^ k)) ?_ ⟨x, hx_mem⟩
  apply IsCompact.bddAbove
  apply isCompact_range
  apply Continuous.add
  · refine continuous_finsetSum (Finset.Icc 1 n) (fun ℓ _ ↦ ?_)
    apply Continuous.mul
    · apply Continuous.mul continuous_const
      apply Continuous.pow
      exact Continuous.log continuous_subtype_val h_y_ne_zero
    · apply Continuous.rpow continuous_subtype_val continuous_const
      intro y
      exact Or.inl (h_y_ne_zero y)
  · apply Continuous.mul continuous_const
    apply Continuous.pow
    exact Continuous.log continuous_subtype_val h_y_ne_zero

@[blueprint
  "bklnw-lemma-8"
  (title := "Lemma 8")
  (statement := /--  Let $k=1,\ldots,5$. Assume there exist a positive integer $n$, real numbers $a_{\ell} \ge 0$ for every $\ell \in \{1, 2, \ldots, n \}$. and $x_0 > 0$ such that
 \begin{equation}
  \label{psithetadiff}
  \psi (x) - \theta (x) \le \sum_{\ell=1}^n a_{\ell} x^{\frac{1}{\ell+1}} \qquad \text{ for all } x \ge x_0.
 \end{equation}
 Let $b' > b \ge 2k$, $x_0 \le e^b$, and assume that there exists $\varepsilon(b)>0$ such that
  \begin{equation}
  \label{psixdiff}
  |\psi (x) - x| \le \varepsilon(b)x \qquad \text{for all }x \ge e^{b}.
 \end{equation}
Then we have
 \begin{equation}
  \label{thetakBbd}
   |\theta(x)-x| \le   \frac{B_k x}{(\log x)^k} \qquad  \text{for all }x \in [e^{b}, e^{b'}]
 \end{equation}
where
\begin{equation}
  \label{defn:B}
  B_k = B_k(b,b') =
  \max_{x \in [e^b, e^{b'}]}
   \Big(  \sum_{\ell=1}^n a_{\ell} (\log x)^k x^{-\frac{\ell}{\ell+1}} +  \varepsilon(b) (\log x)^k  \Big).
\end{equation}
   -/)
  (proof := /--
  By the triangle inequality and the non-negativity of $\psi(x)-\theta(x)$, we have
 \begin{align*}
  |\theta (x) - x|
  & \le  \psi (x) - \theta (x) + |\psi(x) - x|.
 \end{align*}
 Bounding these terms by (\ref{psithetadiff}) and (\ref{psixdiff}), we have for $x \ge e^b$,
 \begin{align*}
  |\theta(x) - x| &\le
   \frac{x}{(\log x)^k} \Big(  \sum_{\ell=1}^n a_{\ell} (\log x)^k x^{-\frac{\ell}{\ell+1}} +  \varepsilon(b) (\log x)^k  \Big).
 \end{align*}
This immediately implies \eqref{thetakBbd} holds with \eqref{defn:B}.
-/)
  (latexEnv := "sublemma")
  (discussion := 1252)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean#L1066).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6aa03d0dd36c7f82cfdb89c198f8e6368ef212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
