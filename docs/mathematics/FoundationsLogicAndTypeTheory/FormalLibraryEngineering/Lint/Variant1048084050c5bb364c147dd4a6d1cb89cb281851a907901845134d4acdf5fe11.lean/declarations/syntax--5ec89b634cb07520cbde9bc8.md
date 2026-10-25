# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f8ef93139e7e64d5b6c559ccd73cbe59ab7289e3366236dba9e0f97d0f7dc78",
  "kind": "syntax",
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
  "slug": "syntax--5ec89b634cb07520cbde9bc8",
  "source": {
    "blob": "2425a75e4608bdfa3121dfd6e3ae444c5a1888a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant1048084050c5bb364c147dd4a6d1cb89cb281851a907901845134d4acdf5fe11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ec89b634cb07520cbde9bc8a0c3e3725d9b95fb36f7c827480277360426cd4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant1048084050c5bb364c147dd4a6d1cb89cb281851a907901845134d4acdf5fe11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f8ef93139e7e64d5b6c559ccd73cbe59ab7289e3366236dba9e0f97d0f7dc78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax (name := grindLintCheck) "#grind_lint" ppSpace &"check" (ppSpace configItem)* (ppSpace "in" (ppSpace &"module")? ident+)? : command

/--
`#grind_lint inspect thm₁ …` analyzes the specified theorem(s) individually.

It always prints detailed statistics regardless of thresholds and is useful
for investigating specific `grind` lemmas that may generate excessive
instantiations.
Examples:
```
#grind_lint inspect Array.zip_map
```
You can use `set_option trace.grind.ematch.instance true` to instruct `grind` to display the
actual instances it produces.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant1048084050c5bb364c147dd4a6d1cb89cb281851a907901845134d4acdf5fe11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant1048084050c5bb364c147dd4a6d1cb89cb281851a907901845134d4acdf5fe11.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2425a75e4608bdfa3121dfd6e3ae444c5a1888a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
