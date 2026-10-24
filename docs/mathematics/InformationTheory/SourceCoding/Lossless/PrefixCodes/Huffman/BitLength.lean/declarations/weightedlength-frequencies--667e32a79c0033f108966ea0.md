# weightedLength_frequencies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c75ba7ae-6f7d-8c7d-f944-d60be5fc5f02",
  "kind": "theorem",
  "lexical_name": "weightedLength_frequencies",
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
  "slug": "weightedlength-frequencies--667e32a79c0033f108966ea0",
  "source": {
    "blob": "de91e735efb1ddfa39035e578bde4ee2d842c93f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 110,
    "path": "GRWTSK/InformationTheory/Huffman/BitLength.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:667e32a79c0033f108966ea091a5c95af96376b7719aceac8e06c01859864816",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c75ba7ae-6f7d-8c7d-f944-d60be5fc5f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedLength_frequencies (source : List UInt8) (tree : Tree) :
    weightedLength (frequencies source) tree = (source.map (codeLength tree)).sum :=
  frequency_sum source (codeLength tree)

/-- The exact natural arithmetic performed by `Tree::bit_len` equals the
length of the actual concatenated codewords. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/BitLength.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/BitLength.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de91e735efb1ddfa39035e578bde4ee2d842c93f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
