# coneOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9970d823253ec9055e00e6f3a78c763f69a25a396145be538ed1cd31fad92e7c",
  "kind": "def",
  "lexical_name": "coneOp",
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
  "slug": "coneop--2183b49ad0d4fbabfc7fcc39",
  "source": {
    "blob": "d73cd510cd19019d64bbf91886dc385f98ebdb70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 453,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantf0dcb29e89c6acb3bb2f8895a87f827549617862b2553ca8c89ccc62948a49b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2183b49ad0d4fbabfc7fcc39f3c11b08acfebe1a6c3dd24ee1e5a35c8786ba38",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantf0dcb29e89c6acb3bb2f8895a87f827549617862b2553ca8c89ccc62948a49b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9970d823253ec9055e00e6f3a78c763f69a25a396145be538ed1cd31fad92e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneOp (p : CommSq f g h i) : p.cone.op ≅ p.flip.op.cocone :=
  PushoutCocone.ext (Iso.refl _) (by simp) (by simp)

set_option backward.isDefEq.respectTransparency false in
/-- The pullback cone in the opposite category associated to the cocone of
a commutative square identifies to the cone of the flipped commutative square in
the opposite category -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantf0dcb29e89c6acb3bb2f8895a87f827549617862b2553ca8c89ccc62948a49b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantf0dcb29e89c6acb3bb2f8895a87f827549617862b2553ca8c89ccc62948a49b1.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d73cd510cd19019d64bbf91886dc385f98ebdb70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
