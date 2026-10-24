# ringKrullDim_add_natCard_le_ringKrullDim_mvPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "441d953976e4e2cbc4362b7fe6a24a3a535f7f48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a989a5b76f3d8b2e3e0bca8fa4fb07f2dc3bc63dfee0b7d717581e11483d8ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b37cdbc2-186a-0558-5dd2-6a53c5f83940",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c05ea71-9937-7b50-4398-2225db366653",
  "kind": "lemma",
  "lexical_name": "ringKrullDim_add_natCard_le_ringKrullDim_mvPolynomial",
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
  "slug": "ringkrulldim-add-natcard-le-ringkrulldim-mvpolynomial--de4d8577a4f02e0e9661083d",
  "source": {
    "blob": "441d953976e4e2cbc4362b7fe6a24a3a535f7f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variant6a989a5b76f3d8b2e3e0bca8fa4fb07f2dc3bc63dfee0b7d717581e11483d8ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de4d8577a4f02e0e9661083dbe16a25c4d357e811506eeeb96a9accaa265f515",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NonZeroDivisors/Variant6a989a5b76f3d8b2e3e0bca8fa4fb07f2dc3bc63dfee0b7d717581e11483d8ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c05ea71-9937-7b50-4398-2225db366653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ringKrullDim_add_natCard_le_ringKrullDim_mvPolynomial (σ : Type*) [Finite σ] :
    ringKrullDim R + Nat.card σ ≤ ringKrullDim (MvPolynomial σ R) := by
  induction σ using Finite.induction_empty_option with
  | of_equiv e H =>
    convert! ← H using 1
    · rw [Nat.card_congr e]
    · exact ringKrullDim_eq_of_ringEquiv (renameEquiv _ e).toRingEquiv
  | h_empty => simp
  | h_option IH =>
    simp only [Nat.card_eq_fintype_card, Fintype.card_option, Nat.cast_add, Nat.cast_one,
      ← add_assoc] at IH ⊢
    grw [IH, ringKrullDim_succ_le_ringKrullDim_polynomial]
    exact (ringKrullDim_eq_of_ringEquiv (MvPolynomial.optionEquivLeft _ _).toRingEquiv).ge

open MvPolynomial in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NonZeroDivisors/Variant6a989a5b76f3d8b2e3e0bca8fa4fb07f2dc3bc63dfee0b7d717581e11483d8ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variant6a989a5b76f3d8b2e3e0bca8fa4fb07f2dc3bc63dfee0b7d717581e11483d8ee.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `441d953976e4e2cbc4362b7fe6a24a3a535f7f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
