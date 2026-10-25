# SetupImportsResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a85554563bc1d2df305d7cb9e865bea21bf68895023c23560a9fbac3d7b923b1",
  "kind": "structure",
  "lexical_name": "SetupImportsResult",
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
  "slug": "setupimportsresult--9bea9fc9be59f1813b0cbe32",
  "source": {
    "blob": "4a7b553d8946e330f1de283cb38807371c7e00b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantf2bca1a2f1d2e435dd9996417245be987368a6e3465cf48fc6cbd1ce938d10cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bea9fc9be59f1813b0cbe32a890db812929afe4d78f51a8f577817cc2a30737",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantf2bca1a2f1d2e435dd9996417245be987368a6e3465cf48fc6cbd1ce938d10cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a85554563bc1d2df305d7cb9e865bea21bf68895023c23560a9fbac3d7b923b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SetupImportsResult where
  /-- Module name of the file being processed. -/
  mainModuleName : Name
  /-- Package name of the file being processed (if any). -/
  package? : Option PkgId := none
  /-- Whether the file is participating in the module system. -/
  isModule : Bool
  /-- Direct imports of the file being processed. -/
  imports : Array Import
  /-- Options provided outside of the file content, e.g. on the cmdline or in the lakefile. -/
  opts : Options
  /-- Kernel trust level. -/
  trustLevel : UInt32 := 0
  /-- Pre-resolved artifacts of transitively imported modules. -/
  importArts : NameMap ImportArtifacts := {}
  /-- Lean plugins to load as part of the environment setup. -/
  plugins : Array Plugin := #[]

/--
Parses an option value from a string and inserts it into `opts`.
The type of the option is determined from `decl`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantf2bca1a2f1d2e435dd9996417245be987368a6e3465cf48fc6cbd1ce938d10cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantf2bca1a2f1d2e435dd9996417245be987368a6e3465cf48fc6cbd1ce938d10cc.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7b553d8946e330f1de283cb38807371c7e00b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
