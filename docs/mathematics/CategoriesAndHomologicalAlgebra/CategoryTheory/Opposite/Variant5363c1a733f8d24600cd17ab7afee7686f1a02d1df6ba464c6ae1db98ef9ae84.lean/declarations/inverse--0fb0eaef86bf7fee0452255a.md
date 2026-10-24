# inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0beb96d19a1151b10152db71d1ebb987a852580ee614c7fcf201e2da6ec1318e",
  "kind": "def",
  "lexical_name": "inverse",
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
  "slug": "inverse--0fb0eaef86bf7fee0452255a",
  "source": {
    "blob": "89d431b3cd4625b1be91ee797c9cd29c0326409f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fb0eaef86bf7fee0452255a737f9e0fde19a8af232568d6999617fe79eb9d77",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0beb96d19a1151b10152db71d1ebb987a852580ee614c7fcf201e2da6ec1318e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inverse :
    w.CostructuredArrowDownwards g.unop ⥤
      (w.op.StructuredArrowRightwards g)ᵒᵖ where
  obj f := Opposite.op
    (StructuredArrowRightwards.mk _ _ (Opposite.op f.left.right)
      f.hom.right.op f.left.hom.op (Quiver.Hom.unop_inj (StructuredArrow.w f.hom)))
  map {f f'} φ :=
    (StructuredArrow.homMk
      (CostructuredArrow.homMk (φ.left.right.op)
        (Quiver.Hom.unop_inj (by exact StructuredArrow.w φ.left)))
          (by
            ext
            exact Quiver.Hom.unop_inj
              ((StructuredArrow.proj _ _).congr_map (CostructuredArrow.w φ)))).op

end structuredArrowRightwardsOpEquivalence

/-- If `w : TwoSquare T L R B`, and `g : B.op.obj X₃ ⟶ R.op.obj X₂`, this is
the obvious equivalence of categories between
`(w.op.StructuredArrowRightwards g)ᵒᵖ` and `w.CostructuredArrowDownwards g.unop`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89d431b3cd4625b1be91ee797c9cd29c0326409f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
