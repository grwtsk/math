# CbvEvalState.rebuildLemmas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61ecd7c1e7ae6bfc1273b0179b4dd94bc853985d1db96df38172dce4cf69644a",
  "kind": "def",
  "lexical_name": "CbvEvalState.rebuildLemmas",
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
  "slug": "cbvevalstate-rebuildlemmas--45f5eee528e7d412f2de075a",
  "source": {
    "blob": "8eab48d4d296b61fbd0a654fa039acf08ad5e9e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45f5eee528e7d412f2de075ac074814205090b72ae45ef8aa029f5c1296e27ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61ecd7c1e7ae6bfc1273b0179b4dd94bc853985d1db96df38172dce4cf69644a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def CbvEvalState.rebuildLemmas (entries : NameMap <| Array CbvEvalEntry) (appFn : Name) (lemmas : NameMap Theorems) : NameMap Theorems := 
  let appFnEntries := entries.getD appFn #[] 
  if appFnEntries.isEmpty then
    lemmas.erase appFn
  else
    lemmas.insert appFn (appFnEntries.foldl (fun thms e => thms.insert e.thm) {})

/-- Erase a theorem from the state. Returns `none` if the theorem is not found. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eab48d4d296b61fbd0a654fa039acf08ad5e9e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
