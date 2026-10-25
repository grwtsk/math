# decidableExistsLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df4f1c27b186edbb296c487a9d84b762160dd1fd5b1ddde772fdabdfafbbae58",
  "kind": "instance",
  "lexical_name": "decidableExistsLe",
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
  "slug": "decidableexistsle--e6e298cbdbe07f04c71a860f",
  "source": {
    "blob": "cf4f33438c96f0f307a86aa754bae33cc7517887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 947,
    "line": 941,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2caac56283da8a39f4fcfea3f42fa3dbca84af8c3227f7bda9ec9c96d71fe261.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6e298cbdbe07f04c71a860fa2181ccf6f2550ff2bcc85f5c0e6c290a0146fc6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2caac56283da8a39f4fcfea3f42fa3dbca84af8c3227f7bda9ec9c96d71fe261.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df4f1c27b186edbb296c487a9d84b762160dd1fd5b1ddde772fdabdfafbbae58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 941–947.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableExistsLe {P : ℕ → Prop} [DecidablePred P] :
    DecidablePred fun n => ∃ m : ℕ, m ≤ n ∧ P m :=
  fun n => decidable_of_iff (∃ m, m < n + 1 ∧ P m)
    (exists_congr fun _ => and_congr_left' lt_succ_iff)
#align nat.decidable_exists_le Nat.decidableExistsLe

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2caac56283da8a39f4fcfea3f42fa3dbca84af8c3227f7bda9ec9c96d71fe261.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2caac56283da8a39f4fcfea3f42fa3dbca84af8c3227f7bda9ec9c96d71fe261.lean#L941).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf4f33438c96f0f307a86aa754bae33cc7517887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
