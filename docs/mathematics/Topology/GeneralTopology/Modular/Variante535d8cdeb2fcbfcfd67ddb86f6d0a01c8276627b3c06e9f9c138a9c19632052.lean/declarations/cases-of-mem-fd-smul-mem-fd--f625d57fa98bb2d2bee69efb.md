# cases_of_mem_fd_smul_mem_fd

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
      "line": 695,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e5b3a56-d519-ff1a-ed42-cd1829daaa0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5bff1a9-364d-07d9-4951-cf2f226fe6f5",
  "kind": "lemma",
  "lexical_name": "cases_of_mem_fd_smul_mem_fd",
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
  "slug": "cases-of-mem-fd-smul-mem-fd--f625d57fa98bb2d2bee69efb",
  "source": {
    "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 721,
    "line": 695,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f625d57fa98bb2d2bee69efbe819c3c71feaab3138f923f55993f28d0d25b9af",
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

Occurrence: `result:c5bff1a9-364d-07d9-4951-cf2f226fe6f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–721.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cases_of_mem_fd_smul_mem_fd (hz : z ∈ 𝒟) (hg : g • z ∈ 𝒟) :
    (g = 1 ∨ g = -1) ∨
    ((g = T ∨ g = -T) ∧ z.re = -1 / 2) ∨
    ((g = T⁻¹ ∨ g = -T⁻¹) ∧ z.re = 1 / 2) ∨
    ((g = S ∨ g = -S) ∧ ‖(z : ℂ)‖ = 1) ∨
    ((g = T * S ∨ g = -(T * S)) ∧ z = (1 : ℝ) +ᵥ ρ) ∨
    ((g = T⁻¹ * S * T⁻¹ ∨ g = -(T⁻¹ * S * T⁻¹)) ∧ z = (1 : ℝ) +ᵥ ρ) ∨
    ((g = S * T⁻¹ ∨ g = -(S * T⁻¹)) ∧ z = (1 : ℝ) +ᵥ ρ) ∨
    ((g = S * T ∨ g = -(S * T)) ∧ z = ρ) ∨
    ((g = T * S * T ∨ g = -(T * S * T)) ∧ z = ρ) ∨
    ((g = T⁻¹ * S ∨ g = -(T⁻¹ * S)) ∧ z = ρ) := by
  have him : (g • z).im = z.im := serreTheorem_im_eq hz hg
  wlog hc : 0 ≤ g 1 0
  · simpa [neg_eq_iff_eq_neg, or_comm] using @this (-g) z hz (by simpa using hg)
      (by simpa using him) (by simpa using (not_le.mp hc).le)
  rw [im_smul_eq_div_normSq, div_eq_iff (normSq_denom_pos _ z.im_ne_zero).ne',
    eq_comm, mul_eq_left₀ z.im_ne_zero, normSq_eq_norm_sq,
    pow_eq_one_iff_of_nonneg (norm_nonneg _) two_ne_zero] at him
  have hc : g 1 0 = 0 ∨ g 1 0 = 1 := by grind [abs_c_le_one hz hg]
  rcases hc with hc | hc
  · grind [cases_c_zero hz hg hc] -- ± T, T⁻¹
  · rcases Int.abs_le_one_iff.mp (cases_d_of_c_eq_one hz him.le hc) with hd | hd | hd
    · grind [cases_c_one_d_zero hz hg him.le hc hd] -- ± S, T⁻¹S, TS
    · grind [case_c_one_d_one hz hg him.le hc hd] -- ± ST, TST
    · grind [case_c_one_d_neg_one hz hg him.le hc hd] -- ± ST⁻¹, T⁻¹ST⁻¹

/-- If `z ∈ 𝒟` and `z ≠ I, ρ, 1 + ρ`, then the stabilizer of `z` in `SL(2, ℤ)` is `± 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7e71d4dc54f7648e1da52e067c1302d689a361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
