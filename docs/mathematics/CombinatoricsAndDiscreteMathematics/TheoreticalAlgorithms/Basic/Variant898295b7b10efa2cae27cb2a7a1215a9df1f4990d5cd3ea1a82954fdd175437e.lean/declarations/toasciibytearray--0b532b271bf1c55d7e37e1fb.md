# toAsciiByteArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea35e03c628d9bbe44cd747bd8ddc7dfbc8f3c8d778d53b981bebe867f0613b0",
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
  "slug": "toasciibytearray--0b532b271bf1c55d7e37e1fb",
  "source": {
    "blob": "821a0f0dacca653ae9e4315ccaa86d59b90c512f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant898295b7b10efa2cae27cb2a7a1215a9df1f4990d5cd3ea1a82954fdd175437e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b532b271bf1c55d7e37e1fbb94a5a9e30c0a5c5c70873bb670658003ba71883",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant898295b7b10efa2cae27cb2a7a1215a9df1f4990d5cd3ea1a82954fdd175437e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea35e03c628d9bbe44cd747bd8ddc7dfbc8f3c8d778d53b981bebe867f0613b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant898295b7b10efa2cae27cb2a7a1215a9df1f4990d5cd3ea1a82954fdd175437e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant898295b7b10efa2cae27cb2a7a1215a9df1f4990d5cd3ea1a82954fdd175437e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `821a0f0dacca653ae9e4315ccaa86d59b90c512f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
