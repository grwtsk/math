# cofanMapObjComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12be5f54a7864efd71f5f9c25fc330ac49616d179f5a388d69f863f132de99af",
  "kind": "def",
  "lexical_name": "cofanMapObjComp",
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
  "slug": "cofanmapobjcomp--8df980437b5aa78d9c66e270",
  "source": {
    "blob": "9e683eed1e19d5c3e122c6befca999a4141f0051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 441,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8df980437b5aa78d9c66e270c732d67b1e311d78d95443ea77bfecb869ee6663",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12be5f54a7864efd71f5f9c25fc330ac49616d179f5a388d69f863f132de99af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cofanMapObjComp : X.CofanMapObjFun r k :=
  CofanMapObjFun.mk _ _ _ c'.pt (fun i hi =>
    (c (p i) (by rw [hpqr, hi])).inj ⟨i, rfl⟩ ≫ c'.inj (⟨p i, by
      rw [Set.mem_preimage, Set.mem_singleton_iff, hpqr, hi]⟩))

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- Given maps `p : I → J`, `q : J → K` and `r : I → K` such that `q.comp p = r`,
`X : GradedObject I C`, `k : K`, the cofan constructed by `cofanMapObjComp` is a colimit.
In other words, if we have, for all `j : J` such that `hj : q j = k`,
a colimit cofan `c j hj` which computes the coproduct of the `X i` such that `p i = j`,
and also a colimit cofan which computes the coproduct of the points of these `c j hj`, then
the point of this latter cofan computes the coproduct of the `X i` such that `r i = k`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6c2306dbc013a65c032fa18d9ad4194aaf56903faa3304bed7a8f35b919e6fb6.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e683eed1e19d5c3e122c6befca999a4141f0051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
