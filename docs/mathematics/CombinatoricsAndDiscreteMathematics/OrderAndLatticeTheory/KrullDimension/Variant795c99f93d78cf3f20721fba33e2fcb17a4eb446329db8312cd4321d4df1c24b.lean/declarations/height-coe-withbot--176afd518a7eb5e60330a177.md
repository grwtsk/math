# height_coe_withBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e26b87d2-0d8e-641e-4f33-48039c728fb8",
  "kind": "lemma",
  "lexical_name": "height_coe_withBot",
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
  "slug": "height-coe-withbot--176afd518a7eb5e60330a177",
  "source": {
    "blob": "4bf76468701c9f8668eda09f9c938b58d09022c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 982,
    "line": 956,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:176afd518a7eb5e60330a1771da1fa0c29f5b725936a15ffa3acdbd86f00c621",
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

Occurrence: `result:e26b87d2-0d8e-641e-4f33-48039c728fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 956–982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma height_coe_withBot (x : α) : height (x : WithBot α) = height x + 1 := by
  apply le_antisymm
  · apply height_le
    intro p hlast
    wlog hlenpos : p.length ≠ 0
    · simp_all
    -- essentially p' := (p.drop 1).map unbot
    let p' : LTSeries α := {
      length := p.length - 1
      toFun := fun ⟨i, hi⟩ => (p ⟨i+1, by omega⟩).unbot (by
        apply ne_bot_of_gt (a := p.head)
        apply p.strictMono
        exact compare_gt_iff_gt.mp rfl)
      step := fun i => by simpa [WithBot.unbot_lt_iff] using p.step ⟨i + 1, by omega⟩ }
    have hlast' : p'.last = x := by
      simp only [p', RelSeries.last, Fin.val_last, WithBot.unbot_eq_iff, ← hlast, Fin.last]
      congr
      omega
    suffices p'.length ≤ height p'.last by
      simpa [p', hlast'] using this
    apply length_le_height_last
  · rw [height_add_const]
    apply iSup₂_le
    intro p hlast
    let p' := (p.map _ WithBot.coe_strictMono).cons ⊥ (by simp)
    apply le_iSup₂_of_le p' (by simp [p', hlast]) (by simp [p'])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variant795c99f93d78cf3f20721fba33e2fcb17a4eb446329db8312cd4321d4df1c24b.lean#L956).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf76468701c9f8668eda09f9c938b58d09022c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
