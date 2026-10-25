# fixedPointCount_snapshotFiber_eq_ambientValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d324ffa82dd5e1f52c004c15a72890508f8a7f80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac09536a-5a14-0c89-9579-1bccd4bf3118",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5aedd82c-9658-3ccf-037e-84db4f357133",
  "kind": "theorem",
  "lexical_name": "fixedPointCount_snapshotFiber_eq_ambientValid",
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
  "slug": "fixedpointcount-snapshotfiber-eq-ambientvalid--0f6a815c898c5c64f48c5d58",
  "source": {
    "blob": "d324ffa82dd5e1f52c004c15a72890508f8a7f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variantf7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f6a815c898c5c64f48c5d58f85469df3a13f4c6f4872ad8432b232c294de7db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variantf7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aedd82c-9658-3ccf-037e-84db4f357133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedPointCount_snapshotFiber_eq_ambientValid
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k t : Nat) :
    FinitePermutationDynamics.fixedPointCount
        (snapshotFiberFirstReturnPerm C E rowPerm k) t =
      FinitePermutationDynamics.fixedPointCount
        (ambientValidFirstReturnPerm C E rowPerm k) t :=
  (fixedPointCount_snapshotFiber_eq_validPacketFiber
    C E rowPerm k t).trans
      (fixedPointCount_validPacketFiber_eq_ambientValid
        C E rowPerm k t)

/-- Primitive-cycle counts coincide in the snapshot and ambient presentations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variantf7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variantf7fdfc7d93c8aa6a00dfabbc3ddfbbf6b52ed836a08c59151dbef58f5c3b49d5.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d324ffa82dd5e1f52c004c15a72890508f8a7f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
