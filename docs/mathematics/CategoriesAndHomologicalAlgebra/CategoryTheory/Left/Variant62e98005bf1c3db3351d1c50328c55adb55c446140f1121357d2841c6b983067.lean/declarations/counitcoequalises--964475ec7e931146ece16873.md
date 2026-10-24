# counitCoequalises

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c8183b3b3a79ece0fee5173e0013e0d87bfcbd4bd7519ba1e477fb84806386c",
  "kind": "def",
  "lexical_name": "counitCoequalises",
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
  "slug": "counitcoequalises--964475ec7e931146ece16873",
  "source": {
    "blob": "86662e1df75b63bf9c9995697803eac492a29a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:964475ec7e931146ece168734505c1ecea938df35b208b5d37e8107d9467ad50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c8183b3b3a79ece0fee5173e0013e0d87bfcbd4bd7519ba1e477fb84806386c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def counitCoequalises [∀ X : B, RegularEpi (adj₁.counit.app X)] (X : B) :
    IsColimit (Cofork.ofπ (adj₁.counit.app X) (adj₁.counit_naturality _)) :=
  Cofork.IsColimit.mk' _ fun s => by
    refine ⟨(RegularEpi.desc' (adj₁.counit.app X) s.π ?_).1, ?_, ?_⟩
    · rw [← cancel_epi (adj₁.counit.app (RegularEpi.W (adj₁.counit.app X)))]
      rw [← adj₁.counit_naturality_assoc RegularEpi.left]
      dsimp only [Functor.comp_obj]
      rw [← s.condition, ← F.map_comp_assoc, ← U.map_comp, RegularEpi.w, U.map_comp,
        F.map_comp_assoc, s.condition, ← adj₁.counit_naturality_assoc RegularEpi.right]
    · apply (RegularEpi.desc' (adj₁.counit.app X) s.π _).2
    · intro m hm
      rw [← cancel_epi (adj₁.counit.app X)]
      apply hm.trans (RegularEpi.desc' (adj₁.counit.app X) s.π _).2.symm

/-- (Implementation)
To construct the left adjoint, we use the coequalizer of `F' U ε_Y` with the composite

`F' U F U X ⟶ F' U F U R F U' X ⟶ F' U R F' U X ⟶ F' U X`

where the first morphism is `F' U F ι_UX`, the second is `F' U ε_RF'UX`, and the third is `δ_F'UX`.
We will show that this coequalizer exists and that it forms the object map for a left adjoint to
`R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant62e98005bf1c3db3351d1c50328c55adb55c446140f1121357d2841c6b983067.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86662e1df75b63bf9c9995697803eac492a29a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
