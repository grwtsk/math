# xyzToRiemannSphere_is_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00e059276c68ef42b74f08996ee132ab545bbd77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:054156cf-df3b-815e-ee14-f8af795a35ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b61eed8-c2f7-a710-c628-e310e39f2fcb",
  "kind": "theorem",
  "lexical_name": "xyzToRiemannSphere_is_finite",
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
  "slug": "xyztoriemannsphere-is-finite--8f4bcbead1fe4080a1644c12",
  "source": {
    "blob": "00e059276c68ef42b74f08996ee132ab545bbd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f4bcbead1fe4080a1644c12e3338ca44306c2b88a065ad27a1773832b0fcafd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b61eed8-c2f7-a710-c628-e310e39f2fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xyzToRiemannSphere_is_finite (xyz : NormalizedXYZPoint) :
    xyzToRiemannSphere xyz ≠ infinity := by
  have hmem :
      riemannSphereHomeomorph (xyzToRiemannSphere xyz) ∈
        Set.range (fun z : ℂ ↦
          riemannSphereHomeomorph (z : RiemannSphere)) :=
    ⟨xyzChromaticityComplex xyz, rfl⟩
  rw [range_finite_stereographic] at hmem
  have hne :
      riemannSphereHomeomorph (xyzToRiemannSphere xyz) ≠
        riemannSphereHomeomorph infinity := by
    simpa only [Set.mem_compl_iff, Set.mem_singleton_iff] using hmem
  exact fun equality ↦ hne (congrArg riemannSphereHomeomorph equality)

/-- An explicit finite-chart witness complementary to
`xyzToRiemannSphere_is_finite`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantec706d9dcbed693af874bd8ed98a530e699529664d43746eb69d77aacc0934bb.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e059276c68ef42b74f08996ee132ab545bbd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
