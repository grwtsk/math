# filterSuggestionsAndLocalsFromSimpConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c99d083af0f83553fd26615c096e15bfe6084a429dcd49718f7cd1ef432b038",
  "kind": "def",
  "lexical_name": "filterSuggestionsAndLocalsFromSimpConfig",
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
  "slug": "filtersuggestionsandlocalsfromsimpconfig--16b103437d14e8a567c6d51b",
  "source": {
    "blob": "5dc8b9e2f100794446bfbe4ecd9c87f867739058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16b103437d14e8a567c6d51bfb61c9a20656fb3b9cc2fa3fe89cd18dee4aef6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c99d083af0f83553fd26615c096e15bfe6084a429dcd49718f7cd1ef432b038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def filterSuggestionsAndLocalsFromSimpConfig (cfg : TSyntax ``Lean.Parser.Tactic.optConfig) :
    MetaM (TSyntax ``Lean.Parser.Tactic.optConfig) := do
  -- The config has one arg: a null node containing configItem nodes
  let nullNode := cfg.raw.getArg 0
  let configItems := nullNode.getArgs

  -- Filter out configItem nodes that contain +suggestions or +locals
  let filteredItems := configItems.filter fun item =>
    match item[0]?, item.getKind with
    | some posConfigItem, ``Lean.Parser.Tactic.configItem =>
      match posConfigItem[1]?, posConfigItem.getKind with
      | some ident, ``Lean.Parser.Tactic.posConfigItem =>
        let id := ident.getId.eraseMacroScopes
        id != `suggestions && id != `locals
      | _, _ => true
    | _, _ => true

  -- Reconstruct the config with filtered items
  let newNullNode := nullNode.setArgs filteredItems
  return ⟨cfg.raw.setArg 0 newNullNode⟩

open TSyntax.Compat in
/-- Constructs the syntax for a simp call, for use with `simp?`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variant69b08d9a769a3d50943848069f23d09a6ea8efd7930b05a869dc37b5bc41232c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dc8b9e2f100794446bfbe4ecd9c87f867739058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
