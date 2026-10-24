# dimension_level_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de21ee2e021a2add699300561411e2a06e7fe230",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:daeb184d-6855-5d34-942d-2cb229b52bcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59c1e8d9-14a6-3295-ed43-d173da11fda7",
  "kind": "theorem",
  "lexical_name": "dimension_level_one",
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
  "slug": "dimension-level-one--8bb43dfd0eee68f8c184fcb8",
  "source": {
    "blob": "de21ee2e021a2add699300561411e2a06e7fe230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 250,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb43dfd0eee68f8c184fcb8a566e9d982be8210d64433bb45f90c16f0aea29a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59c1e8d9-14a6-3295-ed43-d173da11fda7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dimension_level_one (k : ℕ) (hk2 : Even k) :
    Module.rank ℂ (ModularForm 𝒮ℒ k) =
      if k ≡ 2 [MOD 12] then k / 12 else k / 12 + 1 := by
  induction k using Nat.strong_induction_on with | h k ihn =>
  have : k < 3 ∨ (3 ≤ k ∧ k < 12) ∨ 12 ≤ k := by grind
  rcases this with hk | hk | hk
  · -- `k < 3`: direct case-by-case check
    interval_cases k
    · simpa using! levelOne_weight_zero_rank_one
    · grind
    · simpa [Nat.ModEq] using levelOne_weight_two_rank_zero
  · -- `3 ≤ k < 12`: rank decomposition + the weight `k - 12` space is zero
    rw [rank_eq_one_add_rank_cuspForm hk.1 hk2, CuspForm.discriminantEquiv.rank_eq,
      levelOne_neg_weight_rank_zero (by lia)]
    have : k ∈ (Finset.Icc 3 11).filter Even := by grind
    fin_cases this <;> simp [Nat.ModEq]
  · -- `12 ≤ k`: rank decomposition + induction hypothesis at weight `k - 12`
    rw [rank_eq_one_add_rank_cuspForm (by lia) hk2, CuspForm.discriminantEquiv.rank_eq,
      show ((k : ℤ) - 12 : ℤ) = ((k - 12 : ℕ) : ℤ) by lia,
      ihn (k - 12) (by lia) (by grind)]
    simp only [Nat.ModEq, show k / 12 = (k - 12) / 12 + 1 by lia,
      show (k - 12) % 12 = k % 12 by lia]
    split_ifs <;> grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de21ee2e021a2add699300561411e2a06e7fe230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
