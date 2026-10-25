# findProjectionIndices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3a3465991b9d5760e607b1cac6b7e1a8a1e2f2c22247711f71d6b156b19bc9c",
  "kind": "def",
  "lexical_name": "findProjectionIndices",
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
  "slug": "findprojectionindices--3154a7ef21ad3984a03a6521",
  "source": {
    "blob": "0479e1e84fa7c9d53b5dcb94336ad6f7962f01fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 494,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3154a7ef21ad3984a03a652113dab7a233d756c953849d2a576e7fb33f6da0dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3a3465991b9d5760e607b1cac6b7e1a8a1e2f2c22247711f71d6b156b19bc9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findProjectionIndices (strName projName : Name) : MetaM (List Nat) := do
  let env ← getEnv
  let some baseStr := findField? env strName projName |
    throwError "{strName} has no field {projName} in parent structure"
  let some fullProjName := getProjFnForField? env baseStr projName |
    throwError "no such field {projName}"
  let some pathToField := getPathToBaseStructure? env baseStr strName |
    throwError "no such field {projName}"
  let allProjs := pathToField ++ [fullProjName]
  return allProjs.map (env.getProjectionFnInfo? · |>.get!.i)

/--
A variant of `Substring.dropPrefix?` that does not consider `toFoo` to be a prefix to `toFoo_1`.
This is checked by inspecting whether the first character of the remaining part is a digit.

We use this variant because the latter is often a different field with an auto-generated name.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdd4e666e3ca08122c0e7e41278fa5e49a15b1a2aa9c3ede251b8bdfa212ca063.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0479e1e84fa7c9d53b5dcb94336ad6f7962f01fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
