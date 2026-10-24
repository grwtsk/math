# norm_completed_even_le

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
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24064be9-6fda-d871-d366-54633c2cbcb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41ce63a2-f14d-b03f-6b3f-74fba99ac80d",
  "kind": "lemma",
  "lexical_name": "norm_completed_even_le",
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
  "slug": "norm-completed-even-le--80becff51f43d122bf3adca9",
  "source": {
    "blob": "90380766e45a7191c0639f06e1187d7c03319734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 60,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80becff51f43d122bf3adca9e813a387c136be9c0ab2fa696c73a8e5f60bfcf9",
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

Occurrence: `result:41ce63a2-f14d-b03f-6b3f-74fba99ac80d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_completed_even_le (m : ℕ) (hm : 2 ≤ m) :
    ‖completedRiemannZeta (2 * (m : ℂ))‖ ≤ zetaMajorant * Real.exp ((m : ℝ)^2) := by
  have hs0 : 2 * (m : ℂ) ≠ 0 := by
    have : m ≠ 0 := by omega
    exact mul_ne_zero two_ne_zero (Nat.cast_ne_zero.mpr this)
  have hgp : 0 < (2 * (m : ℂ)).re := by simp; exact_mod_cast (show 0 < m by omega)
  have heq : completedRiemannZeta (2 * (m : ℂ)) =
      riemannZeta (2 * (m : ℂ)) * Gammaℝ (2 * (m : ℂ)) := by
    rw [riemannZeta_def_of_ne_zero hs0, div_mul_cancel₀ _ (Gammaℝ_ne_zero_of_re_pos hgp)]
  rw [heq, norm_mul]
  have hz : ‖riemannZeta (2 * (m : ℂ))‖ ≤ zetaMajorant := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat] using norm_zeta_nat_le (2 * m) (by omega)
  exact mul_le_mul hz ((norm_gammaR_even_le m (by omega)).trans (factorial_le_exp_square m))
    (norm_nonneg _) zetaMajorant_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Endpoint/Variantb03dec953fb03c8c657d8246caa784ae53d7110ec0c2c22d304c975c50c9186d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90380766e45a7191c0639f06e1187d7c03319734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
