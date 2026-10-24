# prod_factors_one_div_compMult_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df3e7f3aed3d3cd5bb529222c640f2701efef8a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb404b50-f1ad-b01f-0372-99ea8235a9ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8dbc622-1e0f-9d90-91f2-aea1a1b6b94a",
  "kind": "theorem",
  "lexical_name": "prod_factors_one_div_compMult_ge",
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
  "slug": "prod-factors-one-div-compmult-ge--31ea74fab3159b2f5ed1586a",
  "source": {
    "blob": "df3e7f3aed3d3cd5bb529222c640f2701efef8a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 157,
    "path": "GRWTSK/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31ea74fab3159b2f5ed1586a240f800942e76415b8b17e495fe63232a760a87b",
  "verification": {
    "reference": "docs/verification/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8dbc622-1e0f-9d90-91f2-aea1a1b6b94a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_factors_one_div_compMult_ge (M : ℕ) (f : ArithmeticFunction ℝ)
    (hf : CompletelyMultiplicative f) (hf_nonneg : ∀ n, 0 ≤ f n) (d : ℕ) (hd : Squarefree d)
    (hf_size : ∀ n, n.Prime → n ∣ d → f n < 1) :
    f d * ∏ p ∈ d.primeFactors, 1 / (1 - f p)
    ≥ ∏ p ∈ d.primeFactors, ∑ n ∈ Finset.Icc 1 M, f (p^n) := by
  calc f d * ∏ p ∈ d.primeFactors, 1 / (1 - f p)
    = ∏ p ∈ d.primeFactors, f p / (1 - f p)                 := by
        conv => { lhs; congr; rw [←Nat.prod_primeFactors_of_squarefree hd] }
        rw [hf.isMultiplicative.map_prod_of_subset_primeFactors _ _ subset_rfl,
          ←Finset.prod_mul_distrib]
        simp_rw[one_div, div_eq_mul_inv]
  _ ≥ ∏ p ∈ d.primeFactors, ∑ n ∈ Finset.Icc 1 M, (f p)^n  := by
    gcongr with p hp
    · exact fun p _ => Finset.sum_nonneg fun n _ => pow_nonneg (hf_nonneg p) n
    rw [Nat.mem_primeFactors_of_ne_zero hd.ne_zero] at hp
    rw [← Finset.Ico_add_one_right_eq_Icc, geom_sum_Ico,
      ← mul_div_mul_left (c := (-1 : ℝ)) (f p ^ (M + 1) - f p ^ 1)]
    · gcongr
      · apply hf_nonneg
      · linarith [hf_size p hp.1 hp.2]
      · rw [pow_one]
        have : 0 ≤ f p ^ (M + 1) := by
          apply pow_nonneg
          apply hf_nonneg
        linarith only [this]
      · linarith only
    · norm_num
    · apply ne_of_lt <| hf_size p hp.1 hp.2
    · apply Nat.succ_le_iff.mpr (Nat.succ_pos _)

  _ = ∏ p ∈ d.primeFactors, ∑ n ∈ Finset.Icc 1 M, f (p^n)  := by
     simp_rw [hf.apply_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3e7f3aed3d3cd5bb529222c640f2701efef8a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
