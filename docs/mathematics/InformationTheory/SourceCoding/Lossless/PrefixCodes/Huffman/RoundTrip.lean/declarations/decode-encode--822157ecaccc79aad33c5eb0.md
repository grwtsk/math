# decode_encode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:261e7076-c240-3719-d0a0-685660b62a1e",
  "kind": "theorem",
  "lexical_name": "decode_encode",
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
  "slug": "decode-encode--822157ecaccc79aad33c5eb0",
  "source": {
    "blob": "07e1a9a291bd5002fc8e2dceed980242ba0752ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 84,
    "path": "GRWTSK/InformationTheory/Huffman/RoundTrip.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:822157ecaccc79aad33c5eb0571039ef10bb0d7abbfae607292f840ba306276c",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:261e7076-c240-3719-d0a0-685660b62a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decode_encode (source : List UInt8) : decode (encode source) = some source := by
  cases built : build source with
  | none =>
    cases source with
    | nil =>
      have hzero : fromWeights (frequencies []) = none := by
        change fromWeights (fun _ => 0) = none
        exact fromWeights_zero
      have hbits : encodedBits [] = [] := by simp [encodedBits]
      simp [decode, encode, hzero, hbits, Wire.pack]
    | cons a tail =>
      obtain ⟨tree, ht, _⟩ := build_complete (a :: tail) (by simp)
      simp [built] at ht
  | some tree =>
    have htree : fromWeights (frequencies source) = some tree := built
    have hmachine := Machine.run_packed_encoding tree source (encodedBits source)
      (encodedBits_spec built)
    exact decode_of_run (encode source) tree source htree hmachine
      (validResult_encode source tree)

/-- The fixed-frequency encoded packet, rather than a source or stored tree,
is sufficient to determine the original source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/RoundTrip.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/RoundTrip.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07e1a9a291bd5002fc8e2dceed980242ba0752ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
