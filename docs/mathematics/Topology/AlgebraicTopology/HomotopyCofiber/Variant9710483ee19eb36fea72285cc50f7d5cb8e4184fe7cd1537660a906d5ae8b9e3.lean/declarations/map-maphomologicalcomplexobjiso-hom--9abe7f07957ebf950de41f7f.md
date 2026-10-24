# map_ι₁_mapHomologicalComplexObjIso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14c963e746778d71f0c87be08db807068f06e09a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 753,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6aa71ff2-4385-3fed-8879-40e8eaa85078",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c0070da-4cd2-21ec-b8c6-6f0658f4fa09",
  "kind": "lemma",
  "lexical_name": "map_ι₁_mapHomologicalComplexObjIso_hom",
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
  "slug": "map-maphomologicalcomplexobjiso-hom--9abe7f07957ebf950de41f7f",
  "source": {
    "blob": "14c963e746778d71f0c87be08db807068f06e09a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 753,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9abe7f07957ebf950de41f7fbe9d08b598caf38c7d93e02798421e41cd9eedec",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c0070da-4cd2-21ec-b8c6-6f0658f4fa09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_ι₁_mapHomologicalComplexObjIso_hom :
    (H.mapHomologicalComplex c).map (cylinder.ι₁ F) ≫ (mapHomologicalComplexObjIso F H hc).hom =
      cylinder.ι₁ _ := by
  dsimp [mapHomologicalComplexObjIso, ι₁, homotopyCofiber.mapArrowHom]
  rw [Functor.map_comp, assoc, homotopyCofiber.inr_mapHomologicalComplexObjIso_hom_assoc,
    homotopyCofiber.inr_desc, ← Category.assoc]
  congr 1
  apply biprod.hom_ext <;> simp [← Functor.map_comp]

end

end cylinder

omit [DecidableRel c.Rel] in
/-- If a functor inverts homotopy equivalences, it sends homotopic maps to the same map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c963e746778d71f0c87be08db807068f06e09a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
