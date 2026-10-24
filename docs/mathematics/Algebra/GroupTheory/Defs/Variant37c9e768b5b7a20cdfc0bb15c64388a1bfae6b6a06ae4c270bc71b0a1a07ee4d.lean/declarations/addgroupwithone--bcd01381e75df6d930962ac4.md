# AddGroupWithOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7de444254b3a26c17aeef1824c881d5303243709c4c3506dba86a818d74a7bd9",
  "kind": "class",
  "lexical_name": "AddGroupWithOne",
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
  "slug": "addgroupwithone--bcd01381e75df6d930962ac4",
  "source": {
    "blob": "f9845abb9a9f47c1e0a3fb38a19ba25f96891664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant37c9e768b5b7a20cdfc0bb15c64388a1bfae6b6a06ae4c270bc71b0a1a07ee4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcd01381e75df6d930962ac4dfe4ed38c08776279f0055d1ca4c7acc5a7cee91",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant37c9e768b5b7a20cdfc0bb15c64388a1bfae6b6a06ae4c270bc71b0a1a07ee4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7de444254b3a26c17aeef1824c881d5303243709c4c3506dba86a818d74a7bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddGroupWithOne (R : Type u) extends IntCast R, AddMonoidWithOne R, AddGroup R where
  /-- The canonical homorphism `ℤ → R`. -/
  intCast := Int.castDef
  /-- The canonical homorphism `ℤ → R` agrees with the one from `ℕ → R` on `ℕ`. -/
  intCast_ofNat : ∀ n : ℕ, intCast (n : ℕ) = Nat.cast n := by intros; rfl
  /-- The canonical homorphism `ℤ → R` for negative values is just the negation of the values
  of the canonical homomorphism `ℕ → R`. -/
  intCast_negSucc : ∀ n : ℕ, intCast (Int.negSucc n) = - Nat.cast (n + 1) := by intros; rfl
#align add_group_with_one AddGroupWithOne
#align add_group_with_one.to_int_cast AddGroupWithOne.toIntCast
#align add_group_with_one.to_add_monoid_with_one AddGroupWithOne.toAddMonoidWithOne
#align add_group_with_one.to_add_group AddGroupWithOne.toAddGroup
#align add_group_with_one.int_cast_of_nat AddGroupWithOne.intCast_ofNat
#align add_group_with_one.int_cast_neg_succ_of_nat AddGroupWithOne.intCast_negSucc

/-- An `AddCommGroupWithOne` is an `AddGroupWithOne` satisfying `a + b = b + a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant37c9e768b5b7a20cdfc0bb15c64388a1bfae6b6a06ae4c270bc71b0a1a07ee4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant37c9e768b5b7a20cdfc0bb15c64388a1bfae6b6a06ae4c270bc71b0a1a07ee4d.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9845abb9a9f47c1e0a3fb38a19ba25f96891664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
