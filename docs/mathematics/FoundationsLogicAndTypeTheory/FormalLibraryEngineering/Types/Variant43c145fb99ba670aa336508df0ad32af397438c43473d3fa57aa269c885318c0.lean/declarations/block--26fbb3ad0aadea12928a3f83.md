# Block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50cc01043b7c4606f0fb5b4cdb0e4ae3db6dbe297ef4e70ab2b0250dbea780d7",
  "kind": "inductive",
  "lexical_name": "Block",
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
  "slug": "block--26fbb3ad0aadea12928a3f83",
  "source": {
    "blob": "7b1cdc7930dd9f431e6918e4974ae61e56f4f378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant43c145fb99ba670aa336508df0ad32af397438c43473d3fa57aa269c885318c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26fbb3ad0aadea12928a3f83815446e0dea7381164a540ea58c22ddc6c5a279e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant43c145fb99ba670aa336508df0ad32af397438c43473d3fa57aa269c885318c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50cc01043b7c4606f0fb5b4cdb0e4ae3db6dbe297ef4e70ab2b0250dbea780d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Block (i : Type u) (b : Type v) : Type (max u v) where
  /--
  A paragraph.
  -/
  | para (contents : Array (Inline i))
  /--
  A code block.
  -/
  | code (content : String)
  /--
  An unordered list.
  -/
  | ul (items : Array (ListItem (Block i b)))
  /--
  An ordered list.
  -/
  | ol (start : Int) (items : Array (ListItem (Block i b)))
  /--
  A description list that associates explanatory text with shorter items.
  -/
  | dl (items : Array (DescItem (Inline i) (Block i b)))
  /--
  A quotation.
  -/
  | blockquote (items : Array (Block i b))
  /--
  Multiple blocks, merged.
  -/
  | concat (content : Array (Block i b))
  /--
  A genre-specific block. `container` specifies what kind of block it is, while `content` specifies
  the content within the block.
  -/
  | other (container : b) (content : Array (Block i b))
deriving BEq, Ord, Repr, Inhabited

/-- An empty block with no content. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant43c145fb99ba670aa336508df0ad32af397438c43473d3fa57aa269c885318c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant43c145fb99ba670aa336508df0ad32af397438c43473d3fa57aa269c885318c0.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b1cdc7930dd9f431e6918e4974ae61e56f4f378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
