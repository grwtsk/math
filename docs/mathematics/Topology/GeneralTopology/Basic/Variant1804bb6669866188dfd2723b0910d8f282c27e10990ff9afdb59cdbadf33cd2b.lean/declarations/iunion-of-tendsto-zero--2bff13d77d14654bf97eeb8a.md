# iUnion_of_tendsto_zero

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
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c57c7a2f-80d1-2a0d-1538-b107d131bc58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c83af21-2fe9-df74-a6a9-98ad50246da7",
  "kind": "theorem",
  "lexical_name": "iUnion_of_tendsto_zero",
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
  "slug": "iunion-of-tendsto-zero--2bff13d77d14654bf97eeb8a",
  "source": {
    "blob": "052e7886a36bab9f475112a40ae42a6d1e0a8374",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bff13d77d14654bf97eeb8aa7a9d32bab299d0ef3250eb199d263a4c8a9cac6",
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

Occurrence: `result:2c83af21-2fe9-df74-a6a9-98ad50246da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_of_tendsto_zero {ι} (m : OuterMeasure α) {s : ι → Set α} (l : Filter ι) [NeBot l]
    (h0 : Tendsto (fun k => m ((⋃ n, s n) \ s k)) l (𝓝 0)) : m (⋃ n, s n) = ⨆ n, m (s n) :=
  measure_iUnion_of_tendsto_zero m l h0

/-- If `s : ℕ → Set α` is a monotone sequence of sets such that `∑' k, m (s (k + 1) \ s k) ≠ ∞`,
then `m (⋃ n, s n) = ⨆ n, m (s n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `052e7886a36bab9f475112a40ae42a6d1e0a8374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
