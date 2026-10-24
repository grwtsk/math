# coprodComparison_inv_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ab39283-69ec-9140-9b16-70396df71b23",
  "kind": "theorem",
  "lexical_name": "coprodComparison_inv_natural",
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
  "slug": "coprodcomparison-inv-natural--1efc938148e9a60d2df733be",
  "source": {
    "blob": "de6f6000aba29f04a0d325b7a24e0ff44a2eddb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ProdComparison/Variante62defcc7da2908ef7a9abfe0295f2ceaa2e66e75e48aefcb211e809ea637a83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1efc938148e9a60d2df733bee7db5c24b2ed05e3884906cfff1dc71bcc73fa32",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ProdComparison/Variante62defcc7da2908ef7a9abfe0295f2ceaa2e66e75e48aefcb211e809ea637a83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ab39283-69ec-9140-9b16-70396df71b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprodComparison_inv_natural (f : A ⟶ A') (g : B ⟶ B') [IsIso (coprodComparison F A B)]
    [IsIso (coprodComparison F A' B')] :
    inv (coprodComparison F A B) ≫ coprod.map (F.map f) (F.map g) =
      F.map (coprod.map f g) ≫ inv (coprodComparison F A' B') := by
  rw [IsIso.eq_comp_inv, Category.assoc, IsIso.inv_comp_eq, coprodComparison_natural]

set_option backward.isDefEq.respectTransparency false in
/-- The natural isomorphism `FA ⨿ F- ≅ F(A ⨿ -)`, provided each `coprodComparison F A B` is an
isomorphism (as `B` changes).
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ProdComparison/Variante62defcc7da2908ef7a9abfe0295f2ceaa2e66e75e48aefcb211e809ea637a83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ProdComparison/Variante62defcc7da2908ef7a9abfe0295f2ceaa2e66e75e48aefcb211e809ea637a83.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6f6000aba29f04a0d325b7a24e0ff44a2eddb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
