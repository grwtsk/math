# constantPresheafAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ce86df67268db2ff9f7615196673fd6d19f8dff329ccb27f38a7395b577b47f",
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
  "slug": "constantpresheafadj--662b9959ae20b1cb51d486f9",
  "source": {
    "blob": "fed3e71146f34e78917b7d66b56abaf7ac866071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:662b9959ae20b1cb51d486f92b08bb226b1a7842a3c0be37cfdbd97564535a3f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ce86df67268db2ff9f7615196673fd6d19f8dff329ccb27f38a7395b577b47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–59.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed3e71146f34e78917b7d66b56abaf7ac866071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
