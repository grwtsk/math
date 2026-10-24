# norm_gammaR_even_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90380766e45a7191c0639f06e1187d7c03319734",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85e1e5c5-43ba-2a45-1613-b9753c6a33c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cd77f1e-12df-a3fa-ba19-a94537ed369c",
  "kind": "lemma",
  "lexical_name": "norm_gammaR_even_le",
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
  "slug": "norm-gammar-even-le--694f59d2dbcb744ae596553d",
  "source": {
    "blob": "90380766e45a7191c0639f06e1187d7c03319734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:694f59d2dbcb744ae596553d048960e1026e170b6e7b3b52a4f8e65abba3da33",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cd77f1e-12df-a3fa-ba19-a94537ed369c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_gammaR_even_le (m : ℕ) (hm : 1 ≤ m) :
    ‖Gammaℝ (2 * (m : ℂ))‖ ≤ (m.factorial : ℝ) := by
  have hgamma : Gamma (m : ℂ) = ((m - 1).factorial : ℂ) := by
    have he : ((m - 1 : ℕ) : ℂ) + 1 = (m : ℂ) := by
      exact_mod_cast Nat.sub_add_cancel hm
    rw [← he, Gamma_nat_eq_factorial]
  have hpi : ‖(Real.pi : ℂ) ^ (-(m : ℂ))‖ ≤ 1 := by
    rw [cpow_neg, cpow_natCast, norm_inv, norm_pow, Complex.norm_real,
      Real.norm_eq_abs, abs_of_pos Real.pi_pos]
    exact inv_le_one_of_one_le₀ (one_le_pow₀ (by linarith [Real.two_le_pi]))
  have hargs : -(2 * (m : ℂ)) / 2 = -(m : ℂ) := by ring
  have hhalf : 2 * (m : ℂ) / 2 = (m : ℂ) := by ring
  rw [Gammaℝ_def, hargs, hhalf, hgamma, norm_mul, Complex.norm_natCast]
  calc
    _ ≤ 1 * ((m - 1).factorial : ℝ) := mul_le_mul_of_nonneg_right hpi (by positivity)
    _ ≤ (m.factorial : ℝ) := by
      simp only [one_mul]
      exact_mod_cast Nat.factorial_le (Nat.sub_le m 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90380766e45a7191c0639f06e1187d7c03319734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
