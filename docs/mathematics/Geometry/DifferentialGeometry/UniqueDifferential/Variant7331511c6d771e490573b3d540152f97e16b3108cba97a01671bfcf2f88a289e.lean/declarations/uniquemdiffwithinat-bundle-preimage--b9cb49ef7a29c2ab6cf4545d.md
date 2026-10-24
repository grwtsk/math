# UniqueMDiffWithinAt.bundle_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e6ebc166ab9e01517cea934b36f13472e67e640",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea5dd608-2d23-f35a-2a49-1b5e4c43a76e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f374a05a-77a9-138e-0793-f748b2b00f4d",
  "kind": "theorem",
  "lexical_name": "UniqueMDiffWithinAt.bundle_preimage",
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
  "slug": "uniquemdiffwithinat-bundle-preimage--b9cb49ef7a29c2ab6cf4545d",
  "source": {
    "blob": "2e6ebc166ab9e01517cea934b36f13472e67e640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 170,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9cb49ef7a29c2ab6cf4545d799754e5bc9ef79f75cbee72c9761d1873c04d7f",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f374a05a-77a9-138e-0793-f748b2b00f4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniqueMDiffWithinAt.bundle_preimage {p : TotalSpace F Z} (hs : UniqueMDiffAt[s] p.proj) :
    UniqueMDiffAt[π F Z ⁻¹' s] p := by
  suffices UniqueMDiffAt[π F Z ⁻¹' (s ∩ (trivializationAt F Z p.proj).baseSet)] p from
    this.mono (by simp)
  apply UniqueMDiffWithinAt.bundle_preimage_aux (hs.inter _) inter_subset_right
  exact (trivializationAt F Z p.proj).open_baseSet.mem_nhds
    (FiberBundle.mem_baseSet_trivializationAt' p.proj)

variable (Z)

/-- In a fiber bundle, the preimage under the projection of a set with unique differentials
in the base has unique differentials in the bundle. Version with a point `⟨b, x⟩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e6ebc166ab9e01517cea934b36f13472e67e640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
