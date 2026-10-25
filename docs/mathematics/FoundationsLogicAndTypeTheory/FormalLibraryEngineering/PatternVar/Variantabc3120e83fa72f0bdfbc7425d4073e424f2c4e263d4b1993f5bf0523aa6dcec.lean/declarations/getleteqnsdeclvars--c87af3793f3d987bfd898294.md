# getLetEqnsDeclVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e13174ebf595bd233dab7fcbeb78b5b17b2fb93606549b70b34092fbeb5f4e8",
  "kind": "def",
  "lexical_name": "getLetEqnsDeclVars",
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
  "slug": "getleteqnsdeclvars--c87af3793f3d987bfd898294",
  "source": {
    "blob": "62d0945670f4878e8339765d21b96bc1fc653ef2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variantabc3120e83fa72f0bdfbc7425d4073e424f2c4e263d4b1993f5bf0523aa6dcec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c87af3793f3d987bfd8982949317a05ef14b493ec125fe770243d77889cd3f99",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variantabc3120e83fa72f0bdfbc7425d4073e424f2c4e263d4b1993f5bf0523aa6dcec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e13174ebf595bd233dab7fcbeb78b5b17b2fb93606549b70b34092fbeb5f4e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getLetEqnsDeclVars (letEqnsDecl : TSyntax ``letEqnsDecl) : TermElabM (Array Ident) :=
  -- def letEqnsDecl := leading_parser letIdLhs >> matchAlts
  -- def letIdLhs : Parser := letId >> many (ppSpace >> letIdBinder) >> optType
  -- NB: `letIdLhs` does not introduce a new node
  getLetIdVars ⟨letEqnsDecl.raw[0]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variantabc3120e83fa72f0bdfbc7425d4073e424f2c4e263d4b1993f5bf0523aa6dcec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variantabc3120e83fa72f0bdfbc7425d4073e424f2c4e263d4b1993f5bf0523aa6dcec.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62d0945670f4878e8339765d21b96bc1fc653ef2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
