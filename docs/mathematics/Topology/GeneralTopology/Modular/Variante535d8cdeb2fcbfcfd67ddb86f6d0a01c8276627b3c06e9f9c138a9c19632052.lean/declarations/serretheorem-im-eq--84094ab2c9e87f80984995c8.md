# serreTheorem_im_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 658,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4020343c-e717-fa14-7680-6d9d69011f1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3048e75a-e74c-7541-0435-17786667ac11",
  "kind": "lemma",
  "lexical_name": "serreTheorem_im_eq",
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
  "slug": "serretheorem-im-eq--84094ab2c9e87f80984995c8",
  "source": {
    "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 658,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84094ab2c9e87f80984995c8a2bd150036952001495478a617e7956b37003cf1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3048e75a-e74c-7541-0435-17786667ac11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma serreTheorem_im_eq (hz : z ∈ 𝒟) (hg : g • z ∈ 𝒟) : (g • z).im = z.im := by
  wlog hden : z.im ≤ (g • z).im
  · rw [← this (g := g⁻¹) hg (by simpa using hz) (by simpa using le_of_not_ge hden)]
    simp
  wlog hc : 0 ≤ g 1 0
  · -- TODO: `wlog` leaves junk copies of variables in scope
    simpa using @this (-g) z (-g) z hz (by simpa using hg)
      (by simpa using hden) (by simpa using (not_le.mp hc).le)
  rw [im_smul_eq_div_normSq, le_div_iff₀ (normSq_denom_pos _ z.im_ne_zero),
    mul_le_iff_le_one_right z.im_pos, normSq_eq_norm_sq, sq_le_one_iff₀ (norm_nonneg _)] at hden
  have hc : g 1 0 = 0 ∨ g 1 0 = 1 := by grind [abs_c_le_one hz hg]
  rcases hc with hc | hc
  · rcases cases_c_zero hz hg hc with h | h | h | h <;>
    rcases h with ⟨(rfl | rfl), -⟩ <;>
    simp only [← zpow_neg_one, im_T_zpow_smul, im_T_smul, one_smul, SL_neg_smul]
  · rw [im_smul_eq_div_normSq, div_eq_iff (normSq_denom_pos _ z.im_ne_zero).ne',
    eq_comm, mul_eq_left₀ z.im_ne_zero]
    rcases Int.abs_le_one_iff.mp (cases_d_of_c_eq_one hz hden hc) with hd | hd | hd
    · rcases cases_c_one_d_zero hz hg hden hc hd with
        ⟨rfl, hnm⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
      · simp [normSq_eq_norm_sq, denom, coe_S, hnm]
      · rw [show T⁻¹ * S = ⟨!![-1, -1; 1, 0], by simp⟩ by decide]
        norm_num [ρ, denom, ← pow_two, div_pow]
      · rw [show T * S = ⟨!![1, -1; 1, 0], by simp⟩ by decide]
        norm_num [ρ, denom, normSq, ← pow_two, div_pow]
    · rcases case_c_one_d_one hz hg hden hc hd with ⟨(rfl | rfl), rfl⟩
      · rw [show S * T = ⟨!![0, -1; 1, 1], by simp⟩ by decide]
        norm_num [ρ, denom, normSq, ← pow_two, div_pow]
      · rw [show T * S * T = ⟨!![1, 0; 1, 1], by simp⟩ by decide]
        norm_num [ρ, denom, normSq, ← pow_two, div_pow]
    · rcases case_c_one_d_neg_one hz hg hden hc hd with ⟨(rfl | rfl), rfl⟩
      · rw [show S * T⁻¹ = ⟨!![0, -1; 1, -1], by simp⟩ by decide]
        norm_num [ρ, denom, normSq, ← pow_two, div_pow]
      · rw [show T⁻¹ * S * T⁻¹ = ⟨!![-1, 0; 1, -1], by simp⟩ by decide]
        norm_num [ρ, denom, normSq, ← pow_two, div_pow]

/-- Classify the `z` and `g` with `z ∈ 𝒟` and `g • z ∈ 𝒟`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7e71d4dc54f7648e1da52e067c1302d689a361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
