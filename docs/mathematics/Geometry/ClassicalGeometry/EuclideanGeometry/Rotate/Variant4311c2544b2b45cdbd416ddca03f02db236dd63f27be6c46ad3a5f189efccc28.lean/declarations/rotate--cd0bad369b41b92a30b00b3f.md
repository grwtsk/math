# rotate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc71515c403bf56ed35924c9ba2c1f2ef0fa7cf9c909b5e9cc7963c67dbd2b53",
  "kind": "def",
  "lexical_name": "rotate",
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
  "slug": "rotate--cd0bad369b41b92a30b00b3f",
  "source": {
    "blob": "ea3b014b906efb27d15c0f6563eaf4da09685106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variant4311c2544b2b45cdbd416ddca03f02db236dd63f27be6c46ad3a5f189efccc28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd0bad369b41b92a30b00b3fa33639a0968cc59bccbd65906aa6af0bca94dbe0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variant4311c2544b2b45cdbd416ddca03f02db236dd63f27be6c46ad3a5f189efccc28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc71515c403bf56ed35924c9ba2c1f2ef0fa7cf9c909b5e9cc7963c67dbd2b53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rotate : Triangle C ⥤ Triangle C where
  obj := Triangle.rotate
  map f :=
  { hom₁ := f.hom₂
    hom₂ := f.hom₃
    hom₃ := f.hom₁⟦1⟧'
    comm₃ := by
      dsimp
      simp only [comp_neg, neg_comp, ← Functor.map_comp, f.comm₁] }

/-- The inverse rotation of triangles gives an endofunctor on the category of triangles in `C`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variant4311c2544b2b45cdbd416ddca03f02db236dd63f27be6c46ad3a5f189efccc28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotate/Variant4311c2544b2b45cdbd416ddca03f02db236dd63f27be6c46ad3a5f189efccc28.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea3b014b906efb27d15c0f6563eaf4da09685106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
