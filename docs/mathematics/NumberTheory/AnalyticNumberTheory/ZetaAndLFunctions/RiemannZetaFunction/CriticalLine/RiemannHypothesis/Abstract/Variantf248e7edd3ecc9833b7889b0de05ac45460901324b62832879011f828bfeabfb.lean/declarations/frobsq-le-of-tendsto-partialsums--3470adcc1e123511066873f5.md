# frobSq_le_of_tendsto_partialSums

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a42f917d626b73389cf92ccd34f949a5e813862",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dfef1b5-b1b8-a2f4-78e4-1d42a0b9695a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a954d5b-80d7-bee6-5bdd-d5211484bf8d",
  "kind": "theorem",
  "lexical_name": "frobSq_le_of_tendsto_partialSums",
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
  "slug": "frobsq-le-of-tendsto-partialsums--3470adcc1e123511066873f5",
  "source": {
    "blob": "5a42f917d626b73389cf92ccd34f949a5e813862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3470adcc1e123511066873f5ac64b4efe5fb386d19f17450f89a1615edc54b43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a954d5b-80d7-bee6-5bdd-d5211484bf8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobSq_le_of_tendsto_partialSums (D : Matrix n n ℂ) (S : ℕ → Matrix n n ℂ) (s : ℕ → ℝ)
    (hs0 : ∀ r, 0 ≤ s r) (hS : ∀ r, frobSq (S r) ≤ s r ^ 2) {B : ℝ}
    (hB : ∀ R, ∑ r ∈ range R, s r ≤ B)
    (hlim : ∀ i j, Tendsto (fun R => ∑ r ∈ range R, S r i j) atTop (𝓝 (D i j))) :
    frobSq D ≤ B ^ 2 := by
  have hB0 : 0 ≤ B := by simpa using hB 0
  have hR : ∀ R, frobSq (∑ r ∈ range R, S r) ≤ B ^ 2 := by
    intro R
    rw [Assembly.frobSq_eq_norm_sq]
    have h1 : ‖∑ r ∈ range R, S r‖ ≤ ∑ r ∈ range R, s r := by
      refine (norm_sum_le _ _).trans (sum_le_sum fun r _ => ?_)
      rw [Assembly.norm_eq_sqrt_frobSq]
      exact (Real.sqrt_le_sqrt (hS r)).trans (le_of_eq (Real.sqrt_sq (hs0 r)))
    exact pow_le_pow_left₀ (norm_nonneg _) (h1.trans (hB R)) 2
  have hlim2 : Tendsto (fun R => frobSq (∑ r ∈ range R, S r)) atTop (𝓝 (frobSq D)) := by
    have e : ∀ M : Matrix n n ℂ, frobSq M = ∑ i, ∑ j, ‖M i j‖ ^ 2 :=
      fun M => Assembly.frobSq_eq_sum_norm_sq M
    simp only [e]
    refine tendsto_finset_sum _ fun i _ => tendsto_finset_sum _ fun j _ => ?_
    have : Tendsto (fun R => (∑ r ∈ range R, S r) i j) atTop (𝓝 (D i j)) := by
      simp only [Matrix.sum_apply]; exact hlim i j
    exact (this.norm).pow 2
  exact le_of_tendsto' hlim2 hR

end Frob

/-! ### C. Abel summation with monotone bounded weights -/

/-- If 0 ≤ w_k ≤ W is monotone and every partial sum |Σ_{k<K} q_k| (K ≤ d) is at most B, then
|Σ_{k<d} w_k q_k| ≤ 2WB. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a42f917d626b73389cf92ccd34f949a5e813862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
