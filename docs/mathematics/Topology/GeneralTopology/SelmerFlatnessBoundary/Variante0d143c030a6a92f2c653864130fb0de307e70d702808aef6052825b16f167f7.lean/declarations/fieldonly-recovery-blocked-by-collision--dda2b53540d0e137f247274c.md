# fieldOnly_recovery_blocked_by_collision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "457890dbd6e6d9c34f36d77e91fb2a4286de837e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 419,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be06e72a-38ee-06cd-908d-496a825e8c0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a8c52d2-800b-17bb-5467-1f5773696b6a",
  "kind": "theorem",
  "lexical_name": "fieldOnly_recovery_blocked_by_collision",
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
  "slug": "fieldonly-recovery-blocked-by-collision--dda2b53540d0e137f247274c",
  "source": {
    "blob": "457890dbd6e6d9c34f36d77e91fb2a4286de837e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 419,
    "path": "GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dda2b53540d0e137f247274cf77489a3d9341b678ee7af9aa06f888b99302fa8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a8c52d2-800b-17bb-5467-1f5773696b6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fieldOnly_recovery_blocked_by_collision
    (C : ArithmeticCollision)
    (A : FieldOnlyArithmeticAlgorithm) :
    ¬ (TorsionBlindDataHomology.CorrectArithmeticRecovery A C.left ∧
        TorsionBlindDataHomology.CorrectArithmeticRecovery A C.right) :=
  TorsionBlindDataHomology.no_field_only_recovery_from_collision C A

/-! ## Small certificate-only example -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457890dbd6e6d9c34f36d77e91fb2a4286de837e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
