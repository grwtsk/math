# toAsciiByteArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71e3310554cadc1a5fadb5b40bb64610086b974d018458ae174ddfe7083bdb67",
  "kind": "def",
  "lexical_name": "toAsciiByteArray",
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
  "slug": "toasciibytearray--e9c50d95a31c3b3ed6085fa9",
  "source": {
    "blob": "19fad91e8df73871462b0b062d76ff00bb7ef05f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant41f5586ccc9968f02a4a1798d84618ec79f4e40ff280877f77cbdd6bfaf49fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9c50d95a31c3b3ed6085fa91fb98b90eaf602d906daa4f0c82ad31a4e8e5c7c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant41f5586ccc9968f02a4a1798d84618ec79f4e40ff280877f77cbdd6bfaf49fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71e3310554cadc1a5fadb5b40bb64610086b974d018458ae174ddfe7083bdb67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toAsciiByteArray (s : String) : ByteArray :=
  let rec
  /--
  Internal implementation of `toAsciiByteArray`.
  `loop p out = out ++ toAsciiByteArray ({ s with startPos := p } : Substring)`
  -/
  loop (p : Pos.Raw) (out : ByteArray) : ByteArray :=
    if h : p.atEnd s then out else
    let c := p.get s
    have : utf8ByteSize s - (Pos.Raw.next s p).byteIdx < utf8ByteSize s - p.byteIdx :=
      Nat.sub_lt_sub_left (Nat.lt_of_not_le <| mt decide_eq_true h)
        (Nat.lt_add_of_pos_right (Char.utf8Size_pos _))
    loop (p.next s) (out.push c.toUInt8)
    termination_by utf8ByteSize s - p.byteIdx
  loop 0 ByteArray.empty
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant41f5586ccc9968f02a4a1798d84618ec79f4e40ff280877f77cbdd6bfaf49fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant41f5586ccc9968f02a4a1798d84618ec79f4e40ff280877f77cbdd6bfaf49fce.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19fad91e8df73871462b0b062d76ff00bb7ef05f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
