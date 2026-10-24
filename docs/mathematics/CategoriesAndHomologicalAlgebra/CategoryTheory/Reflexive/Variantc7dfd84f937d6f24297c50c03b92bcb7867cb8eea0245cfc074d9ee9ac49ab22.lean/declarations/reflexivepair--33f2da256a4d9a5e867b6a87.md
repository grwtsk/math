# reflexivePair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:511097cc7909f0d79bc0e9eea84a018e5ac000d7c10d6abec4603a12662c84fe",
  "kind": "def",
  "lexical_name": "reflexivePair",
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
  "slug": "reflexivepair--33f2da256a4d9a5e867b6a87",
  "source": {
    "blob": "a26fb2edec48b20b4613042058154f6535618664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 340,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantc7dfd84f937d6f24297c50c03b92bcb7867cb8eea0245cfc074d9ee9ac49ab22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33f2da256a4d9a5e867b6a873db1fb3a1714a63dc6fec62685dbb2443cafd27f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantc7dfd84f937d6f24297c50c03b92bcb7867cb8eea0245cfc074d9ee9ac49ab22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:511097cc7909f0d79bc0e9eea84a018e5ac000d7c10d6abec4603a12662c84fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflexivePair (f g : A ⟶ B) (s : B ⟶ A)
    (sl : s ≫ f = 𝟙 B := by cat_disch) (sr : s ≫ g = 𝟙 B := by cat_disch) :
    (WalkingReflexivePair ⥤ C) where
  obj x :=
    match x with
    | zero => B
    | one => A
  map h :=
    match h with
    | .id _ => 𝟙 _
    | .left => f
    | .right => g
    | .reflexion => s
    | .rightCompReflexion => g ≫ s
    | .leftCompReflexion => f ≫ s
  map_comp := by
    rintro _ _ _ ⟨⟩ g <;> cases g <;>
      simp only [Category.id_comp, Category.comp_id, Category.assoc, sl, sr,
        reassoc_of% sl, reassoc_of% sr] <;> rfl

section

variable {A B : C}
variable (f g : A ⟶ B) (s : B ⟶ A) {sl : s ≫ f = 𝟙 B} {sr : s ≫ g = 𝟙 B}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantc7dfd84f937d6f24297c50c03b92bcb7867cb8eea0245cfc074d9ee9ac49ab22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantc7dfd84f937d6f24297c50c03b92bcb7867cb8eea0245cfc074d9ee9ac49ab22.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a26fb2edec48b20b4613042058154f6535618664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
