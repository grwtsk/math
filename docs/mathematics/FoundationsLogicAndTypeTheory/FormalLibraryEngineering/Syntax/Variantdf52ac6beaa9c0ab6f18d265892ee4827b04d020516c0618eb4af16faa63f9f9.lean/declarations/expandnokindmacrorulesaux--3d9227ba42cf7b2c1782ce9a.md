# expandNoKindMacroRulesAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63ca6d43c1e3d33b0b0e4afa27a3ec624ffbd168dba98e7169a9275367e4a894",
  "kind": "def",
  "lexical_name": "expandNoKindMacroRulesAux",
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
  "slug": "expandnokindmacrorulesaux--3d9227ba42cf7b2c1782ce9a",
  "source": {
    "blob": "26ba9576232a398d9deb7cfbf6accb85ac97720b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 483,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d9227ba42cf7b2c1782ce9aabe2db1f53d30d8fa613afdd5e9b777aec5c5848",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63ca6d43c1e3d33b0b0e4afa27a3ec624ffbd168dba98e7169a9275367e4a894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandNoKindMacroRulesAux (alts : Array (TSyntax ``matchAlt)) (cmdName : String) (mkCmd : Option Name → Array (TSyntax ``matchAlt) → CommandElabM Command) : CommandElabM Command := do
  let mut k ← inferMacroRulesAltKind alts[0]!
  if k.isStr && k.getString! == "antiquot" then
    k := k.getPrefix
  if k == choiceKind then
    throwErrorAt alts[0]!
      "invalid {cmdName} alternative, multiple interpretations for pattern (solution: specify node kind using `{cmdName} (kind := ...) ...`)"
  else
    let altsK    ← alts.filterM fun alt => return checkRuleKind (← inferMacroRulesAltKind alt) k
    let altsNotK ← alts.filterM fun alt => return !checkRuleKind (← inferMacroRulesAltKind alt) k
    if altsNotK.isEmpty then
      mkCmd k altsK
    else
      `($(← mkCmd k altsK):command $(← mkCmd none altsNotK))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ba9576232a398d9deb7cfbf6accb85ac97720b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
