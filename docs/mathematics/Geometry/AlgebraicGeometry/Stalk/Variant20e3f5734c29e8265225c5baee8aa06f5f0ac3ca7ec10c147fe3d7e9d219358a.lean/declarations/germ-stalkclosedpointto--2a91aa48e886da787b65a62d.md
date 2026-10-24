# germ_stalkClosedPointTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01b2f1d7-d9c0-b93c-04fe-5174821e6f1b",
  "kind": "lemma",
  "lexical_name": "germ_stalkClosedPointTo",
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
  "slug": "germ-stalkclosedpointto--2a91aa48e886da787b65a62d",
  "source": {
    "blob": "35e8e98b1de8d9c695a7cc513e2d966b9ca200dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 323,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant20e3f5734c29e8265225c5baee8aa06f5f0ac3ca7ec10c147fe3d7e9d219358a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a91aa48e886da787b65a62dbe70da38730da53c3f31c230e09da8936f1a408e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Stalk/Variant20e3f5734c29e8265225c5baee8aa06f5f0ac3ca7ec10c147fe3d7e9d219358a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01b2f1d7-d9c0-b93c-04fe-5174821e6f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma germ_stalkClosedPointTo (U : Opens X) (hU : f (closedPoint R) ∈ U) :
    X.presheaf.germ U _ hU ≫ stalkClosedPointTo f = f.app U ≫
      ((Spec R).presheaf.mapIso (eqToIso (preimage_eq_top_of_closedPoint_mem f hU).symm).op ≪≫
        ΓSpecIso R).hom := by
  rw [stalkClosedPointTo, Scheme.Hom.germ_stalkMap_assoc, Iso.trans_hom]
  congr 1
  rw [← Iso.eq_comp_inv, Category.assoc, ΓSpecIso_hom_stalkClosedPointIso_inv]
  simp only [Functor.mapIso_hom, Iso.op_hom, eqToIso.hom,
    TopCat.Presheaf.germ_res]

set_option backward.isDefEq.respectTransparency false in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Stalk/Variant20e3f5734c29e8265225c5baee8aa06f5f0ac3ca7ec10c147fe3d7e9d219358a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant20e3f5734c29e8265225c5baee8aa06f5f0ac3ca7ec10c147fe3d7e9d219358a.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e8e98b1de8d9c695a7cc513e2d966b9ca200dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
