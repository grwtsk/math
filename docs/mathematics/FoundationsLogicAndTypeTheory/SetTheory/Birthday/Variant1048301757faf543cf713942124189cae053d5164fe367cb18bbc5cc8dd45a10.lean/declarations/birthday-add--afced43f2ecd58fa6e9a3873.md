# birthday_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0694e381-36ad-4701-b021-15db7a5a3217",
  "kind": "theorem",
  "lexical_name": "birthday_add",
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
  "slug": "birthday-add--afced43f2ecd58fa6e9a3873",
  "source": {
    "blob": "22058a51d76ae73bde1c9752169418661b1751f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afced43f2ecd58fa6e9a3873960b192b403d67c373ec0ac512da061a8efa9df1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0694e381-36ad-4701-b021-15db7a5a3217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem birthday_add : ∀ x y : PGame.{u}, (x + y).birthday = x.birthday ♯ y.birthday
  | ⟨xl, xr, xL, xR⟩, ⟨yl, yr, yL, yR⟩ => by
    rw [birthday_def, nadd, lsub_sum, lsub_sum]
    simp only [mk_add_moveLeft_inl, mk_add_moveLeft_inr, mk_add_moveRight_inl, mk_add_moveRight_inr,
      moveLeft_mk, moveRight_mk]
    conv_lhs => left; left; right; intro a; rw [birthday_add (xL a) ⟨yl, yr, yL, yR⟩]
    conv_lhs => left; right; right; intro b; rw [birthday_add ⟨xl, xr, xL, xR⟩ (yL b)]
    conv_lhs => right; left; right; intro a; rw [birthday_add (xR a) ⟨yl, yr, yL, yR⟩]
    conv_lhs => right; right; right; intro b; rw [birthday_add ⟨xl, xr, xL, xR⟩ (yR b)]
    rw [max_max_max_comm]
    congr <;> apply le_antisymm
    any_goals
      refine max_le_iff.2 ⟨?_, ?_⟩
      all_goals
        refine lsub_le_iff.2 fun i ↦ ?_
        rw [← Order.succ_le_iff]
        refine Ordinal.le_iSup (fun _ : Set.Iio _ ↦ _) ⟨_, ?_⟩
        apply_rules [birthday_moveLeft_lt, birthday_moveRight_lt]
    all_goals
      rw [Ordinal.iSup_le_iff]
      rintro ⟨i, hi⟩
      obtain ⟨j, hj⟩ | ⟨j, hj⟩ := lt_birthday_iff.1 hi <;> rw [Order.succ_le_iff]
    · exact lt_max_of_lt_left ((nadd_le_nadd_right hj _).trans_lt (lt_lsub _ _))
    · exact lt_max_of_lt_right ((nadd_le_nadd_right hj _).trans_lt (lt_lsub _ _))
    · exact lt_max_of_lt_left ((nadd_le_nadd_left hj _).trans_lt (lt_lsub _ _))
    · exact lt_max_of_lt_right ((nadd_le_nadd_left hj _).trans_lt (lt_lsub _ _))
termination_by a b => (a, b)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22058a51d76ae73bde1c9752169418661b1751f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
