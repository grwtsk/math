# isSheaf_fpqcTopology_continuousMapPresheafAb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ae04f43-d39d-d4ad-414d-b171affcccf1",
  "kind": "lemma",
  "lexical_name": "isSheaf_fpqcTopology_continuousMapPresheafAb",
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
  "slug": "issheaf-fpqctopology-continuousmappresheafab--e7d2800dcd48851830dc52d8",
  "source": {
    "blob": "319723015f35c44c7298df760bbfda9098f05162",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 123,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ConstantSheaf/Variant4f48437b1eb4a937797d79b6aa937481add6021ddbe8805c3b079fce196f9233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7d2800dcd48851830dc52d8f49921fa33422abeec2618e0704618a95ee1edfa",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ConstantSheaf/Variant4f48437b1eb4a937797d79b6aa937481add6021ddbe8805c3b079fce196f9233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ae04f43-d39d-d4ad-414d-b171affcccf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheaf_fpqcTopology_continuousMapPresheafAb :
    Presheaf.IsSheaf Scheme.fpqcTopology (continuousMapPresheafAb A) := by
  apply Presheaf.isSheaf_of_isSheaf_comp _ _ (forget Ab)
  exact isSheaf_fpqcTopology_continuousMapPresheaf _

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ConstantSheaf/Variant4f48437b1eb4a937797d79b6aa937481add6021ddbe8805c3b079fce196f9233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ConstantSheaf/Variant4f48437b1eb4a937797d79b6aa937481add6021ddbe8805c3b079fce196f9233.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319723015f35c44c7298df760bbfda9098f05162` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
