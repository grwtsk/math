# equivalenceOfEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83cc569c855a13035ee31dead563b6d396fb47cd430425696d9a0861b30414eb",
  "kind": "def",
  "lexical_name": "equivalenceOfEquiv",
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
  "slug": "equivalenceofequiv--22103f3704eb6af7a3efd71f",
  "source": {
    "blob": "e09a5bc9377f3dce662e0c94da65e38e1541ec2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant171c999252c105fc54c46302072cf0505b8960e4447e92db853c41f12ed8f507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22103f3704eb6af7a3efd71f22a33e65be6ef1ac2cd5e3f3ee80744574272aeb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant171c999252c105fc54c46302072cf0505b8960e4447e92db853c41f12ed8f507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83cc569c855a13035ee31dead563b6d396fb47cd430425696d9a0861b30414eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceOfEquiv (J' : Type w') (h : J ≃ J') : WidePullbackShape J ≌ WidePullbackShape J'
    where
  functor := wideCospan none (fun j => some (h j)) fun j => Hom.term (h j)
  inverse := wideCospan none (fun j => some (h.invFun j)) fun j => Hom.term (h.invFun j)
  unitIso :=
    NatIso.ofComponents (fun j => by aesop_cat_nonterminal; repeat rfl) fun f => by
      simp only [eq_iff_true_of_subsingleton]
  counitIso :=
    NatIso.ofComponents (fun j => by aesop_cat_nonterminal; repeat rfl) fun f => by
      simp only [eq_iff_true_of_subsingleton]
#align category_theory.limits.wide_pullback_shape.equivalence_of_equiv CategoryTheory.Limits.WidePullbackShape.equivalenceOfEquiv

/-- Lifting universe and morphism levels preserves wide pullback diagrams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant171c999252c105fc54c46302072cf0505b8960e4447e92db853c41f12ed8f507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant171c999252c105fc54c46302072cf0505b8960e4447e92db853c41f12ed8f507.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09a5bc9377f3dce662e0c94da65e38e1541ec2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
