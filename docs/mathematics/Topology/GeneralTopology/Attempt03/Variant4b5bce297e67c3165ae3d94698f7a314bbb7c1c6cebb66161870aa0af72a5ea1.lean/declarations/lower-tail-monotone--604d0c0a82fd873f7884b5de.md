# lower_tail_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0e351a4-2d8e-9b97-0afb-84f1ac6b2bb4",
  "kind": "theorem",
  "lexical_name": "lower_tail_monotone",
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
  "slug": "lower-tail-monotone--604d0c0a82fd873f7884b5de",
  "source": {
    "blob": "ae069874ba2d8415d4f9b6a00d2d82e27e58f628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:604d0c0a82fd873f7884b5ded9c52954d3bed5b84985f21158c3020aa7b2fb5b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0e351a4-2d8e-9b97-0afb-84f1ac6b2bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lower_tail_monotone : Monotone (fun n : ℕ => lowerSequence (n + 4)) := by
  apply monotone_nat_of_le_succ
  intro n
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
    lowerSequence_le_succ (n + 4) (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae069874ba2d8415d4f9b6a00d2d82e27e58f628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
