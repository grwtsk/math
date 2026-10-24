# residueFieldMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e0f2a8cf9f4d2cdb1e0ca271ee0dfe853716061",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1e286f6-0e0b-edac-a5ff-0c7fcf1874d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d44caff5-d463-f853-0eb5-182949530ac6",
  "kind": "lemma",
  "lexical_name": "residueFieldMap_comp",
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
  "slug": "residuefieldmap-comp--e3a59683726838ce4975a40d",
  "source": {
    "blob": "0e0f2a8cf9f4d2cdb1e0ca271ee0dfe853716061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3a59683726838ce4975a40d80221f71ea10b2f7c2fd4623d3f2cc697af0c9ce",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d44caff5-d463-f853-0eb5-182949530ac6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma residueFieldMap_comp {Z : LocallyRingedSpace.{u}} (g : Y ⟶ Z) (x : X) :
    residueFieldMap (f ≫ g) x = residueFieldMap g (f.base x) ≫ residueFieldMap f x := by
  ext : 1
  simp only [comp_toShHom, SheafedSpace.comp_base, Function.comp_apply, residueFieldMap,
    CommRingCat.hom_comp, TopCat.comp_app]
  simp_rw [stalkMap_comp]
  apply IsLocalRing.ResidueField.map_comp (Hom.stalkMap g (f.base x)).hom (Hom.stalkMap f x).hom

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant3bd36d42aa75290b6131ff94b845a86bfeebca14cf12a7159e4d30a800161b3a.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0f2a8cf9f4d2cdb1e0ca271ee0dfe853716061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
