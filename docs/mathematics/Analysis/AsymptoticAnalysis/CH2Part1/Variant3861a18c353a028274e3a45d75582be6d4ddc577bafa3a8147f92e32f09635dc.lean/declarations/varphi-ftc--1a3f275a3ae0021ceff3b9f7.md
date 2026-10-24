# varphi_ftc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4933,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b10babc-c83b-8818-1205-0f00a6c305b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b691fb22-37e0-a99a-7fdc-992cfbf1322f",
  "kind": "lemma",
  "lexical_name": "varphi_ftc",
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
  "slug": "varphi-ftc--1a3f275a3ae0021ceff3b9f7",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4982,
    "line": 4933,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a3f275a3ae0021ceff3b9f7eeaeb106ce41793fd9c7100ad21f16d793d37b3c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b691fb22-37e0-a99a-7fdc-992cfbf1322f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4933–4982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma varphi_ftc (ν ε : ℝ) (hlam : ν ≠ 0) (a b : ℝ) :
    ∫ t in a..b, deriv (ϕ_pm ν ε) t = (ϕ_pm ν ε) b - (ϕ_pm ν ε) a := by
  let f := ϕ_pm ν ε
  have h_int x y : IntervalIntegrable (deriv f) volume x y := (varphi_deriv_integ ν ε hlam).intervalIntegrable
  wlog h : a ≤ b generalizing a b; · rw [intervalIntegral.integral_symm, this b a (by linarith)]; ring
  rw [← intervalIntegral.integral_add_adjacent_intervals (h_int a (-1)) (h_int (-1) b),
      ← intervalIntegral.integral_add_adjacent_intervals (h_int (-1) 0) (h_int 0 b),
      ← intervalIntegral.integral_add_adjacent_intervals (h_int 0 1) (h_int 1 b),
      varphi_ftc_left ν ε hlam ⟨le_refl _, by norm_num⟩ ⟨by norm_num, le_refl _⟩,
      varphi_ftc_right ν ε hlam ⟨le_refl _, by norm_num⟩ ⟨by norm_num, le_refl _⟩]
  have hL p : ∫ t in p..(-1), deriv f t = f (-1) - f p := by
    rcases le_or_gt p (-1) with h_le | h_gt
    · exact varphi_ftc_out ν ε hlam (Or.inl ⟨h_le, le_refl _⟩)
    · rw [← intervalIntegral.integral_add_adjacent_intervals (h_int p 0) (h_int 0 (-1))]
      rcases le_or_gt p 0 with hp0 | hp0
      · rw [varphi_ftc_left ν ε hlam ⟨h_gt.le, hp0⟩ ⟨by norm_num, le_refl _⟩,
            varphi_ftc_left ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩]; ring
      · rw [← intervalIntegral.integral_add_adjacent_intervals (h_int p 1) (h_int 1 0)]
        rcases le_or_gt p 1 with hp1 | hp1
        · rw [varphi_ftc_right ν ε hlam ⟨hp0.le, hp1⟩ ⟨by norm_num, le_refl _⟩,
              varphi_ftc_right ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩,
              varphi_ftc_left ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩]; ring
        · rw [varphi_ftc_out ν ε hlam (Or.inr ⟨hp1.le, le_refl _⟩),
              varphi_ftc_right ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩,
              varphi_ftc_left ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩]; ring
  have hR p : ∫ t in 1..p, deriv f t = f p - f 1 := by
    rcases le_or_gt p 1 with h_le | h_gt
    · rw [← intervalIntegral.integral_add_adjacent_intervals (h_int 1 0) (h_int 0 p)]
      rcases le_or_gt p 0 with hp0 | hp0
      · rw [← intervalIntegral.integral_add_adjacent_intervals (h_int 0 (-1)) (h_int (-1) p)]
        rcases le_or_gt p (-1) with hp_1 | hp_1
        · rw [varphi_ftc_right ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩,
              varphi_ftc_left ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩,
              varphi_ftc_out ν ε hlam (Or.inl ⟨le_refl _, hp_1⟩)]; ring
        · rw [varphi_ftc_right ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩,
              varphi_ftc_left ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩,
              varphi_ftc_left ν ε hlam ⟨le_refl _, by norm_num⟩ ⟨hp_1.le, hp0⟩]; ring
      · rw [varphi_ftc_right ν ε hlam ⟨by norm_num, le_refl _⟩ ⟨le_refl _, by norm_num⟩,
            varphi_ftc_right ν ε hlam ⟨le_refl _, by norm_num⟩ ⟨hp0.le, h_le⟩]; ring
    · exact varphi_ftc_out ν ε hlam (Or.inr ⟨le_refl _, h_gt.le⟩)
  rw [hL a, hR b]; ring

@[blueprint
  "varphi-abs"
  (title := "$\\varphi$ absolutely continuous")
  (statement := /-- The function $\varphi_\nu^\pm$ is absolutely continuous. -/)
  (proof := /-- Apply Lemmas \ref{phi-c2-left}, \ref{phi-c2-right}, \ref{phi-cts} We know $\varphi_\nu^\pm$ is absolutely continuous because it is $C^1$ on $[-1, 0]$ and $[0, 1]$, and identically $0$ outside $[-1, 1]$./
-/)
  (latexEnv := "lemma")
  (discussion := 1226)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L4933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
