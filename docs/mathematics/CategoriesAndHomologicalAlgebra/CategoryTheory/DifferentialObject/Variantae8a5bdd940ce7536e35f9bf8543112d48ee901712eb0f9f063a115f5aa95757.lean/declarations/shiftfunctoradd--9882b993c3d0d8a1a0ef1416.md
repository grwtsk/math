# shiftFunctorAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4caf34d2d29804dd85c3fbd9eabf7197899f3c4951e33328a2e3dc9a66ee72a",
  "kind": "def",
  "lexical_name": "shiftFunctorAdd",
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
  "slug": "shiftfunctoradd--9882b993c3d0d8a1a0ef1416",
  "source": {
    "blob": "440bd01778d6efb4593367cbff8b44e7ad4dec5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9882b993c3d0d8a1a0ef1416cff25bcb6871d2df09e89f5471f612dd7ef36d56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4caf34d2d29804dd85c3fbd9eabf7197899f3c4951e33328a2e3dc9a66ee72a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def shiftFunctorAdd (m n : S) :
    shiftFunctor C (m + n) ≅ shiftFunctor C m ⋙ shiftFunctor C n := by
  refine' NatIso.ofComponents (fun X => mkIso (shiftAdd X.obj _ _) _) (fun f => _)
  · dsimp
    rw [← cancel_epi ((shiftFunctorAdd C m n).inv.app X.obj)]
    simp only [Category.assoc, Iso.inv_hom_id_app_assoc]
    erw [← NatTrans.naturality_assoc]
    dsimp
    simp only [Functor.map_comp, Category.assoc,
      shiftFunctorComm_hom_app_comp_shift_shiftFunctorAdd_hom_app 1 m n X.obj,
      Iso.inv_hom_id_app_assoc]
  · ext; dsimp; exact NatTrans.naturality _ _
#align category_theory.differential_object.shift_functor_add CategoryTheory.DifferentialObject.shiftFunctorAdd

section

/-- The shift by zero is naturally isomorphic to the identity. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440bd01778d6efb4593367cbff8b44e7ad4dec5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
