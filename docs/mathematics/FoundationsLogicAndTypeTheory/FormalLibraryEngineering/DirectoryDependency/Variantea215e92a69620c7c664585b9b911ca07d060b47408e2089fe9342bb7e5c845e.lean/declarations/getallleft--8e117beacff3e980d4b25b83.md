# getAllLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2001f60d86b70e584706c5122cfaa83deb0ec722c712c065585abd522e71dc4f",
  "kind": "def",
  "lexical_name": "getAllLeft",
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
  "slug": "getallleft--8e117beacff3e980d4b25b83",
  "source": {
    "blob": "49387b8d8005fcfedca09974e3cf6cc842a710bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e117beacff3e980d4b25b83403ca6657cd5afe289e2d9a678a07b35ca8f4b2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2001f60d86b70e584706c5122cfaa83deb0ec722c712c065585abd522e71dc4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getAllLeft (r : NamePrefixRel) (n : Name) : NameSet := Id.run do
  let matchingPrefixes := n.prefixes.filter (fun prf ↦ r.containsKey prf)
  let mut allRules := NameSet.empty
  for prefix_ in matchingPrefixes do
    let some rules := r.find? prefix_ | unreachable!
    allRules := allRules.append rules
  allRules

end NamePrefixRel

-- TODO: add/extend tests for this linter, to ensure the allow-list works
-- TODO: move the following three lists to a JSON file, for easier evolution over time!
-- Future: enforce that allowed and forbidden keys are disjoint
-- Future: move further directories to use this allow-list instead of the blocklist

/-- `allowedImportDirs` relates module prefixes, specifying that modules with the first prefix
are only allowed to import modules in the second directory.
For directories which are low in the import hierarchy, this opt-out approach is both more ergonomic
(fewer updates needed) and needs less configuration.

We always allow imports of `Init`, `Lean`, `Std`, `Qq` and
`Mathlib.Init` (as well as their transitive dependencies.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectoryDependency/Variantea215e92a69620c7c664585b9b911ca07d060b47408e2089fe9342bb7e5c845e.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49387b8d8005fcfedca09974e3cf6cc842a710bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
