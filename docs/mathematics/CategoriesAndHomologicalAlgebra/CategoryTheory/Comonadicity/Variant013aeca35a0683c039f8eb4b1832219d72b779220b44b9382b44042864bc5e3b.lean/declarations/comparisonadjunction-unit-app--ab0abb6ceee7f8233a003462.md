# comparisonAdjunction_unit_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46553b03-2ec9-fdaa-8879-5e4a02034ce8",
  "kind": "theorem",
  "lexical_name": "comparisonAdjunction_unit_app",
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
  "slug": "comparisonadjunction-unit-app--ab0abb6ceee7f8233a003462",
  "source": {
    "blob": "8104185abcb6483febc89bfb4f5325e4d2920e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab0abb6ceee7f8233a0034622bba6ff9583371f0965ccb14ee3a559611f4aa0a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46553b03-2ec9-fdaa-8879-5e4a02034ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparisonAdjunction_unit_app
    [∀ A : adj.toComonad.Coalgebra, HasEqualizer (G.map A.a) (adj.unit.app (G.obj A.A))] (B : C) :
    (comparisonAdjunction adj).unit.app B = limit.lift _ (unitFork adj B) := by
  apply equalizer.hom_ext
  change
    equalizer.lift ((adj.homEquiv B _) (𝟙 _)) _ ≫ equalizer.ι _ _ =
      equalizer.lift _ _ ≫ equalizer.ι _ _
  simp [Adjunction.homEquiv_unit]

end ComonadicityInternal

open CategoryTheory Adjunction Comonad ComonadicityInternal

variable {C : Type u₁} {D : Type u₂}
variable [Category.{v₁} C] [Category.{v₁} D]
variable {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G)

variable (G) in
/--
If `F` is comonadic, it creates limits of `F`-cosplit pairs. This is the "boring" direction of
Beck's comonadicity theorem, the converse is given in `comonadicOfCreatesFSplitEqualizers`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8104185abcb6483febc89bfb4f5325e4d2920e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
