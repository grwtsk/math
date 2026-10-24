# loopOfHom_eq_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38fa8d9f-48ad-35f6-b1a4-501f04c687fe",
  "kind": "theorem",
  "lexical_name": "loopOfHom_eq_id",
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
  "slug": "loopofhom-eq-id--55d1ae37189b47e1870257d0",
  "source": {
    "blob": "71621bf15a90d24e7c6700738b893c4b2bc473b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55d1ae37189b47e1870257d0085ff27964e7fefa923e4a67d10fc7a5b11d64b2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38fa8d9f-48ad-35f6-b1a4-501f04c687fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem loopOfHom_eq_id {a b : Generators G} (e) (H : e ∈ wideSubquiverSymmetrify T a b) :
    loopOfHom T (of e) = 𝟙 (root' T) := by
  rw [loopOfHom, ← Category.assoc, IsIso.comp_inv_eq, Category.id_comp]
  rcases H with H | H
  · rw [treeHom_eq T (Path.cons default ⟨Sum.inl e, H⟩), homOfPath]
    rfl
  · rw [treeHom_eq T (Path.cons default ⟨Sum.inr e, H⟩), homOfPath]
    simp only [IsIso.inv_hom_id, Category.comp_id, Category.assoc, treeHom]

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- Since a hom gives a loop, any homomorphism from the vertex group at the root
extends to a functor on the whole groupoid. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante0c482e791014ae24b66767cb2c4706abf45f8f66e8d9508c2085ca975e06b64.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71621bf15a90d24e7c6700738b893c4b2bc473b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
