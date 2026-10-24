# constantPresheafAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bc81c79d8946d133a16f489076d4135a1bfc06f2cb2f9fc0a61e081b63f008c",
  "kind": "def",
  "lexical_name": "constantPresheafAdj",
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
  "slug": "constantpresheafadj--8c93b9506e450c7b2acd8e6c",
  "source": {
    "blob": "fadd9a877215ac2a72a54d82e58210baccfa7933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c93b9506e450c7b2acd8e6ceeeaa50e4d861e813bba17d3b2539c76c1829f2c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bc81c79d8946d133a16f489076d4135a1bfc06f2cb2f9fc0a61e081b63f008c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def constantPresheafAdj {T : C} (hT : IsTerminal T) :
    Functor.const Cᵒᵖ ⊣ (evaluation Cᵒᵖ D).obj (op T) where
  unit := (Functor.constCompEvaluationObj D (op T)).hom
  counit := {
    app := fun F => {
      app := fun ⟨X⟩ => F.map (IsTerminal.from hT X).op
      naturality := fun _ _ _ => by
        simp only [Functor.comp_obj, Functor.const_obj_obj, Functor.id_obj, Functor.const_obj_map,
          Category.id_comp, ← Functor.map_comp]
        congr
        simp }
    naturality := by intros; ext; simp /- Note: `aesop` works but is kind of slow -/ }

variable [HasWeakSheafify J D]

/--
The functor which maps an object of `D` to the constant sheaf at that object, i.e. the
sheafification of the constant presheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fadd9a877215ac2a72a54d82e58210baccfa7933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
