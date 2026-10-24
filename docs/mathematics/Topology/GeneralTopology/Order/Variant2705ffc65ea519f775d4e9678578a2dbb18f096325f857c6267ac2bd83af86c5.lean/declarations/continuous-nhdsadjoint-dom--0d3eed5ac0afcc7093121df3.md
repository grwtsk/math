# continuous_nhdsAdjoint_dom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8acdd3aee23b43330bc36aa8f7f1819a16a2a55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 899,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/2705ffc65ea519f775d4e9678578a2dbb18f096325f857c6267ac2bd83af86c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cccf607-d95c-dc9d-fce6-c30aeddd0b18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:294c0a34-b370-ab3b-e015-8dc39932f8b1",
  "kind": "theorem",
  "lexical_name": "continuous_nhdsAdjoint_dom",
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
  "slug": "continuous-nhdsadjoint-dom--0d3eed5ac0afcc7093121df3",
  "source": {
    "blob": "b8acdd3aee23b43330bc36aa8f7f1819a16a2a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 902,
    "line": 899,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant2705ffc65ea519f775d4e9678578a2dbb18f096325f857c6267ac2bd83af86c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d3eed5ac0afcc7093121df34b3bd247c9e7bc2dc144eb12c78c424ef08e47aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant2705ffc65ea519f775d4e9678578a2dbb18f096325f857c6267ac2bd83af86c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:294c0a34-b370-ab3b-e015-8dc39932f8b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_nhdsAdjoint_dom [TopologicalSpace β] {f : α → β} {a : α} {l : Filter α} :
    Continuous[nhdsAdjoint a l, _] f ↔ Tendsto f l (𝓝 (f a)) := by
  simp_rw [continuous_iff_le_induced, gc_nhds _ _, nhds_induced, tendsto_iff_comap]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant2705ffc65ea519f775d4e9678578a2dbb18f096325f857c6267ac2bd83af86c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant2705ffc65ea519f775d4e9678578a2dbb18f096325f857c6267ac2bd83af86c5.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8acdd3aee23b43330bc36aa8f7f1819a16a2a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
