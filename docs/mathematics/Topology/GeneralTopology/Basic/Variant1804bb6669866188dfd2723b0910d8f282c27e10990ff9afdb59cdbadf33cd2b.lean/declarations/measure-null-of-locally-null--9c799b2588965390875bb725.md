# measure_null_of_locally_null

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "052e7886a36bab9f475112a40ae42a6d1e0a8374",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dd41143-0e28-faa5-9f1c-5c7ec8e540b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cf4cba8-54fb-020f-6151-45f434e377de",
  "kind": "theorem",
  "lexical_name": "measure_null_of_locally_null",
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
  "slug": "measure-null-of-locally-null--9c799b2588965390875bb725",
  "source": {
    "blob": "052e7886a36bab9f475112a40ae42a6d1e0a8374",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c799b2588965390875bb725fd45b62ba6f66600afeb56007b72654cfcc51a57",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cf4cba8-54fb-020f-6151-45f434e377de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_null_of_locally_null [TopologicalSpace α] [SecondCountableTopology α]
    (s : Set α) (hs : ∀ x ∈ s, ∃ u ∈ 𝓝[s] x, μ u = 0) : μ s = 0 := by
  choose! u hxu hu₀ using hs
  choose t ht using TopologicalSpace.countable_cover_nhdsWithin hxu
  rcases ht with ⟨ts, t_count, ht⟩
  apply measure_mono_null ht
  exact (measure_biUnion_null_iff t_count).2 fun x hx => hu₀ x (ts hx)

/-- If `m s ≠ 0`, then for some point `x ∈ s` and any `t ∈ 𝓝[s] x` we have `0 < m t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `052e7886a36bab9f475112a40ae42a6d1e0a8374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
