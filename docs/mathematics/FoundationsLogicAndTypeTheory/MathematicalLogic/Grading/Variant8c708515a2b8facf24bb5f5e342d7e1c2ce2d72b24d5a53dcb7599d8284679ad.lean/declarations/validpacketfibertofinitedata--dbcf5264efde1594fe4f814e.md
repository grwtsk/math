# validPacketFiberToFiniteData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:598e4031223840d187c40883fe1ac6a091224a71155901cfc6370d61498fa353",
  "kind": "def",
  "lexical_name": "validPacketFiberToFiniteData",
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
  "slug": "validpacketfibertofinitedata--dbcf5264efde1594fe4f814e",
  "source": {
    "blob": "6a550aeeb247f92f1f5439e89d14038b37b37d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant8c708515a2b8facf24bb5f5e342d7e1c2ce2d72b24d5a53dcb7599d8284679ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbcf5264efde1594fe4f814e75c838efff09001ca6a9d61e6defee7724074957",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant8c708515a2b8facf24bb5f5e342d7e1c2ce2d72b24d5a53dcb7599d8284679ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:598e4031223840d187c40883fe1ac6a091224a71155901cfc6370d61498fa353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def validPacketFiberToFiniteData
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :
    C.ValidPacketFiber k ↪
      (Fin (k * r + 1) × BitMatrix k r) where
  toFun p :=
    (⟨p.1.1.payloadBits, by
      have hcapacity := p.1.1.capacity
      rw [p.property] at hcapacity
      omega⟩,
      validPacketFiberMatrix C p)
  inj' p q h := by
    have hlength := congrArg (fun data => data.1.val) h
    have hmatrix := congrArg (fun data => data.2) h
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant8c708515a2b8facf24bb5f5e342d7e1c2ce2d72b24d5a53dcb7599d8284679ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant8c708515a2b8facf24bb5f5e342d7e1c2ce2d72b24d5a53dcb7599d8284679ad.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a550aeeb247f92f1f5439e89d14038b37b37d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
