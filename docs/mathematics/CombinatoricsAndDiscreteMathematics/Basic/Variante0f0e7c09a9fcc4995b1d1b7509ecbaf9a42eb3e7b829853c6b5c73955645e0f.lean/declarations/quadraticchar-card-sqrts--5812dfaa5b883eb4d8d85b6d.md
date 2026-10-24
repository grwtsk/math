# quadraticChar_card_sqrts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3db8b666d77153bf7fc137251adccd59989a8755",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:695fedf1-f7f2-6b46-2da9-ba1a4f7fed2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14f3db03-b2ba-6a3c-2bde-fe20160cdb40",
  "kind": "theorem",
  "lexical_name": "quadraticChar_card_sqrts",
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
  "slug": "quadraticchar-card-sqrts--5812dfaa5b883eb4d8d85b6d",
  "source": {
    "blob": "3db8b666d77153bf7fc137251adccd59989a8755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5812dfaa5b883eb4d8d85b6d9f9e9bab6931b25d3b105d8d43510f686743d0b9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14f3db03-b2ba-6a3c-2bde-fe20160cdb40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticChar_card_sqrts (hF : ringChar F ≠ 2) (a : F) :
    #{x : F | x ^ 2 = a}.toFinset = quadraticChar F a + 1 := by
  -- we consider the cases `a = 0`, `a` is a nonzero square and `a` is a nonsquare in turn
  by_cases h₀ : a = 0
  · simp only [h₀, sq_eq_zero_iff, Set.setOf_eq_eq_singleton, Set.toFinset_card,
    Set.card_singleton, Int.natCast_succ, Int.ofNat_zero, MulChar.map_zero]
  · set s := {x : F | x ^ 2 = a}.toFinset
    by_cases h : IsSquare a
    · rw [(quadraticChar_one_iff_isSquare h₀).mpr h]
      rcases h with ⟨b, h⟩
      rw [h, mul_self_eq_zero] at h₀
      have h₁ : s = [b, -b].toFinset := by
        ext1
        rw [← pow_two] at h
        simp only [Set.toFinset_setOf, h, mem_filter, mem_univ, true_and, List.toFinset_cons,
          List.toFinset_nil, insert_empty_eq, mem_insert, mem_singleton, s]
        exact sq_eq_sq_iff_eq_or_eq_neg
      norm_cast
      rw [h₁, List.toFinset_cons, List.toFinset_cons, List.toFinset_nil]
      exact card_pair (Ne.symm (mt (Ring.eq_self_iff_eq_zero_of_char_ne_two hF).mp h₀))
    · rw [quadraticChar_neg_one_iff_not_isSquare.mpr h]
      simp only [neg_add_cancel, Int.natCast_eq_zero, card_eq_zero, eq_empty_iff_forall_notMem]
      simpa [s, isSquare_iff_exists_sq, eq_comm] using h

/-- The sum over the values of the quadratic character is zero when the characteristic is odd. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante0f0e7c09a9fcc4995b1d1b7509ecbaf9a42eb3e7b829853c6b5c73955645e0f.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3db8b666d77153bf7fc137251adccd59989a8755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
