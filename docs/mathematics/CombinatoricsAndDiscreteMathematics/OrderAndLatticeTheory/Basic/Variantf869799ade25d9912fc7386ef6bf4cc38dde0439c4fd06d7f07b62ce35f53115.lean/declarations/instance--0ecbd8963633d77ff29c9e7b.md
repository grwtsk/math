# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ea3186eb4515da9e7e81e34b0ed3f9c9b3c6a600e6e748e8abcd5f8ba70bffe",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0ecbd8963633d77ff29c9e7b",
  "source": {
    "blob": "6e5ba067c2ed0a76204be5b800d98975bce5ce2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1281,
    "line": 1238,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ecbd8963633d77ff29c9e7b3b44b34a4d71d0b4a8df7261f7dd308e1605099d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ea3186eb4515da9e7e81e34b0ed3f9c9b3c6a600e6e748e8abcd5f8ba70bffe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1238–1281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PredOrder (WithBot α) where
  pred a :=
    match a with
    | ⊥ => ⊥
    | Option.some a => ite (a = ⊥) ⊥ (some (pred a))
  pred_le a := by
    cases' a with a a
    · exact bot_le
    change ite _ _ _ ≤ _
    split_ifs
    · exact bot_le
    · exact some_le_some.2 (pred_le a)
  min_of_le_pred {a} ha := by
    cases' a with a a
    · exact isMin_bot
    dsimp only at ha
    split_ifs at ha with ha'
    · exact (not_coe_le_bot _ ha).elim
    · rw [some_eq_coe, coe_le_coe, le_pred_iff_eq_bot] at ha
      exact (ha' ha).elim
  le_pred_of_lt {a b} h := by
    cases a
    · exact bot_le
    cases b
    · exact (not_lt_bot h).elim
    rw [some_lt_some] at h
    change _ ≤ ite _ _ _
    split_ifs with hb
    · rw [hb] at h
      exact (not_lt_bot h).elim
    · exact some_le_some.2 (le_pred_of_lt h)
  le_of_pred_lt {a b} h := by
    cases b
    · exact (not_lt_bot h).elim
    cases a
    · exact bot_le
    dsimp only at h
    rw [some_le_some]
    split_ifs at h with ha
    · rw [ha]
      exact bot_le
    · exact le_of_pred_lt (some_lt_some.1 h)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean#L1238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5ba067c2ed0a76204be5b800d98975bce5ce2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
