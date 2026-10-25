# gradedValidPacketFirstReturnPerm_payloadBits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a095eeb5-5e4d-b04b-6b8c-38943db89763",
  "kind": "theorem",
  "lexical_name": "gradedValidPacketFirstReturnPerm_payloadBits",
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
  "slug": "gradedvalidpacketfirstreturnperm-payloadbits--e9ee981d625144cd4a7e5c7d",
  "source": {
    "blob": "608ad6eb287525bc9bf81dc68de11d042f947124",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variant30701a25de96ac6be4da872f3d3ce99eacd9e48e78471f558a7b5f339fccf4c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9ee981d625144cd4a7e5c7d3017af9c28f1e94295aaf051e77d83414f0b7834",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variant30701a25de96ac6be4da872f3d3ce99eacd9e48e78471f558a7b5f339fccf4c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a095eeb5-5e4d-b04b-6b8c-38943db89763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedValidPacketFirstReturnPerm_payloadBits
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (p : Σ k, C.ValidPacketFiber k) :
    (gradedValidPacketFirstReturnPerm C E rowPerm p).2.1.1.payloadBits =
      p.2.1.1.payloadBits := by
  rcases p with ⟨k, p⟩
  exact validPacketFiberFirstReturnPerm_payloadBits C E rowPerm k p

/-! ## Transport to snapshots -/

/--
The filesystem permutation obtained by transporting graded first return
through the exact snapshot/valid-packet representation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variant30701a25de96ac6be4da872f3d3ce99eacd9e48e78471f558a7b5f339fccf4c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variant30701a25de96ac6be4da872f3d3ce99eacd9e48e78471f558a7b5f339fccf4c1.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `608ad6eb287525bc9bf81dc68de11d042f947124` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
