# fourier_real

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
      "line": 4667,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d77c6079-a452-31bf-b629-4730761256bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46b6a8ec-3fec-d656-cd75-189c493e865e",
  "kind": "theorem",
  "lexical_name": "fourier_real",
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
  "slug": "fourier-real--990c3d3bce037602f0b6b79f",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4694,
    "line": 4667,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:990c3d3bce037602f0b6b79fdfe94b789e617487b7ac57db2927079a68b7bb2f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46b6a8ec-3fec-d656-cd75-189c493e865e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4667–4694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_real (ν ε : ℝ) (hlam : ν ≠ 0) (x : ℝ) : (𝓕 (ϕ_pm ν ε) x).im = 0 := by
  rw [varphi_fourier_ident ν ε hlam]
  set I_pos := ∫ t in Set.Icc 0 (1 : ℝ),
      (Phi_circ ν ε (↑t : ℂ) + Phi_star ν ε (↑t : ℂ)) * E (-(↑t : ℂ) * ↑x)
  have h_conj : ∫ t in Set.Icc (-1 : ℝ) 0,
      (Phi_circ ν ε (↑t : ℂ) - Phi_star ν ε (↑t : ℂ)) * E (-(↑t : ℂ) * ↑x) =
      starRingEnd ℂ I_pos := by
    rw [integral_neg_one_zero_eq_zero_one]
    rw [show (starRingEnd ℂ) I_pos = ∫ t in Set.Icc 0 (1 : ℝ),
        starRingEnd ℂ ((Phi_circ ν ε (↑t : ℂ) + Phi_star ν ε (↑t : ℂ)) * E (-(↑t : ℂ) * ↑x))
      from integral_conj.symm]
    apply MeasureTheory.setIntegral_congr_fun measurableSet_Icc
    intro t _
    simp only [Phi_star_conj_symm, Phi_circ_conj_symm, E_conj_symm, push_cast,
           map_mul, map_add, neg_mul, neg_neg, sub_neg_eq_add]
  simp only [Complex.add_im]
  have hstar_im : (starRingEnd ℂ I_pos).im = -I_pos.im := by rw [Complex.conj_im]
  linarith [h_conj ▸ hstar_im]


@[blueprint
  "varphi-integ"
  (title := "$\\varphi$ integrable")
  (statement := /-- The function $\varphi_\nu^\pm$ is integrable. -/)
  (proof := /-- Apply Lemmas \ref{phi-c2-left}, \ref{phi-c2-right}, \ref{phi-cts} We know $\varphi_\nu^\pm$ is integrable because it is $C^1$ on $[-1, 0]$ and $[0, 1]$, and identically $0$ outside $[-1, 1]$./
-/)
  (latexEnv := "lemma")
  (discussion := 1227)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L4667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
