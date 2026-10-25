# PrintPrefixConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0fbaa45e25f693bb99ee12f930b669c654d6c66bc6f96762b3e0be11b2b0b04",
  "kind": "structure",
  "lexical_name": "PrintPrefixConfig",
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
  "slug": "printprefixconfig--b14aa594763481b6fb70e447",
  "source": {
    "blob": "524f18c23e36ac2f57e699d163ed5754d41f61cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b14aa594763481b6fb70e447bf4fc3e9dc23eb88e00a901eea81576d0d44d05e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0fbaa45e25f693bb99ee12f930b669c654d6c66bc6f96762b3e0be11b2b0b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure PrintPrefixConfig where
  /-- Include declarations in imported environment. -/
  imported : Bool := true
  /-- Include declarations whose types are propositions. -/
  propositions : Bool := true
  /-- Exclude declarations whose types are not propositions. -/
  propositionsOnly : Bool := false
  /-- Print the type of a declaration. -/
  showTypes : Bool := true
  /--
  Include internal declarations (names starting with `_`, `match_` or `proof_`)
  -/
  internals : Bool := false

/-- Function elaborating `Config`. -/
declare_config_elab elabPrintPrefixConfig PrintPrefixConfig

/--
The command `#print prefix foo` will print all definitions that start with
the namespace `foo`.

For example, the command below will print out definitions in the `List` namespace:

```lean
#print prefix List
```

`#print prefix` can be controlled by flags in `PrintPrefixConfig`.  These provide
options for filtering names and formatting.   For example,
`#print prefix` by default excludes internal names, but this can be controlled
via config:
```lean
#print prefix (config:={internals:=true}) List
```

By default, `#print prefix` prints the type after each name.  This can be controlled
by setting `showTypes` to `false`:
```lean
#print prefix (config:={showTypes:=false}) List
```

The complete set of flags can be seen in the documentation
for `Lean.Elab.Command.PrintPrefixConfig`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1cf8c4294417b890ee3c8971ff3586b078674b2b298afd4637384920695e67dc.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524f18c23e36ac2f57e699d163ed5754d41f61cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
