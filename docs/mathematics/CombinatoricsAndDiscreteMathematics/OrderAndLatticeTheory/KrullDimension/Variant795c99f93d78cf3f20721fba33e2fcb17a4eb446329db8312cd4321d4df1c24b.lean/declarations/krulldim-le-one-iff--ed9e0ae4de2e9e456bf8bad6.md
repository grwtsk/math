# krullDim_le_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec179c23-ec7f-5319-c838-640f7be88018",
  "kind": "lemma",
  "lexical_name": "krullDim_le_one_iff",
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
  "slug": "krulldim-le-one-iff--ed9e0ae4de2e9e456bf8bad6",
  "source": {
    "blob": "4bf76468701c9f8668eda09f9c938b58d09022c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 595,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed9e0ae4de2e9e456bf8bad66881a9e7be30695f6ddd8a57cf05789a8d1bf0b0",
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

Occurrence: `result:ec179c23-ec7f-5319-c838-640f7be88018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma krullDim_le_one_iff : krullDim α ≤ 1 ↔ ∀ x : α, IsMin x ∨ IsMax x := by
  rw [← not_iff_not]
  simp_rw [isMax_iff_forall_not_lt, isMin_iff_forall_not_lt, krullDim, iSup_le_iff]
  push_neg
  constructor
  · rintro ⟨⟨_ | _ | n, l, hl⟩, hl'⟩
    iterate 2 · cases hl'.not_le (by simp)
    exact ⟨l 1, ⟨l 0, hl 0⟩, l 2, hl 1⟩
  · rintro ⟨x, ⟨y, hxy⟩, z, hzx⟩
    exact ⟨⟨2, ![y, x, z], fun i ↦ by fin_cases i <;> simpa⟩, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf76468701c9f8668eda09f9c938b58d09022c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
