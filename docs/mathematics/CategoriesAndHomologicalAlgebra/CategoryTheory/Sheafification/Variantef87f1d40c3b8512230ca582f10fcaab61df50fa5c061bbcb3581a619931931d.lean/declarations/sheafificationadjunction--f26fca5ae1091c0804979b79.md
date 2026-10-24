# sheafificationAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d787b0c847a9fdc89d8bb9643f078b039645317841f9a15be02d8d5daffb1eb",
  "kind": "def",
  "lexical_name": "sheafificationAdjunction",
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
  "slug": "sheafificationadjunction--f26fca5ae1091c0804979b79",
  "source": {
    "blob": "cc5425bc43825604d22e79985f03ceafbffddde8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f26fca5ae1091c0804979b79624434444614e8f2614d65cf94049d36ddf1d4be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d787b0c847a9fdc89d8bb9643f078b039645317841f9a15be02d8d5daffb1eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafificationAdjunction :
    sheafification.{v} α ⊣ SheafOfModules.forget R ⋙ restrictScalars α :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ ↦ sheafificationHomEquiv α
      homEquiv_naturality_left_symm := fun {P₀ Q₀ N} f g ↦ by
        apply (SheafOfModules.toSheaf _).map_injective
        rw [Functor.map_comp]
        erw [toSheaf_map_sheafificationHomEquiv_symm,
          toSheaf_map_sheafificationHomEquiv_symm α g]
        rw [Functor.map_comp]
        apply (CategoryTheory.sheafificationAdjunction J
          AddCommGrp.{v}).homEquiv_naturality_left_symm
      homEquiv_naturality_right := fun {P₀ M N} f g ↦ by
        apply (toPresheaf _).map_injective
        erw [toPresheaf_map_sheafificationHomEquiv] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc5425bc43825604d22e79985f03ceafbffddde8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
