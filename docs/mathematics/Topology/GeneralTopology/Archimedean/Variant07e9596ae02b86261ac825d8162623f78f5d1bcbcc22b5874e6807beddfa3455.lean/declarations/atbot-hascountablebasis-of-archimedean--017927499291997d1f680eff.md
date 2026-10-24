# atBot_hasCountableBasis_of_archimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d1f6ffed91ae0a51f0d70fde5c791349f1e507c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a37f62b5-11e7-1875-33ed-648be3d29118",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47fe28d4-7efa-345f-340e-aae748c87e0e",
  "kind": "theorem",
  "lexical_name": "atBot_hasCountableBasis_of_archimedean",
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
  "slug": "atbot-hascountablebasis-of-archimedean--017927499291997d1f680eff",
  "source": {
    "blob": "1d1f6ffed91ae0a51f0d70fde5c791349f1e507c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:017927499291997d1f680eff3aafc3a4af68a3a9dfd59469f18c88ac8bf0a5c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47fe28d4-7efa-345f-340e-aae748c87e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atBot_hasCountableBasis_of_archimedean [Ring R] [PartialOrder R] [IsOrderedRing R]
    [Archimedean R] :
    (atBot : Filter R).HasCountableBasis (fun _ : ℤ => True) fun m => Iic m where
  countable := to_countable _
  toHasBasis :=
    atBot_basis.to_hasBasis
      (fun x _ => let ⟨m, hm⟩ := exists_int_le x; ⟨m, trivial, Iic_subset_Iic.2 hm⟩)
      fun m _ => ⟨m, trivial, Subset.rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1f6ffed91ae0a51f0d70fde5c791349f1e507c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
