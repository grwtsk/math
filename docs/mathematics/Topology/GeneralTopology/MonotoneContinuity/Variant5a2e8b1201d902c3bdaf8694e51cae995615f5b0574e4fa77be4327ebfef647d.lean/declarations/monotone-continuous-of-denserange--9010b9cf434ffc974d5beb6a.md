# Monotone.continuous_of_denseRange

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
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7cd498c-6a7b-fd61-7a13-422b4d55ec2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c59e4964-4398-5632-3772-e3a2e53eb811",
  "kind": "theorem",
  "lexical_name": "Monotone.continuous_of_denseRange",
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
  "slug": "monotone-continuous-of-denserange--9010b9cf434ffc974d5beb6a",
  "source": {
    "blob": "4fe27c8180bd874d218e0becfd6308ac59d4662c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9010b9cf434ffc974d5beb6a59b8e5d830aa1090718bfa444b9b43916338a940",
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

Occurrence: `result:c59e4964-4398-5632-3772-e3a2e53eb811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.continuous_of_denseRange [DenselyOrdered β] {f : α → β} (h_mono : Monotone f)
    (h_dense : DenseRange f) : Continuous f :=
  continuous_iff_continuousAt.mpr fun a =>
    continuousAt_of_monotoneOn_of_closure_image_mem_nhds (fun _ _ _ _ hxy => h_mono hxy)
        univ_mem <|
      by simp only [image_univ, h_dense.closure_eq, univ_mem]

/-- A monotone surjective function with a densely ordered codomain is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5a2e8b1201d902c3bdaf8694e51cae995615f5b0574e4fa77be4327ebfef647d.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fe27c8180bd874d218e0becfd6308ac59d4662c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
