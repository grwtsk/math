# krullDim_eq_iSup_height_add_coheight_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eca63c83-1a5c-06b3-ddd0-496829f66a8b",
  "kind": "lemma",
  "lexical_name": "krullDim_eq_iSup_height_add_coheight_of_nonempty",
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
  "slug": "krulldim-eq-isup-height-add-coheight-of-nonempty--75662bd3606a6d08140fc373",
  "source": {
    "blob": "4bf76468701c9f8668eda09f9c938b58d09022c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 777,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75662bd3606a6d08140fc373b9bad238cb8398544eda896c1ed4f6b9cd71ff23",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eca63c83-1a5c-06b3-ddd0-496829f66a8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 777–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma krullDim_eq_iSup_height_add_coheight_of_nonempty [Nonempty α] :
    krullDim α = ↑(⨆ (a : α), height a + coheight a) := by
  apply le_antisymm
  · rw [krullDim_eq_iSup_height_of_nonempty, WithBot.coe_le_coe]
    apply ciSup_mono (by bddDefault) (by simp)
  · wlog hnottop : krullDim α < ⊤
    · simp_all
    rw [krullDim_eq_iSup_length, WithBot.coe_le_coe]
    apply iSup_le
    intro a
    have : height a < ⊤ := WithBot.coe_lt_coe.mp (lt_of_le_of_lt (height_le_krullDim a) hnottop)
    have : coheight a < ⊤ := WithBot.coe_lt_coe.mp (lt_of_le_of_lt (coheight_le_krullDim a) hnottop)
    cases hh : height a with
    | top => simp_all
    | coe n =>
      cases hch : coheight a with
      | top => simp_all
      | coe m =>
        obtain ⟨p₁, hlast, hlen₁⟩ := exists_series_of_height_eq_coe a hh
        obtain ⟨p₂, hhead, hlen₂⟩ := exists_series_of_coheight_eq_coe a hch
        apply le_iSup_of_le ((p₁.smash p₂) (by simp [*])) (by simp [*])

/--
The Krull dimension is the supremum of the elements' heights.

If `α` is `Nonempty`, then `krullDim_eq_iSup_height_of_nonempty`, with the coercion from
`ℕ∞` to `WithBot ℕ∞` outside the supremum, can be more convenient.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean#L777).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf76468701c9f8668eda09f9c938b58d09022c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
