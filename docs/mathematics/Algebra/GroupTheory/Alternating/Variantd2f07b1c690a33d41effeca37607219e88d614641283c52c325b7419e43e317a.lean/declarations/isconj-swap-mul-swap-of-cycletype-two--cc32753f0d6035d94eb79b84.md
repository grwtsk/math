# isConj_swap_mul_swap_of_cycleType_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15003ab1be16403bcf301bc4f5118234b4738b9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76809feb-b381-2ebd-0b68-c3c6cd36c8a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81afb5bc-0bed-4a72-6bfe-1e5d8ce53efb",
  "kind": "theorem",
  "lexical_name": "isConj_swap_mul_swap_of_cycleType_two",
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
  "slug": "isconj-swap-mul-swap-of-cycletype-two--cc32753f0d6035d94eb79b84",
  "source": {
    "blob": "15003ab1be16403bcf301bc4f5118234b4738b9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 290,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc32753f0d6035d94eb79b840a193458aed83173e6c6a32fd9b77e418adb6147",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81afb5bc-0bed-4a72-6bfe-1e5d8ce53efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConj_swap_mul_swap_of_cycleType_two {g : Perm (Fin 5)} (ha : g ∈ alternatingGroup (Fin 5))
    (h1 : g ≠ 1) (h2 : ∀ n, n ∈ cycleType (g : Perm (Fin 5)) → n = 2) :
    IsConj (swap 0 4 * swap 1 3) g := by
  have h := g.support.card_le_univ
  rw [← Multiset.eq_replicate_card] at h2
  rw [← sum_cycleType, h2, Multiset.sum_replicate, smul_eq_mul] at h
  have h : Multiset.card g.cycleType ≤ 3 :=
    le_of_mul_le_mul_right (le_trans h (by norm_num only [card_fin])) (by simp)
  rw [mem_alternatingGroup, sign_of_cycleType, h2] at ha
  norm_num at ha
  rw [pow_add, pow_mul, Int.units_pow_two, one_mul, neg_one_pow_eq_one_iff_even] at ha
  swap; · decide
  rw [isConj_iff_cycleType_eq, h2]
  interval_cases h_1 : Multiset.card g.cycleType
  · exact (h1 (card_cycleType_eq_zero.1 h_1)).elim
  · simp at ha
  · have h04 : (0 : Fin 5) ≠ 4 := by decide
    have h13 : (1 : Fin 5) ≠ 3 := by decide
    rw [Disjoint.cycleType, (isCycle_swap h04).cycleType, (isCycle_swap h13).cycleType,
      card_support_swap h04, card_support_swap h13]
    · simp
    · rw [disjoint_iff_disjoint_support, support_swap h04, support_swap h13]
      decide
  · contradiction

/-- Shows that $A_5$ is simple by taking an arbitrary non-identity element and showing by casework
  on its cycle type that its normal closure is all of $A_5$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variantd2f07b1c690a33d41effeca37607219e88d614641283c52c325b7419e43e317a.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15003ab1be16403bcf301bc4f5118234b4738b9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
