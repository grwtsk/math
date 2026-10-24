# Phi_circ.contDiff_real

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
      "line": 1924,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5205cbd-9fd2-8d39-357e-d15f06354d8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a84e51a0-1d05-b207-444a-270753b7bfe0",
  "kind": "theorem",
  "lexical_name": "Phi_circ.contDiff_real",
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
  "slug": "phi-circ-contdiff-real--1993f0e62a4976e6bd358db3",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1939,
    "line": 1924,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1993f0e62a4976e6bd358db35226b3e97634b76d0d9429dfe9f5d5e1868a2ec9",
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

Occurrence: `result:a84e51a0-1d05-b207-444a-270753b7bfe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1924–1939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Phi_circ.contDiff_real (ν ε : ℝ) (hlam : ν ≠ 0) : ContDiff ℝ 2 (fun t : ℝ => Phi_circ ν ε (t : ℂ)) := by
  have h_diff : ContDiff ℝ 2 (fun t : ℝ => 1 / Complex.tanh ((-2 * Real.pi * Complex.I * t + ν) / 2)) := by
    simp only [Complex.tanh_eq_sinh_div_cosh]
    have h_inner : ContDiff ℝ 2 (fun t : ℝ => (-2 * Real.pi * Complex.I * t + ν) / 2) := by fun_prop
    have h_sinh_cosh_diff : ContDiff ℝ 2 (fun t : ℝ => Complex.sinh ((-2 * Real.pi * Complex.I * t + ν) / 2)) ∧ ContDiff ℝ 2 (fun t : ℝ => Complex.cosh ((-2 * Real.pi * Complex.I * t + ν) / 2)) ∧ ∀ t : ℝ, Complex.sinh ((-2 * Real.pi * Complex.I * t + ν) / 2) ≠ 0 := by
      refine ⟨Complex.contDiff_sinh_real.comp h_inner, Complex.contDiff_cosh_real.comp h_inner, ?_⟩
      · norm_num [Complex.sinh, Complex.exp_ne_zero]
        norm_num [sub_eq_zero, Complex.exp_ne_zero]
        intro t ht; rw [Complex.exp_eq_exp_iff_exists_int] at ht
        obtain ⟨k, hk⟩ := ht; norm_num [Complex.ext_iff] at hk
        rcases k with ⟨_ | k⟩ <;> norm_num at hk <;> ring_nf at hk <;> norm_num at hk <;>
          cases lt_or_gt_of_ne hlam <;> nlinarith [Real.pi_pos]
    simp_all only [ne_eq, neg_mul, division_def, mul_inv_rev, inv_inv, one_mul]
    exact ContDiff.mul h_sinh_cosh_diff.2.1 (ContDiff.inv h_sinh_cosh_diff.1 fun t => h_sinh_cosh_diff.2.2 t)
  exact ContDiff.mul contDiff_const (h_diff.add contDiff_const)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L1924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
