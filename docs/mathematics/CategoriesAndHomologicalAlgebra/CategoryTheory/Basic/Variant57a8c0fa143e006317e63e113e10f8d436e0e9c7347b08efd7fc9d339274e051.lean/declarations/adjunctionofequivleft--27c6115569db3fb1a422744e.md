# adjunctionOfEquivLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a50ab17ae9463bbbf15b041046ec69382457e3ae12c6fe539b62a95d1525f2c",
  "kind": "def",
  "lexical_name": "adjunctionOfEquivLeft",
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
  "slug": "adjunctionofequivleft--27c6115569db3fb1a422744e",
  "source": {
    "blob": "5b3f3722f61de6ccdddab966badc9b281b61639d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 562,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27c6115569db3fb1a422744e117537e76ab5476ec13abd7540fbe3eca9f21961",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a50ab17ae9463bbbf15b041046ec69382457e3ae12c6fe539b62a95d1525f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adjunctionOfEquivLeft : leftAdjointOfEquiv e he ⊣ G :=
  mkOfHomEquiv
    { homEquiv := e
      homEquiv_naturality_left_symm := fun {X'} {X} {Y} f g => by
        have {X : C} {Y Y' : D} (f : X ⟶ G.obj Y) (g : Y ⟶ Y') :
            (e X Y').symm (f ≫ G.map g) = (e X Y).symm f ≫ g := by
          rw [Equiv.symm_apply_eq, he]; simp
        simp [← this, ← Equiv.apply_eq_iff_eq (e X' Y), ← he] }

end ConstructLeft

section ConstructRight

-- Construction of a right adjoint, analogous to the above.
variable {G_obj : D → C}
variable (e : ∀ X Y, (F.obj X ⟶ Y) ≃ (X ⟶ G_obj Y))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57a8c0fa143e006317e63e113e10f8d436e0e9c7347b08efd7fc9d339274e051.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3f3722f61de6ccdddab966badc9b281b61639d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
