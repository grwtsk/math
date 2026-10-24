# liftHom_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce3bd875-dc14-7a9d-7da6-68e1757b8ae4",
  "kind": "theorem",
  "lexical_name": "liftHom_comp",
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
  "slug": "lifthom-comp--4e80904fe2e7f377f234fd28",
  "source": {
    "blob": "467b3b70715d48178fe161c1b283ae8dd57b0cdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 342,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e80904fe2e7f377f234fd2831c341384f368cd526002b7fc7e63cac986134cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce3bd875-dc14-7a9d-7da6-68e1757b8ae4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftHom_comp {a b c : FreeBicategory B} (f : a ⟶ b) (g : b ⟶ c) :
    liftHom F (f ≫ g) = liftHom F f ≫ liftHom F g :=
  rfl
#align category_theory.free_bicategory.lift_hom_comp CategoryTheory.FreeBicategory.liftHom_comp

end

section

variable {B : Type u₁} [Quiver.{v₁ + 1} B] {C : Type u₂} [Bicategory.{w₂, v₂} C]

variable (F : Prefunctor B C)

/-- Auxiliary definition for `lift`. -/
-- @[simp] -- Porting note: adding `@[simp]` causes a PANIC.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `467b3b70715d48178fe161c1b283ae8dd57b0cdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
