# continuousAt_of_monotoneOn_of_closure_image_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fe27c8180bd874d218e0becfd6308ac59d4662c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4aaf7e9-6453-7f6b-275b-50af6d7e4819",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3ad63d1-a4fc-22e6-d25b-dde0a4cd34be",
  "kind": "theorem",
  "lexical_name": "continuousAt_of_monotoneOn_of_closure_image_mem_nhds",
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
  "slug": "continuousat-of-monotoneon-of-closure-image-mem-nhds--305139bd0df13311f9364988",
  "source": {
    "blob": "4fe27c8180bd874d218e0becfd6308ac59d4662c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 236,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:305139bd0df13311f93649880b7315b2db8f5ffdff640e9a3768b61556172b2c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3ad63d1-a4fc-22e6-d25b-dde0a4cd34be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_of_monotoneOn_of_closure_image_mem_nhds [DenselyOrdered β] {f : α → β}
    {s : Set α} {a : α} (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝 a)
    (hfs : closure (f '' s) ∈ 𝓝 (f a)) : ContinuousAt f a :=
  continuousAt_iff_continuous_left_right.2
    ⟨continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin h_mono
        (mem_nhdsWithin_of_mem_nhds hs) (mem_nhdsWithin_of_mem_nhds hfs),
      continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin h_mono
        (mem_nhdsWithin_of_mem_nhds hs) (mem_nhdsWithin_of_mem_nhds hfs)⟩

/-- If a function `f` with a densely ordered codomain is monotone on a neighborhood of `a` and the
image of this neighborhood under `f` is a neighborhood of `f a`, then `f` is continuous at `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fe27c8180bd874d218e0becfd6308ac59d4662c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
