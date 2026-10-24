# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5930ee76339cc789046aaf09f17593981f6ff60dd76a22a72d3a92282f70b65d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9260b246b78a8d782ec2fe6c",
  "source": {
    "blob": "b00d9658188e750cb7f5b68b1136a7f257815b5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9260b246b78a8d782ec2fe6ca9733b004d77dc2a1cf1755258c7642eded496cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5930ee76339cc789046aaf09f17593981f6ff60dd76a22a72d3a92282f70b65d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : DirectedSystem (M ⊗[R] G ·) (M ◁ f) where
  map_self i x := by
    convert LinearMap.lTensor_id_apply M _ x; ext; apply DirectedSystem.map_self'
  map_map _ _ _ h₁ h₂ x := by
    convert ← (LinearMap.lTensor_comp_apply M _ _ x).symm; ext; apply DirectedSystem.map_map' f

end TensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00d9658188e750cb7f5b68b1136a7f257815b5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
