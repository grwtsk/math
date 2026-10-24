# exists_finite_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51acfb91548df64043598ed62eacdcd39af0c1f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e34cf37779e5be6d6bfeb9699c70667f2dc59639ed1937a6c78a3dac2f7b374c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f38e989-5d43-f817-08f6-870fd4dca218",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3923a009-1730-4b1d-7cbf-961c39049d5f",
  "kind": "lemma",
  "lexical_name": "exists_finite_of_compactSpace",
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
  "slug": "exists-finite-of-compactspace--061bfc780bdeab4dbdd6b889",
  "source": {
    "blob": "51acfb91548df64043598ed62eacdcd39af0c1f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/OpenCover/Variante34cf37779e5be6d6bfeb9699c70667f2dc59639ed1937a6c78a3dac2f7b374c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:061bfc780bdeab4dbdd6b889d733a5437f55e6b0928bebf2184e0a1bb90fbdce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenCover/Variante34cf37779e5be6d6bfeb9699c70667f2dc59639ed1937a6c78a3dac2f7b374c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3923a009-1730-4b1d-7cbf-961c39049d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finite_of_compactSpace (hu : IsOpenCover u) [CompactSpace X] :
    ∃ (s : Finset ι), IsOpenCover (fun i : s ↦ u i.1) := by
  rw [IsOpenCover, eq_top_iff, ← SetLike.coe_subset_coe] at hu
  obtain ⟨s, hs⟩ := IsCompact.elim_finite_subcover isCompact_univ _ (fun i ↦ (u i).2)
    (by simpa using hu)
  use s
  simpa [IsOpenCover, eq_top_iff, ← SetLike.coe_subset_coe, Set.iUnion_subtype] using hs

end IsOpenCover

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenCover/Variante34cf37779e5be6d6bfeb9699c70667f2dc59639ed1937a6c78a3dac2f7b374c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenCover/Variante34cf37779e5be6d6bfeb9699c70667f2dc59639ed1937a6c78a3dac2f7b374c.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51acfb91548df64043598ed62eacdcd39af0c1f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
