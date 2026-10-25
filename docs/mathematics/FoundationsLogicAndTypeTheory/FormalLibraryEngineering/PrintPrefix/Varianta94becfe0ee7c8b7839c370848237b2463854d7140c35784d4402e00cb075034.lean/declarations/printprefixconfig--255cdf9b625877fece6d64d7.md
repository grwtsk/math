# PrintPrefixConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:484921a01982c07e7f5543bc7371b616dc23034a30618feb47e90ef6ce1868a1",
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
  "slug": "printprefixconfig--255cdf9b625877fece6d64d7",
  "source": {
    "blob": "ffac4a26e7d95cf436d77049316fce064446019f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Varianta94becfe0ee7c8b7839c370848237b2463854d7140c35784d4402e00cb075034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:255cdf9b625877fece6d64d72bef27f16818f133339416d6fa0b55c3c7b1f160",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Varianta94becfe0ee7c8b7839c370848237b2463854d7140c35784d4402e00cb075034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:484921a01982c07e7f5543bc7371b616dc23034a30618feb47e90ef6ce1868a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
declare_command_config_elab elabPrintPrefixConfig PrintPrefixConfig

/--
`reverseName name` reverses the components of a name.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Varianta94becfe0ee7c8b7839c370848237b2463854d7140c35784d4402e00cb075034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Varianta94becfe0ee7c8b7839c370848237b2463854d7140c35784d4402e00cb075034.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffac4a26e7d95cf436d77049316fce064446019f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
