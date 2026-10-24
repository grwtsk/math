# altitudeFoot_mem_affineSpan_faceOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db4483900b05cc74ab4ca26fa2ec9d0285ccdd36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c9cb8fa-f8e4-c709-213e-f08fb3c2d61c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18e2debb-12a4-ee7f-9b86-4166bd4e4557",
  "kind": "lemma",
  "lexical_name": "altitudeFoot_mem_affineSpan_faceOpposite",
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
  "slug": "altitudefoot-mem-affinespan-faceopposite--866796db8466178bfddd776b",
  "source": {
    "blob": "db4483900b05cc74ab4ca26fa2ec9d0285ccdd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 143,
    "path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:866796db8466178bfddd776b9d6cc645702560d672854b1a491a3de65f135c2e",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18e2debb-12a4-ee7f-9b86-4166bd4e4557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma altitudeFoot_mem_affineSpan_faceOpposite {n : ℕ} [NeZero n] (s : Simplex ℝ P n)
    (i : Fin (n + 1)) : s.altitudeFoot i ∈ affineSpan ℝ (Set.range (s.faceOpposite i).points) :=
  orthogonalProjection_mem _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4483900b05cc74ab4ca26fa2ec9d0285ccdd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
