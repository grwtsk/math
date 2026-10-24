# inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b28b7e3d00e459299acb62bbfe1a84c1d888f470a9134eb0589af36df408e01",
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
  "slug": "inverse--78eb61bebba7fdc09e5df0cc",
  "source": {
    "blob": "68c1f8628e3ef8f948599c90281f6da511bb3d4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantb5c069c05f586f44a405be67b8d925a1082942ff2bf96aa5c631e532e336332c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78eb61bebba7fdc09e5df0cc32411053a9bc7970c7af1f6b55168c54df36242e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantb5c069c05f586f44a405be67b8d925a1082942ff2bf96aa5c631e532e336332c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b28b7e3d00e459299acb62bbfe1a84c1d888f470a9134eb0589af36df408e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–83.

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
            exact ((StructuredArrow.proj _ _).congr_map (CostructuredArrow.w φ)))).op

end structuredArrowRightwardsOpEquivalence

set_option backward.isDefEq.respectTransparency false in
/-- If `w : TwoSquare T L R B`, and `g : B.op.obj X₃ ⟶ R.op.obj X₂`, this is
the obvious equivalence of categories between
`(w.op.StructuredArrowRightwards g)ᵒᵖ` and `w.CostructuredArrowDownwards g.unop`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantb5c069c05f586f44a405be67b8d925a1082942ff2bf96aa5c631e532e336332c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantb5c069c05f586f44a405be67b8d925a1082942ff2bf96aa5c631e532e336332c.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68c1f8628e3ef8f948599c90281f6da511bb3d4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
