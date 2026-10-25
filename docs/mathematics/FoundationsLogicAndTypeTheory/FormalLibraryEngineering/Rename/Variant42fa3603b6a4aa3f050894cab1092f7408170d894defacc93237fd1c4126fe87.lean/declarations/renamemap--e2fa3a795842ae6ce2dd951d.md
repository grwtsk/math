# RenameMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f84df6d468a73f0228d6692c98ac98227e883c1d54d3758db09b4a0f3b9bc1a1",
  "kind": "structure",
  "lexical_name": "RenameMap",
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
  "slug": "renamemap--e2fa3a795842ae6ce2dd951d",
  "source": {
    "blob": "6328045e557c0144399a728ab2249f9943575720",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2fa3a795842ae6ce2dd951dd4d93435db4f32cf019aae95740510cfcb213a1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f84df6d468a73f0228d6692c98ac98227e883c1d54d3758db09b4a0f3b9bc1a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RenameMap where
  /-- This maps `n3 ↦ (dubious, n4)` where `n3` is the lean 3 name and `n4` is the corresponding
  lean 4 name. `dubious` is either empty, or a warning message to be displayed when `n3` is
  translated, which indicates that the translation from `n3` to `n4` is approximate and may cause
  downstream errors. -/
  toLean4 : NameMap (String × Name) := {}
  /-- This maps `n4 ↦ (n3, clashes)` where `n4` is the lean 4 name and `n3::clashes` is the list of
  all (non-`synthetic`) declarations that map to `n4`. (That is, we do not assume the mapping
  from lean 3 to lean 4 name is injective.) -/
  toLean3 : NameMap (Name × List Name) := {}
  deriving Inhabited

/-- An `olean` entry for the rename extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6328045e557c0144399a728ab2249f9943575720` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
