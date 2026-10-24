# frobSq_le_of_tendsto_partialSums

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c42f5417-7156-9780-5492-bc31d061b6df",
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
  "slug": "frobsq-le-of-tendsto-partialsums--ae409c8d5ab2324af37787bf",
  "source": {
    "blob": "29fed6bbfed3694a1d9055ee5f406e372bbc4b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae409c8d5ab2324af37787bfc1ca45d649b62a0c9db644348597e2b1472f093c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c42f5417-7156-9780-5492-bc31d061b6df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–119.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29fed6bbfed3694a1d9055ee5f406e372bbc4b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
