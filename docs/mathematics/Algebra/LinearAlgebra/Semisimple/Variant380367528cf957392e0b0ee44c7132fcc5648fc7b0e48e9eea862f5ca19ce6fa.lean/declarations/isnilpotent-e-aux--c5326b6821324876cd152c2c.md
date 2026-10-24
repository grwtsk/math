# isNilpotent_e_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d648f2a9d180c2ae628aa5fbc3a73c3b23e922c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee1bcfa7-bef0-10c5-589e-6e8a45003dcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8842b683-e832-708d-7804-114e56d8ad74",
  "kind": "lemma",
  "lexical_name": "isNilpotent_e_aux",
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
  "slug": "isnilpotent-e-aux--c5326b6821324876cd152c2c",
  "source": {
    "blob": "d648f2a9d180c2ae628aa5fbc3a73c3b23e922c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5326b6821324876cd152c2c0f6b5dea0ed883d5ba05603328f8f34259876007",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8842b683-e832-708d-7804-114e56d8ad74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isNilpotent_e_aux {j : ι} (n : ℕ) (h : letI _i := P.indexNeg; j ≠ -i) :
    (e i ^ n).col (.inr j) = 0 ∨
      ∃ (k : ι) (x : ℕ), P.root k = P.root j + n • P.root i ∧
        (e i ^ n).col (.inr j) = x • Pi.single (.inr k) 1 := by
  have : Module.IsReflexive R M := .of_isPerfPair P.toLinearMap
  have : IsAddTorsionFree M := .of_isTorsionFree R M
  let := P.indexNeg
  have aux (n : ℕ) : (e i ^ (n + 1)).col (.inr j) = (e i).mulVec ((e i ^ n).col (.inr j)) := by
    rw [pow_succ', ← Matrix.mulVec_single_one, ← Matrix.mulVec_mulVec]; simp
  induction n with
  | zero => exact Or.inr ⟨j, 1, by simp, by ext; simp [Pi.single_apply]⟩
  | succ n ih =>
    rcases ih with hn | ⟨k, x, hk₁, hk₂⟩
    · left; simp [aux, hn]
    rw [aux, hk₂, Matrix.mulVec_smul]
    have hki : k ≠ -i := by
      rintro rfl
      replace hk₁ : P.root (-j) = (n + 1) • P.root i := by
        simp only [indexNeg_neg, root_reflectionPerm, reflection_apply_self, neg_eq_iff_add_eq_zero,
          add_smul, one_smul] at hk₁ ⊢
        rw [← hk₁]
        module
      rcases n.eq_zero_or_pos with rfl | hn
      · apply h
        rw [zero_add, one_smul, EmbeddingLike.apply_eq_iff_eq] at hk₁
        simp [← hk₁, -indexNeg_neg]
      · have _i : (n + 1).AtLeastTwo := ⟨by lia⟩
        exact P.nsmul_notMem_range_root (n := n + 1) (i := i) ⟨-j, hk₁⟩
    by_cases hij : P.root j + (n + 1) • P.root i ∈ range P.root
    · obtain ⟨l, hl⟩ := hij
      right
      refine ⟨l, x * (P.chainBotCoeff i k + 1), hl, ?_⟩
      ext (m | m)
      · simp [e, -indexNeg_neg, hki]
      · rcases eq_or_ne m l with rfl | hml
        · replace hl : P.root m = P.root i + P.root k := by rw [hl, hk₁]; module
          simp [e, -indexNeg_neg, hl, mul_add]
        · replace hl : P.root m ≠ P.root i + P.root k :=
            fun contra ↦ hml (P.root.injective <| by rw [hl, contra, hk₁]; module)
          simp [e, -indexNeg_neg, hml, hl]
    · left
      ext (l | l)
      · simp [e, -indexNeg_neg, hki]
      · replace hij : P.root l ≠ P.root i + P.root k :=
          fun contra ↦ hij ⟨l, by rw [contra, hk₁]; module⟩
        simp [e, -indexNeg_neg, hij]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant380367528cf957392e0b0ee44c7132fcc5648fc7b0e48e9eea862f5ca19ce6fa.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d648f2a9d180c2ae628aa5fbc3a73c3b23e922c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
