# revFind?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcd9f7a241d00925d0a879027921a92ee1aae9c1e80b0b8e93ff8b407b118df3",
  "kind": "def",
  "lexical_name": "revFind?",
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
  "slug": "revfind--016ffe1e8e6fba04cddcc04f",
  "source": {
    "blob": "13fb4183504a6263ed40f5bfcdad5402e4148056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 911,
    "line": 894,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:016ffe1e8e6fba04cddcc04f534a0b36afd6ea38e89dee008a1adab83aa7420f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcd9f7a241d00925d0a879027921a92ee1aae9c1e80b0b8e93ff8b407b118df3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–911.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def revFind? (s : Slice) (pat : ρ) [ToBackwardSearcher pat σ] : Option s.Pos :=
  let searcher := ToBackwardSearcher.toSearcher pat s
  searcher.findSome? (fun | .matched startPos _ => some startPos | .rejected .. => none)

end BackwardPatternUsers

/--
Removes leading and trailing whitespace from a slice.

“Whitespace” is defined as characters for which {name}`Char.isWhitespace` returns {name}`true`.

Examples:
 * {lean}`"abc".toSlice.trimAscii == "abc".toSlice`
 * {lean}`"   abc".toSlice.trimAscii == "abc".toSlice`
 * {lean}`"abc \t  ".toSlice.trimAscii == "abc".toSlice`
 * {lean}`"  abc   ".toSlice.trimAscii == "abc".toSlice`
 * {lean}`"abc\ndef\n".toSlice.trimAscii == "abc\ndef".toSlice`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13fb4183504a6263ed40f5bfcdad5402e4148056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
