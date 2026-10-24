# obstructionMap_zeroSphere_abelian_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e323b29365c6df43ff51bb35ef66ec5474f98e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f0633b8-b6d5-b17d-a24e-e06ea66b4012",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:171708cf-6ea6-caf5-87a8-b636f995b65f",
  "kind": "theorem",
  "lexical_name": "obstructionMap_zeroSphere_abelian_difference",
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
  "slug": "obstructionmap-zerosphere-abelian-difference--ae835f06f8cec954716e9943",
  "source": {
    "blob": "d4e323b29365c6df43ff51bb35ef66ec5474f98e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 283,
    "path": "GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae835f06f8cec954716e99438d56a27465fe556a60fdf41a6529e3c814773d24",
  "verification": {
    "reference": "docs/verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:171708cf-6ea6-caf5-87a8-b636f995b65f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem obstructionMap_zeroSphere_abelian_difference
    (Θ : TangentialObstructionTheory certificate)
    (A : ZeroSphereAbelianDifferenceModel Θ)
    (hp : p = 0)
    (θ : Θ.Structure) :
    letI := A.abelianComponentAddGroup
    letI := Θ.obstructionAddCommGroup
    Θ.obstructionMap θ =
      A.differenceToObstruction
        (A.endpointClass (Θ.zeroSphereEndpoints hp θ).positive -
          A.endpointClass (Θ.zeroSphereEndpoints hp θ).negative) :=
  A.boundaryClass_eq_ordered_difference hp θ

end TangentialObstructionTheory

end Surface.SmoothFramedSurgery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TangentialExtension/Variant9a8d5e3df3d8ccb389c43c516ebe100f807773789df6f8f06201669efd0e4bf3.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e323b29365c6df43ff51bb35ef66ec5474f98e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
