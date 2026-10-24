# summable_vonMangoldt_div_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3991,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec213ec9-c3d0-bbd6-1e4a-84d3bea13253",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b025002e-d2f3-d329-1561-60733b4eea6d",
  "kind": "lemma",
  "lexical_name": "summable_vonMangoldt_div_rpow",
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
  "slug": "summable-vonmangoldt-div-rpow--537c532aed85fdf7b80785c8",
  "source": {
    "blob": "bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4021,
    "line": 3991,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:537c532aed85fdf7b80785c8f76a1cdc5a66b7682255ce3a1a314c63274b33ba",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b025002e-d2f3-d329-1561-60733b4eea6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3991–4021.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_vonMangoldt_div_rpow {s : ℝ} (hs : 1 < s) : Summable (fun n ↦ Λ n / n ^ s) := by
  have h_log_bound : ∀ n : ℕ, (Λ n : ℝ) ≤ Real.log n := fun n ↦ vonMangoldt_le_log
  suffices h_log_sum : Summable fun n : ℕ ↦ Real.log n / (n : ℝ) ^ s by
    exact .of_nonneg_of_le (fun n ↦ div_nonneg vonMangoldt_nonneg (by positivity))
      (fun n ↦ div_le_div_of_nonneg_right (h_log_bound n) (by positivity)) h_log_sum
  have h_log_le_n_eps : ∀ ε > 0, ∃ C > 0, ∀ n : ℕ, n ≥ 2 → Real.log n / (n : ℝ) ^ s ≤ C * (n : ℝ) ^ (ε - s) := by
    intro ε hε_pos
    obtain ⟨C, hC_pos, hC⟩ : ∃ C > 0, ∀ n : ℕ, n ≥ 2 → Real.log n ≤ C * (n : ℝ) ^ ε := by
      refine ⟨1 / ε, by positivity, fun n hn ↦ ?_⟩
      have := log_le_sub_one_of_pos (by positivity : 0 < (n : ℝ) ^ ε)
      rw [log_rpow (by positivity)] at this
      nlinarith [rpow_pos_of_pos (by positivity : 0 < (n : ℝ)) ε, mul_div_cancel₀ 1 hε_pos.ne']
    refine ⟨C, hC_pos, fun n hn ↦ ?_⟩
    rw [rpow_sub (by positivity)]
    exact le_trans (div_le_div_of_nonneg_right (hC n hn) (by positivity)) (by rw [div_eq_mul_inv]; ring_nf; norm_num)
  obtain ⟨C, _, hC⟩ : ∃ C > 0, ∀ n : ℕ, n ≥ 2 → Real.log n / (n : ℝ) ^ s ≤ C * (n : ℝ) ^ ((s - 1) / 2 - s) :=
    h_log_le_n_eps ((s - 1) / 2) (by linarith)
  rw [← summable_nat_add_iff 2]
  exact Summable.of_nonneg_of_le (fun n ↦ div_nonneg (log_nonneg (by norm_cast; omega))
    (rpow_nonneg (by positivity) _)) (fun n ↦ hC _ (by omega)) (Summable.mul_left _ <| by
      simpa using summable_nat_add_iff 2 |>.2 <| summable_nat_rpow.2 <| by linarith)

@[blueprint "WeakPNT-AP"
  (title := "WeakPNT-AP")
  (statement := /--
  If $q ≥ 1$ and $a$ is coprime to $q$, we have
  $$ \sum_{n \leq x: n = a\ (q)} \Lambda(n) = \frac{x}{\varphi(q)} + o(x).$$
  -/)
  (proof := /-- Apply Theorem \ref{WienerIkehara} (or Theorem \ref{WienerIkehara2} to avoid
  checking the Chebyshev condition) using Proposition \ref{WeakPNT-AP-prelim}.-/)
  (proofUses := ["WienerIkehara", "WeakPNT-AP-prelim"])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean#L3991).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
