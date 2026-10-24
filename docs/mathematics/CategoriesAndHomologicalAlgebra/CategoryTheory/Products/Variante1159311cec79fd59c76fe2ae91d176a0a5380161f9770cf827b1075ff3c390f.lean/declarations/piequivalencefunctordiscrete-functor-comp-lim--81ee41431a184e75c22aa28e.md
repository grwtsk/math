# piEquivalenceFunctorDiscrete_functor_comp_lim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fd69d5c-f43f-cf65-ccb4-6b93d20193e5",
  "kind": "lemma",
  "lexical_name": "piEquivalenceFunctorDiscrete_functor_comp_lim",
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
  "slug": "piequivalencefunctordiscrete-functor-comp-lim--81ee41431a184e75c22aa28e",
  "source": {
    "blob": "473a8aaf5f691f920e6a9c829217e83749c62899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 703,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante1159311cec79fd59c76fe2ae91d176a0a5380161f9770cf827b1075ff3c390f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81ee41431a184e75c22aa28eb985b32c85fa6efca15d0767e6fa4aaa8354025d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante1159311cec79fd59c76fe2ae91d176a0a5380161f9770cf827b1075ff3c390f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fd69d5c-f43f-cf65-ccb4-6b93d20193e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 703–712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma piEquivalenceFunctorDiscrete_functor_comp_lim [HasProductsOfShape α C] :
    (piEquivalenceFunctorDiscrete α C).functor ⋙ lim = Pi.functor _ :=
  rfl

attribute [local simp] Functor.pi in
/-- The `∏ᶜ` functor composed with the pointwise constant functor `Π i, I i ⥤ (α → C)` is isomorphic
to the constant functor with value `∏ᶜ X`. -/
@[to_dual (attr := simps!) constCompSigmaIsoConst
/-- The `∐` functor composed with the pointwise constant functor `Π i, I i ⥤ (α → C)` is isomorphic
to the constant functor with value `∐ X`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante1159311cec79fd59c76fe2ae91d176a0a5380161f9770cf827b1075ff3c390f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante1159311cec79fd59c76fe2ae91d176a0a5380161f9770cf827b1075ff3c390f.lean#L703).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `473a8aaf5f691f920e6a9c829217e83749c62899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
