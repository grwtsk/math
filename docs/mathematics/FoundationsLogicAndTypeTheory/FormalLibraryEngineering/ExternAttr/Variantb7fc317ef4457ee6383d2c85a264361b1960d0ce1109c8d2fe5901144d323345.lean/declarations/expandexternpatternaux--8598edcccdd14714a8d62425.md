# expandExternPatternAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b50fc327fe16b003aff3670e13f079c401ec67b7efec6534cf0c3b86a94960d7",
  "kind": "def",
  "lexical_name": "expandExternPatternAux",
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
  "slug": "expandexternpatternaux--8598edcccdd14714a8d62425",
  "source": {
    "blob": "9cc1a5ec19ee5238e699c146ffc3428536ef0f51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8598edcccdd14714a8d6242551956cfe46c36e668b63089a1c2d3daabdf2baaa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b50fc327fe16b003aff3670e13f079c401ec67b7efec6534cf0c3b86a94960d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandExternPatternAux (args : List String) (pattern : String) (it : pattern.Pos) (r : String) : String :=
  if h : it.IsAtEnd then r
  else let c := it.get h
    if c ≠ '#' then expandExternPatternAux args pattern (it.next h) (r.push c)
    else
      let it₁      := it.next h
      let (it₂, j) := parseOptNum (pattern.sliceFrom it₁) (String.Slice.startPos _) 0
      let j       := j-1
      have : it < String.Pos.ofSliceFrom it₂ := Std.lt_of_lt_of_le String.Pos.lt_next String.Pos.le_ofSliceFrom
      expandExternPatternAux args pattern (String.Pos.ofSliceFrom it₂) (r ++ args.getD j "")
termination_by it

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variantb7fc317ef4457ee6383d2c85a264361b1960d0ce1109c8d2fe5901144d323345.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cc1a5ec19ee5238e699c146ffc3428536ef0f51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
