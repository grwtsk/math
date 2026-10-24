# G2_S_action_eq_tsum_G2Term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a641195f-1058-006d-5323-191f246c57ee",
  "kind": "lemma",
  "lexical_name": "G2_S_action_eq_tsum_G2Term",
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
  "slug": "g2-s-action-eq-tsum-g2term--5f751d09e7b284d6b0702fe2",
  "source": {
    "blob": "93558a52addb8f6fea227644a98dc0e86d9c1d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 155,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant34f976a3eb7145dba4fea30483ebe01c8a69e65a83cda0121cb7d1e23b576b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f751d09e7b284d6b0702fe291b320e8cf14e851c3cf9fd45f46716f25e2866e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Transform/Variant34f976a3eb7145dba4fea30483ebe01c8a69e65a83cda0121cb7d1e23b576b04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a641195f-1058-006d-5323-191f246c57ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma G2_S_action_eq_tsum_G2Term (z : ℍ) : ((z : ℂ) ^ 2)⁻¹ * G2 (S • z) - -2 * π * I / z =
    ∑' n : ℤ, ∑' m : ℤ, G2Term z ![m, n] := by
  rw [← tsum_symmetricIco_tsum_sub_eq z, ← tsum_symmetricIco_tsum_eq_S_act z,
    ← tsum_eq_of_summable_unconditional (L := symmetricIco ℤ), ← Summable.tsum_sub]
  · apply tsum_congr (fun N ↦ ?_)
    rw [← Summable.tsum_sub]
    · apply tsum_congr (fun M ↦ ?_)
      simp only [one_div, G2Term, Fin.isValue, Matrix.cons_val_zero, Matrix.cons_val_one,
        Matrix.cons_val_fin_one, mul_inv_rev]
      nth_rw 1 [← aux_identity z M N]
      ring
    · simpa using! linear_left_summable (ne_zero z) N le_rfl
    · simpa [add_assoc] using! summable_left_one_div_linear_sub_one_div_linear z N (N + 1)
  · apply HasSum.summable (a := (z.1 ^ 2)⁻¹ * G2 (S • z))
    rw [hasSum_symmetricIco_int_iff]
    apply (tendsto_double_sum_S_act z).congr (fun x ↦ ?_)
    rw [Summable.tsum_finsetSum (fun i hi ↦ ?_)]
    simpa using! linear_left_summable (ne_zero z) i (k := 2) (by norm_num)
  · apply HasSum.summable (a := -2 * π * I / z)
    rw [hasSum_symmetricIco_int_iff, ← tendsto_comp_val_Ioi_atTop]
    exact tendsto_tsum_one_div_linear_sub_succ_eq z
  · have := G2Term_summable z
    rw [← ((finTwoArrowEquiv _).trans (.prodComm ..)).symm.summable_iff] at this
    exact this.prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Transform/Variant34f976a3eb7145dba4fea30483ebe01c8a69e65a83cda0121cb7d1e23b576b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant34f976a3eb7145dba4fea30483ebe01c8a69e65a83cda0121cb7d1e23b576b04.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93558a52addb8f6fea227644a98dc0e86d9c1d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
