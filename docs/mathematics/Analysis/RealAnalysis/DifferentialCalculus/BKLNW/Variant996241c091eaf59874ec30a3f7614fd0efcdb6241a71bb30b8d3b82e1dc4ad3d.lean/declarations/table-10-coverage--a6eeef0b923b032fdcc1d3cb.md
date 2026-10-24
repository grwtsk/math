# table_10_coverage

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
      "line": 1389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac7cc203-187e-c1b5-75f9-9b44bfe32b83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a320805a-99a3-d161-5381-a0fc58dfde3d",
  "kind": "lemma",
  "lexical_name": "table_10_coverage",
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
  "slug": "table-10-coverage--a6eeef0b923b032fdcc1d3cb",
  "source": {
    "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1436,
    "line": 1389,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6eeef0b923b032fdcc1d3cb955063d8bafbce87379b8798bab1d785ca6ad8b4",
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

Occurrence: `result:a320805a-99a3-d161-5381-a0fc58dfde3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1389–1436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma table_10_coverage (b₀ y : ℝ) (hb₀ : b₀ ∈ table_10_entries) (hy1 : b₀ ≤ y) (hy2 : y ≤ (K : ℝ)) :
  ∃ b ∈ table_10_entries, b₀ ≤ b ∧ b ≤ y ∧ y ≤ table_10_next b := by
  let S := table_10_entries.filter (fun b ↦ b₀ ≤ b ∧ b ≤ y)
  have h1 : b₀ ∈ S := by
    simp only [mem_filter, hb₀, le_refl, hy1, and_self, S]
  let b := S.max' ⟨b₀, h1⟩
  obtain ⟨h5, h6, h7⟩ : b ∈ table_10_entries ∧ b₀ ≤ b ∧ b ≤ y := by
    simpa [S] using show b ∈ S from Finset.max'_mem S ⟨b₀, h1⟩
  refine ⟨b, h5, h6, h7, ?_⟩
  let S_finset := table_10_bs.filter (b < ·)
  have h12 : (K : ℝ) ∈ S_finset := by
    simpa [S_finset, table_10_bs] using table_10_entry_lt_K b h5
  let m := S_finset.min' ⟨K, h12⟩
  have h16 : m ∈ table_10_bs ∧ b < m := by
    simpa [S_finset] using (show m ∈ S_finset from Finset.min'_mem S_finset ⟨K, h12⟩)
  rw [show table_10_next b = m from table_10_next_eq_min' b ⟨K, h12⟩]
  by_contra h19
  obtain (h22 | h22) : m ∈ table_10_entries ∨ m = K :=
    Or.comm.1 (by simpa [table_10_bs, table_10_entries, K] using h16.1)
  · have h28 : m ∈ S := by
      simp only [mem_filter, h22, le_trans h6 h16.2.le, (Std.not_le.mp h19).le, and_self, S]
    linarith [Finset.le_max' S m h28, h16.2]
  · linarith [hy2]

@[blueprint
  "bklnw-cor-8-1b"
  (title := "BKLNW Corollary 8.1b")
  (statement := /-- Let $k \in \{1,\ldots,5\}$ and let $b_0$ be any entry in
column 1 of BKLNW Table 10. Then,
\begin{equation}
 \label{bound:mathcalB}
 |\theta (x) - x| \le \frac{\mathcal{B}_k(b_0) x}{(\log x)^k}  \qquad \text{for all }x \in [e^{b_0}, e^K]
\end{equation}
where $K = 25000$, and
\begin{equation}
\label{MathcalBbbprime2}
\mathcal{B}_k(b_0) =
\max_{\substack{b \in \mathrm{Table10}\\ b_0 \le b < K}}
  B_k(b,\operatorname{next}(b)).
\end{equation} -/)
  (proof := /-- For $x \in [e^{b_0},e^K]$, choose the largest Table 10 entry
$b$ with $b_0 \le b \le \log x$. Then
$x \in [e^b,e^{\operatorname{next}(b)}]$, so \eqref{B:ExpSubinterval} applies to
this subinterval. The definition of $\mathcal{B}_k(b_0)$ as a finite maximum over
the Table 10 grid then bounds the chosen subinterval constant.
 -/)
  (latexEnv := "sublemma")
  (discussion := 1256)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean#L1389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6aa03d0dd36c7f82cfdb89c198f8e6368ef212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
