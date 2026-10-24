# dimension_level_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1977cbe1-a6b2-fe50-2c35-62705302cb5a",
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
  "slug": "dimension-level-one--0cd8dc0d303f07eae2bb3562",
  "source": {
    "blob": "512e3d81fafd3dfcb596bfa5e2fa4fc8292027a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 258,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cd8dc0d303f07eae2bb3562953877b16bd85087ba2f0343a48ad24ed1cd5fe4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1977cbe1-a6b2-fe50-2c35-62705302cb5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–281.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant2abb3fa6b20be6ebb59fd2db9186152d826f017a75cf1e4d160964b817057159.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `512e3d81fafd3dfcb596bfa5e2fa4fc8292027a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
