# expandPackageTargetLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49a7c2f8eb6fdac9a954558cac41ea08fbe9f4eb9e6d53476031f7f1046e9a79",
  "kind": "def",
  "lexical_name": "expandPackageTargetLit",
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
  "slug": "expandpackagetargetlit--af598d1fa34f7e3cf116a1c9",
  "source": {
    "blob": "edceea66c12aab7de1cb23a7b4e516218100587c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variant950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af598d1fa34f7e3cf116a1c955aa12e747f184b9939354a60612f87e24b157a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variant950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49a7c2f8eb6fdac9a954558cac41ea08fbe9f4eb9e6d53476031f7f1046e9a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def expandPackageTargetLit
  (pkg : Term) (stx : TSyntax ``packageTargetLit)
: MacroM Term := withRef stx do
  let `(packageTargetLit|$[+%$mod?]?$tgt) := stx
    | Macro.throwError "ill-formed package target literal"
  let tgtLit := Name.quoteFrom tgt tgt.getId
  if mod?.isSome then
    `(BuildKey.packageModule $pkg $tgtLit)
  else
    `(BuildKey.packageTarget $pkg $tgtLit)

@[builtin_macro moduleTargetKeyLit]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variant950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variant950cc4b672762929e074f0300e5263dea4f886cf414c97929380e4fd91e747b1.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edceea66c12aab7de1cb23a7b4e516218100587c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
