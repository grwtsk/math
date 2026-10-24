# rootSpace_zsmul_add_ne_bot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a27db6fc5a41eb2c461f7a1a6f90ad29a10137a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6666b158-c511-1e3c-26fd-d1e7c23f3193",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3940989-f05b-7134-aa38-391f90385eae",
  "kind": "lemma",
  "lexical_name": "rootSpace_zsmul_add_ne_bot_iff",
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
  "slug": "rootspace-zsmul-add-ne-bot-iff--2787ef41a09f7becb95e40b2",
  "source": {
    "blob": "6a27db6fc5a41eb2c461f7a1a6f90ad29a10137a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 210,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2787ef41a09f7becb95e40b25a10cb9e08fc379abeb66606d5446ac79a48d9ea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3940989-f05b-7134-aa38-391f90385eae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rootSpace_zsmul_add_ne_bot_iff (hα : α.IsNonZero) (n : ℤ) :
    rootSpace H (n • α + β) ≠ ⊥ ↔ n ≤ chainTopCoeff α β ∧ -n ≤ chainBotCoeff α β := by
  constructor
  · refine (fun hn ↦ ⟨?_, le_chainBotCoeff_of_rootSpace_ne_top α β hα _ (by rwa [neg_neg])⟩)
    rw [← chainBotCoeff_neg, ← Weight.coe_neg]
    apply le_chainBotCoeff_of_rootSpace_ne_top _ _ hα.neg
    rwa [neg_smul, Weight.coe_neg, smul_neg, neg_neg]
  · rintro ⟨h₁, h₂⟩
    set k := chainTopCoeff α β - n with hk; clear_value k
    lift k to ℕ using (by rw [hk, le_sub_iff_add_le, zero_add]; exact h₁)
    rw [eq_sub_iff_add_eq, ← eq_sub_iff_add_eq'] at hk
    subst hk
    simp only [neg_sub, tsub_le_iff_right, ← Nat.cast_add, Nat.cast_le,
      chainBotCoeff_add_chainTopCoeff] at h₂
    have := rootSpace_neg_nsmul_add_chainTop_of_le α β h₂
    rwa [coe_chainTop, ← Nat.cast_smul_eq_nsmul ℤ, ← neg_smul,
      ← add_assoc, ← add_smul, ← sub_eq_neg_add] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a27db6fc5a41eb2c461f7a1a6f90ad29a10137a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
