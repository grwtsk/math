# mkConfigItemViews

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d13135992bb23f7333c88d79bfa186bc79e7f386ab144ffc9731e4955b75a7b",
  "kind": "def",
  "lexical_name": "mkConfigItemViews",
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
  "slug": "mkconfigitemviews--f4176b1b712281b4bd56dc27",
  "source": {
    "blob": "cabe4195d3557c319acf5e9e948dded3a2a7d5ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4176b1b712281b4bd56dc271aed93aa68f86d7454028ee02e4d16e1f7714d78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d13135992bb23f7333c88d79bfa186bc79e7f386ab144ffc9731e4955b75a7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkConfigItemViews (c : TSyntaxArray ``configItem) : Array ConfigItemView :=
  c.map fun item =>
    match item with
    | `(configItem| ($option:ident := $value)) => { ref := item, option, value }
    | `(configItem| +$option) => { ref := item, option, bool := true, value := mkCIdentFrom item ``true }
    | `(configItem| -$option) => { ref := item, option, bool := true, value := mkCIdentFrom item ``false }
    | `(config| (config%$tk := $value)) => { ref := item, option := mkCIdentFrom tk `config, value := value }
    | _ => { ref := item, option := ⟨Syntax.missing⟩, value := ⟨Syntax.missing⟩ }

/--
Expands a field access into full field access like `toB.toA.x`.
Returns that and the last projection function for `x` itself.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cabe4195d3557c319acf5e9e948dded3a2a7d5ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
