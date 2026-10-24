# Sigma.isPreconnected_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6350b9ac3f3b7507094908a2180ddb7bc386a1f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4e1e3bb-23ec-f01b-952b-7b36282c2f13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a7ea0ec-2aba-0d8b-b983-3920238373c1",
  "kind": "theorem",
  "lexical_name": "Sigma.isPreconnected_iff",
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
  "slug": "sigma-ispreconnected-iff--55e894908c44048654b63695",
  "source": {
    "blob": "6350b9ac3f3b7507094908a2180ddb7bc386a1f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55e894908c44048654b63695315da244202f43b75799daa64ee8bf55d7ba3659",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a7ea0ec-2aba-0d8b-b983-3920238373c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sigma.isPreconnected_iff [hι : Nonempty ι] [∀ i, TopologicalSpace (π i)]
    {s : Set (Σ i, π i)} : IsPreconnected s ↔ ∃ i t, IsPreconnected t ∧ s = Sigma.mk i '' t := by
  refine ⟨fun hs => ?_, ?_⟩
  · obtain rfl | h := s.eq_empty_or_nonempty
    · exact ⟨Classical.choice hι, ∅, isPreconnected_empty, (Set.image_empty _).symm⟩
    · obtain ⟨a, t, ht, rfl⟩ := Sigma.isConnected_iff.1 ⟨h, hs⟩
      exact ⟨a, t, ht.isPreconnected, rfl⟩
  · rintro ⟨a, t, ht, rfl⟩
    exact ht.image _ continuous_sigmaMk.continuousOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6350b9ac3f3b7507094908a2180ddb7bc386a1f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
