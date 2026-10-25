# snapshotFiberEquivValidPacketFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5bb5fdbe5e94cfd5e146321c64bc6d571764f54608d641f607a0f0a9d9406ee",
  "kind": "def",
  "lexical_name": "snapshotFiberEquivValidPacketFiber",
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
  "slug": "snapshotfiberequivvalidpacketfiber--7445185b4947216ab108f95c",
  "source": {
    "blob": "4f3a5b00ea2844e26cefd6a9cf1a2b03fc1242c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant7e1dc46db5b05448fd782763d59bbba1f6702dd743f0f702e6a0122d6f92d2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7445185b4947216ab108f95c2961d164d786d43adc280d949cb54bad4247ac5b",
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

Occurrence: `declaration:f5bb5fdbe5e94cfd5e146321c64bc6d571764f54608d641f607a0f0a9d9406ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def snapshotFiberEquivValidPacketFiber
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :
    SnapshotFiber C k ≃ C.ValidPacketFiber k where
  toFun snapshot :=
    ⟨C.snapshotEquivValidPacket snapshot.1, snapshot.property⟩
  invFun packet :=
    ⟨C.snapshotEquivValidPacket.symm packet.1, by
      have hpacket :
          C.encode (C.snapshotEquivValidPacket.symm packet.1) = packet.1.1 := by
        change
          (C.snapshotEquivValidPacket
            (C.snapshotEquivValidPacket.symm packet.1)).1 = packet.1.1
        rw [C.snapshotEquivValidPacket.apply_symm_apply]
      rw [hpacket]
      exact packet.property⟩
  left_inv snapshot := by
    apply Subtype.ext
    exact C.snapshotEquivValidPacket.symm_apply_apply snapshot.1
  right_inv packet := by
    apply Subtype.ext
    exact C.snapshotEquivValidPacket.apply_symm_apply packet.1

/-! ## Finite ambient fibers -/

/--
An ambient fixed-row field state.  The finite length coordinate ranges from
zero through the full `k*r`-bit capacity.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant7e1dc46db5b05448fd782763d59bbba1f6702dd743f0f702e6a0122d6f92d2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant7e1dc46db5b05448fd782763d59bbba1f6702dd743f0f702e6a0122d6f92d2c3.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f3a5b00ea2844e26cefd6a9cf1a2b03fc1242c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
