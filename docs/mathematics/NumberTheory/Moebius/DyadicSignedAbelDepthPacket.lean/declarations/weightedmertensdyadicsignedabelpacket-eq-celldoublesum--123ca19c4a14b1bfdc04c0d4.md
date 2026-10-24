# weightedMertensDyadicSignedAbelPacket_eq_cellDoubleSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c12bcd17-ab6d-a919-63d9-9c3236edb35b",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicSignedAbelPacket_eq_cellDoubleSum",
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
  "slug": "weightedmertensdyadicsignedabelpacket-eq-celldoublesum--123ca19c4a14b1bfdc04c0d4",
  "source": {
    "blob": "17c231f572462f054985fb3e8bebd8ab7985e3a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:123ca19c4a14b1bfdc04c0d4c17ea9b0127428a7c41bd82d53263e66c2e087b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c12bcd17-ab6d-a919-63d9-9c3236edb35b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicSignedAbelPacket_eq_cellDoubleSum
    (j : ℕ) :
    weightedMertensDyadicSignedAbelPacket j =
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        ∑ t ∈ Finset.range (2 ^ (j + 1)),
          weightedMertensDyadicSignedAbelCell j h t := by
  unfold weightedMertensDyadicSignedAbelPacket
  apply Finset.sum_congr rfl
  intro h hhmem
  exact weightedMertensDyadicShiftAbelContribution_eq_cellSum
    (Finset.mem_Ico.mp hhmem).1 (Finset.mem_Ico.mp hhmem).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicSignedAbelDepthPacket.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17c231f572462f054985fb3e8bebd8ab7985e3a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
