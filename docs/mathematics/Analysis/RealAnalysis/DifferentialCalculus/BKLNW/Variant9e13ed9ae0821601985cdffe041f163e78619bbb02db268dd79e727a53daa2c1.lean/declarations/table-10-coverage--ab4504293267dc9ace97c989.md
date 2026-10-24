# table_10_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2215ee2b-1296-dd15-c34a-c5ccfe3ed17b",
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
  "slug": "table-10-coverage--ab4504293267dc9ace97c989",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1444,
    "line": 1397,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab4504293267dc9ace97c9894a64a0706d697a0c613f4541cca94ba4d6d7b2ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2215ee2b-1296-dd15-c34a-c5ccfe3ed17b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1397–1444.

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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L1397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
