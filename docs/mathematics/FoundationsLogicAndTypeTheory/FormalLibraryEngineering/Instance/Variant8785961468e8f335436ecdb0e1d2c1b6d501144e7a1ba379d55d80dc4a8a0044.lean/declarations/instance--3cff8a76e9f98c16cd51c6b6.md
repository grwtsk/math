# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9576ce48ea316c70c47261ec11951c3a616e66f85ae9cd7f35606e7ecec6e38d",
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
  "slug": "instance--3cff8a76e9f98c16cd51c6b6",
  "source": {
    "blob": "49d182b07b3b67910db1211bd208818cc8d4fd83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instance/Variant8785961468e8f335436ecdb0e1d2c1b6d501144e7a1ba379d55d80dc4a8a0044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cff8a76e9f98c16cd51c6b6c2635c4dd875ecc4e5da4fe5166564e0ba924ba6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instance/Variant8785961468e8f335436ecdb0e1d2c1b6d501144e7a1ba379d55d80dc4a8a0044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9576ce48ea316c70c47261ec11951c3a616e66f85ae9cd7f35606e7ecec6e38d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {n : Nat} : Formula (PosFin n) (DefaultClause n) (DefaultFormula n) where
  toList := toList
  ReadyForRupAdd := ReadyForRupAdd
  ReadyForRatAdd := ReadyForRatAdd
  ofArray := ofArray
  readyForRupAdd_ofArray := readyForRupAdd_ofArray
  readyForRatAdd_ofArray := readyForRatAdd_ofArray
  insert := insert
  insert_iff := insert_iff
  readyForRupAdd_insert := readyForRupAdd_insert
  readyForRatAdd_insert := readyForRatAdd_insert
  delete := delete
  readyForRupAdd_delete := readyForRupAdd_delete
  readyForRatAdd_delete := readyForRatAdd_delete
  delete_subset := delete_subset
  formulaEntails_def := formulaEntails_def
  performRupAdd := performRupAdd
  rupAdd_result := rupAdd_result
  rupAdd_sound := rupAdd_sound
  performRatAdd := performRatAdd
  ratAdd_result := ratAdd_result
  ratAdd_sound := ratAdd_sound

end DefaultFormula

end Internal
end LRAT
end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instance/Variant8785961468e8f335436ecdb0e1d2c1b6d501144e7a1ba379d55d80dc4a8a0044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instance/Variant8785961468e8f335436ecdb0e1d2c1b6d501144e7a1ba379d55d80dc4a8a0044.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d182b07b3b67910db1211bd208818cc8d4fd83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
