# snakeInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7c410b7f8095b32e8064d25c53df672774a23866e38160466066978cacbd3a8",
  "kind": "def",
  "lexical_name": "snakeInput",
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
  "slug": "snakeinput--6b673aa53d20b8563783eed7",
  "source": {
    "blob": "3c1f7c810ab91d41268aa5c5cf3f498c5215a687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b673aa53d20b8563783eed7b459d899a2727a3352df359a00d016a4990ed543",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7c410b7f8095b32e8064d25c53df672774a23866e38160466066978cacbd3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def snakeInput (hS : S.ShortExact) (i j : ι) (hij : c.Rel i j) :
    ShortComplex.SnakeInput C where
  L₀ := (homologyFunctor C c i).mapShortComplex.obj S
  L₁ := (opcyclesFunctor C c i).mapShortComplex.obj S
  L₂ := (cyclesFunctor C c j).mapShortComplex.obj S
  L₃ := (homologyFunctor C c j).mapShortComplex.obj S
  v₀₁ := S.mapNatTrans (natTransHomologyι C c i)
  v₁₂ := S.mapNatTrans (natTransOpCyclesToCycles C c i j)
  v₂₃ := S.mapNatTrans (natTransHomologyπ C c j)
  h₀ := by
    apply ShortComplex.isLimitOfIsLimitπ
    all_goals
      exact (KernelFork.isLimitMapConeEquiv _ _).symm
        ((composableArrows₃_exact _ i j hij).exact 0).fIsKernel
  h₃ := by
    apply ShortComplex.isColimitOfIsColimitπ
    all_goals
      exact (CokernelCofork.isColimitMapCoconeEquiv _ _).symm
        ((composableArrows₃_exact _ i j hij).exact 1).gIsCokernel
  L₁_exact := by
    have := hS.epi_g
    exact opcycles_right_exact S hS.exact i
  L₂_exact := by
    have := hS.mono_f
    exact cycles_left_exact S hS.exact j
  epi_L₁_g := by
    have := hS.epi_g
    dsimp
    infer_instance
  mono_L₂_f := by
    have := hS.mono_f
    dsimp
    infer_instance

end HomologySequence

end Abelian

end HomologicalComplex

namespace CategoryTheory

open HomologicalComplex HomologySequence

variable {C ι : Type*} [Category* C] [Abelian C] {c : ComplexShape ι}
  {S : ShortComplex (HomologicalComplex C c)}
  (hS : S.ShortExact) (i j : ι) (hij : c.Rel i j)

namespace ShortComplex

namespace ShortExact

/-- The connecting homomorphism `S.X₃.homology i ⟶ S.X₁.homology j` for a short exact
short complex `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1f7c810ab91d41268aa5c5cf3f498c5215a687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
