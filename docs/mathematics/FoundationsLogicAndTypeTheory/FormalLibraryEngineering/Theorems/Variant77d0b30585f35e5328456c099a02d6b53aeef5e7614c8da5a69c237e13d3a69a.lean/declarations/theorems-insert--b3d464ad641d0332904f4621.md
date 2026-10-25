# Theorems.insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9016033373d14512c7162bc8c2287080863fb4519aee1fb8d39e311a774eceac",
  "kind": "def",
  "lexical_name": "Theorems.insert",
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
  "slug": "theorems-insert--b3d464ad641d0332904f4621",
  "source": {
    "blob": "7bbd56c0ce0a1244d04445c9144667ab12ccec04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant77d0b30585f35e5328456c099a02d6b53aeef5e7614c8da5a69c237e13d3a69a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3d464ad641d0332904f4621dd7e417730cf00aeae4763856fe2e1bf29f6560e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant77d0b30585f35e5328456c099a02d6b53aeef5e7614c8da5a69c237e13d3a69a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9016033373d14512c7162bc8c2287080863fb4519aee1fb8d39e311a774eceac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Theorems.insert [TheoremLike α] (s : Theorems α) (thm : α) : Theorems α := Id.run do
  let .const declName :: syms := getSymbols thm
    | unreachable!
  let thm := setSymbols thm syms
  let { smap, origins, erased, omap } := s
  let origin := getOrigin thm
  let origins := origins.insert origin
  let erased := erased.erase origin
  let smap := if let some thms := smap.find? declName then
    smap.insert declName (thm::thms)
  else
    smap.insert declName [thm]
  let omap := if let some thms := omap.find? origin then
    omap.insert origin (thm::thms)
  else
    omap.insert origin [thm]
  return { smap, origins, erased, omap }

/-- Returns `true` if `s` contains a theorem with the given origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant77d0b30585f35e5328456c099a02d6b53aeef5e7614c8da5a69c237e13d3a69a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant77d0b30585f35e5328456c099a02d6b53aeef5e7614c8da5a69c237e13d3a69a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bbd56c0ce0a1244d04445c9144667ab12ccec04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
