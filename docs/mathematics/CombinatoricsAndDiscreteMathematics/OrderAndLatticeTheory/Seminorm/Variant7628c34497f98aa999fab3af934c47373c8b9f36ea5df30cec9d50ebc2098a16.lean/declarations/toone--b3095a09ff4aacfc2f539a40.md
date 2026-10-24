# toOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d09994ba7e1c530bb95e174bcf8cdb967761148958c62f9e7f44863ac31f412f",
  "kind": "instance",
  "lexical_name": "toOne",
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
  "slug": "toone--b3095a09ff4aacfc2f539a40",
  "source": {
    "blob": "a25fa3c2ec1b2a0ec240104d79e15d25273a5c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 444,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant7628c34497f98aa999fab3af934c47373c8b9f36ea5df30cec9d50ebc2098a16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3095a09ff4aacfc2f539a40fbf65715363dbc9b5048358b210fc7c2d0c3072c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant7628c34497f98aa999fab3af934c47373c8b9f36ea5df30cec9d50ebc2098a16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d09994ba7e1c530bb95e174bcf8cdb967761148958c62f9e7f44863ac31f412f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toOne [DecidableEq E] : One (AddGroupSeminorm E) :=
  ⟨{  toFun := fun x => if x = 0 then 0 else 1
      map_zero' := ite_eq_left rfl
      add_le' := fun x y => by
        by_cases hx : x = 0
        · rw [ite_eq_left hx, hx, zero_add, zero_add]
        · rw [ite_eq_right hx]
          refine le_add_of_le_of_nonneg ?_ ?_ <;> split_ifs <;> norm_num
      neg' := fun x => by simp_rw [neg_eq_zero] }⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant7628c34497f98aa999fab3af934c47373c8b9f36ea5df30cec9d50ebc2098a16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Seminorm/Variant7628c34497f98aa999fab3af934c47373c8b9f36ea5df30cec9d50ebc2098a16.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a25fa3c2ec1b2a0ec240104d79e15d25273a5c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
