# validPacketFiberToAmbient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9fb7408a3d470b62ebc4c3a026649c7ba94d127c9992545afdded95ba9d26d4",
  "kind": "def",
  "lexical_name": "validPacketFiberToAmbient",
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
  "slug": "validpacketfibertoambient--79caa3e25ddca09c4365dcdb",
  "source": {
    "blob": "4f3a5b00ea2844e26cefd6a9cf1a2b03fc1242c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant7e1dc46db5b05448fd782763d59bbba1f6702dd743f0f702e6a0122d6f92d2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79caa3e25ddca09c4365dcdb92ed9413b12b1f45cd8d6cc747cef5239658b157",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant7e1dc46db5b05448fd782763d59bbba1f6702dd743f0f702e6a0122d6f92d2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9fb7408a3d470b62ebc4c3a026649c7ba94d127c9992545afdded95ba9d26d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def validPacketFiberToAmbient
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (k : Nat) :
    C.ValidPacketFiber k ↪ AmbientPacketFiber F r k where
  toFun p :=
    { payloadBits := ⟨p.1.1.payloadBits, by
        have hcapacity := p.1.1.capacity
        rw [p.property] at hcapacity
        omega⟩
      fieldRows := rowVectorEquiv E k (validPacketFiberMatrix C p) }
  inj' p q h := by
    have hlength := congrArg
      (fun a : AmbientPacketFiber F r k => a.payloadBits.val) h
    have hfields := congrArg
      (fun a : AmbientPacketFiber F r k => a.fieldRows) h
    have hmatrix : validPacketFiberMatrix C p =
        validPacketFiberMatrix C q :=
      (rowVectorEquiv E k).injective hfields
    apply Subtype.ext
    apply Subtype.ext
    apply Subtype.ext
    apply RawBitPacket.ext
    · exact p.property.trans q.property.symm
    · exact
        (cast_heq
          (congrArg (fun rows => BitMatrix rows r) p.property)
          p.1.1.matrix).symm.trans
          ((heq_of_eq hmatrix).trans
            (cast_heq
              (congrArg (fun rows => BitMatrix rows r) q.property)
              q.1.1.matrix))
    · exact hlength

/-- The image predicate for valid serializer packets inside an ambient fiber. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant7e1dc46db5b05448fd782763d59bbba1f6702dd743f0f702e6a0122d6f92d2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant7e1dc46db5b05448fd782763d59bbba1f6702dd743f0f702e6a0122d6f92d2c3.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f3a5b00ea2844e26cefd6a9cf1a2b03fc1242c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
