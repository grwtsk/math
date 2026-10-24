# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a10c8f31fa813679b66cdebdd5762293d7334198da87ae882c6c7985c006476",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1543e69d0f4e9a489ab18dd9",
  "source": {
    "blob": "e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1543e69d0f4e9a489ab18dd9a387204a89c85112de859facd727befceda89f90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a10c8f31fa813679b66cdebdd5762293d7334198da87ae882c6c7985c006476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Inhabited (PicardLindelof E) :=
  ⟨⟨0, 0, 0, ⟨0, le_rfl, le_rfl⟩, 0, 0, 0, 0,
      { ht₀ := by rw [Subtype.coe_mk, Icc_self]; exact mem_singleton _
        hR := le_rfl
        lipschitz := fun _ _ => (LipschitzWith.const 0).lipschitzOnWith
        cont := fun _ _ => by simpa only [Pi.zero_apply] using continuousOn_const
        norm_le := fun _ _ _ _ => norm_zero.le
        C_mul_le_R := (zero_mul _).le }⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant22ff97e6c2ad8052308ad060d04589c78e3c28fb848ffa7e2e0f5d6b42bb9668.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0cf0a7edf3ee7e8e5b47c47f97b9c5b365532bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
