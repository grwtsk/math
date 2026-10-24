# filesystemCausalStateEquivPacketCausalState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2e0fb008ac85f1607eafa8d2fad3a5ae305cd316b3e3f6754d547ed585a4a59",
  "kind": "def",
  "lexical_name": "filesystemCausalStateEquivPacketCausalState",
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
  "slug": "filesystemcausalstateequivpacketcausalstate--e41ec0c201378c660ae50817",
  "source": {
    "blob": "8f30f4415215734f5dd432b177b076c0f3614db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 128,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e41ec0c201378c660ae5081770baa734d90ae95e427ae65d719eca15884c99de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2e0fb008ac85f1607eafa8d2fad3a5ae305cd316b3e3f6754d547ed585a4a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def filesystemCausalStateEquivPacketCausalState
    {Input : Type uI}
    {Snapshot : Type uS}
    {Resolution : Type uR}
    {width : Nat}
    (C : FilesystemMatrixCodec Snapshot width)
    (M : System Input Snapshot Resolution) :
    M.CausalState ≃ (packetSystem C M).CausalState where
  toFun := Quotient.map C.snapshotEquivValidPacket
    (fun _ _ h =>
      transport_causalEquivalent C.snapshotEquivValidPacket M h)
  invFun := Quotient.map C.snapshotEquivValidPacket.symm (by
    intro x y h
    change
      (transportSystem C.snapshotEquivValidPacket M).CausalEquivalent x y at h
    intro inputs ρ
    have hxy := h inputs ρ
    rw [transportSystem_run C.snapshotEquivValidPacket M inputs x,
      transportSystem_run C.snapshotEquivValidPacket M inputs y] at hxy
    simpa [transportSystem] using hxy)
  left_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    change M.toCausal
        (C.snapshotEquivValidPacket.symm
          (C.snapshotEquivValidPacket x)) = M.toCausal x
    rw [C.snapshotEquivValidPacket.symm_apply_apply]
  right_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    change (packetSystem C M).toCausal
        (C.snapshotEquivValidPacket
          (C.snapshotEquivValidPacket.symm x)) =
      (packetSystem C M).toCausal x
    rw [C.snapshotEquivValidPacket.apply_symm_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f30f4415215734f5dd432b177b076c0f3614db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
