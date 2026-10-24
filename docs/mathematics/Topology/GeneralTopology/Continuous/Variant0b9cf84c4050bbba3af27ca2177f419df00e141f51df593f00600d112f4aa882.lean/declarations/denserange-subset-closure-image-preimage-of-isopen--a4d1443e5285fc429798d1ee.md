# DenseRange.subset_closure_image_preimage_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52192f29-09d8-65f9-0ebe-b6055a15c336",
  "kind": "theorem",
  "lexical_name": "DenseRange.subset_closure_image_preimage_of_isOpen",
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
  "slug": "denserange-subset-closure-image-preimage-of-isopen--a4d1443e5285fc429798d1ee",
  "source": {
    "blob": "9ea1f0d4315a9a20062bdcad7fa3c838fc9d99a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 304,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant0b9cf84c4050bbba3af27ca2177f419df00e141f51df593f00600d112f4aa882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d1443e5285fc429798d1eeb24405b275d930a402a2396392bff1db8cbc20b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant0b9cf84c4050bbba3af27ca2177f419df00e141f51df593f00600d112f4aa882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52192f29-09d8-65f9-0ebe-b6055a15c336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DenseRange.subset_closure_image_preimage_of_isOpen (hf : DenseRange f) (hs : IsOpen s) :
    s ⊆ closure (f '' f ⁻¹' s) := by
  rw [image_preimage_eq_inter_range]
  exact hf.open_subset_closure_inter hs

/-- If a continuous map with dense range maps a dense set to a subset of `t`, then `t` is a dense
set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant0b9cf84c4050bbba3af27ca2177f419df00e141f51df593f00600d112f4aa882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant0b9cf84c4050bbba3af27ca2177f419df00e141f51df593f00600d112f4aa882.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea1f0d4315a9a20062bdcad7fa3c838fc9d99a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
