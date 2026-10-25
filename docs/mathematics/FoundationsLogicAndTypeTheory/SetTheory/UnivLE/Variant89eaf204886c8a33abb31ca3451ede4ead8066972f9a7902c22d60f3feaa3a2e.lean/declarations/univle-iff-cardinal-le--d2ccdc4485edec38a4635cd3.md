# univLE_iff_cardinal_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0e60a4631c09cfed663595c6a3266ff8f93230d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b49cbb76-8a77-2e36-a0fe-461968c271a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab7c660c-e79b-5aaf-c2e5-596ec40db801",
  "kind": "theorem",
  "lexical_name": "univLE_iff_cardinal_le",
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
  "slug": "univle-iff-cardinal-le--d2ccdc4485edec38a4635cd3",
  "source": {
    "blob": "f0e60a4631c09cfed663595c6a3266ff8f93230d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2ccdc4485edec38a4635cd322f5a873255b32eb0c91a9fbbb6a127cd4a551b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab7c660c-e79b-5aaf-c2e5-596ec40db801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem univLE_iff_cardinal_le : UnivLE.{u, v} ↔ univ.{u, v + 1} ≤ univ.{v, u + 1} := by
  simp_rw [univLE_iff, small_iff_lift_mk_lt_univ]
  contrapose!
  -- strange: simp_rw [univ_umax.{v,u}] doesn't work
  refine ⟨fun ⟨α, le⟩ ↦ ?_, fun h ↦ ?_⟩
  · rw [univ_umax.{v, u}, ← lift_le.{u + 1}, lift_univ, lift_lift] at le
    exact le.trans_lt (lift_lt_univ'.{u, v + 1} #α)
  · obtain ⟨⟨α⟩, h⟩ := lt_univ'.mp h; use α
    rw [univ_umax.{v, u}, ← lift_le.{u + 1}, lift_univ, lift_lift]
    exact h.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e60a4631c09cfed663595c6a3266ff8f93230d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
