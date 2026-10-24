# hoFunctor₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:909819dddfe04d24740a0877b27e19f6597baa04bb856fea7fb9e221af72349b",
  "kind": "def",
  "lexical_name": "hoFunctor₂",
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
  "slug": "hofunctor--fc1a8a1d46d36a31c36ae5c4",
  "source": {
    "blob": "69b86d6bb6331f2184e7ee447ebe2688df28aaac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 329,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc1a8a1d46d36a31c36ae5c493ec830277603141d019a7ab8d44cbfd0195bf03",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:909819dddfe04d24740a0877b27e19f6597baa04bb856fea7fb9e221af72349b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hoFunctor₂ : SSet.Truncated.{u} 2 ⥤ Cat.{u,u} where
  obj V := Cat.of (V.HomotopyCategory)
  map {S T} F := mapHomotopyCategory F
  map_id S := by
    apply Quotient.lift_unique'
    simp [mapHomotopyCategory, Quotient.lift_spec]
    exact Eq.trans (Functor.id_comp ..) (Functor.comp_id _).symm
  map_comp {S T U} F G := by
    apply Quotient.lift_unique'
    simp [mapHomotopyCategory, SSet.Truncated.HomotopyCategory.quotientFunctor]
    rw [Quotient.lift_spec, Cat.comp_eq_comp, Cat.comp_eq_comp, ← Functor.assoc, Functor.assoc,
      Quotient.lift_spec, Functor.assoc, Quotient.lift_spec]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69b86d6bb6331f2184e7ee447ebe2688df28aaac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
