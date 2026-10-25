# warnRedundantEMatchArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f97a952da63387858cd5797c3236bedc26cc002bc54044ce17184aa269c9492",
  "kind": "def",
  "lexical_name": "warnRedundantEMatchArg",
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
  "slug": "warnredundantematcharg--f6628aa0b57ac110471d40ab",
  "source": {
    "blob": "4618670a37414c3eb7ee989af27ea86acd16030d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6628aa0b57ac110471d40ab6c15cec4d7f36b1502fdf51a6bc97edd1531f2c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f97a952da63387858cd5797c3236bedc26cc002bc54044ce17184aa269c9492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def warnRedundantEMatchArg (s : Grind.ExtensionStateArray) (declName : Name) : MetaM Unit := do
  let minIndexable := false -- TODO: infer it
  let kinds ← match s.getKindsFor (.decl declName) with
    | [] => return ()
    | [k] => pure m!"@{k.toAttribute minIndexable}"
    | [.eqLhs gen, .eqRhs _]
    | [.eqRhs gen, .eqLhs _] => pure m!"@{(Grind.EMatchTheoremKind.eqBoth gen).toAttribute minIndexable}"
    | ks =>
      let ks := ks.map fun k => m!"@{k.toAttribute minIndexable}"
      pure m!"{ks}"
  logWarning m!"this parameter is redundant, environment already contains `{declName}` annotated with `{kinds}`"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4618670a37414c3eb7ee989af27ea86acd16030d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
