# isLimitMapConeOfKernelForkOfι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88647713e7cdc41dc63ef0cbadec9dce132ded786f84944e36ed73285f716b24",
  "kind": "def",
  "lexical_name": "isLimitMapConeOfKernelForkOfι",
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
  "slug": "islimitmapconeofkernelforkof--da7ee783cb23c82c3e448762",
  "source": {
    "blob": "143fe964376d73bccb6a1e35b4c4f637e83256f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 516,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da7ee783cb23c82c3e448762e7477ece40f1ff533a497dd16d5d3ba25e080fcc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88647713e7cdc41dc63ef0cbadec9dce132ded786f84944e36ed73285f716b24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimitMapConeOfKernelForkOfι
    {X Y : D} (i : X ⟶ Y) [HasCokernel i] (F : D ⥤ C)
    [F.PreservesZeroMorphisms] [Mono (F.map i)]
    [PreservesColimit (parallelPair i 0) F] :
    IsLimit (F.mapCone (KernelFork.ofι i (cokernel.condition i))) := by
  let e : parallelPair (cokernel.π (F.map i)) 0 ≅ parallelPair (cokernel.π i) 0 ⋙ F :=
    parallelPair.ext (Iso.refl _) (asIso (cokernelComparison i F)) (by simp) (by simp)
  refine IsLimit.postcomposeInvEquiv e _ ?_
  let hi := Abelian.monoIsKernelOfCokernel _ (cokernelIsCokernel (F.map i))
  refine IsLimit.ofIsoLimit hi (Fork.ext (Iso.refl _) ?_)
  change 𝟙 _ ≫ F.map i ≫ 𝟙 _ = F.map i
  rw [Category.comp_id, Category.id_comp]

/-- If `F : D ⥤ C` is a functor to an abelian category, `p : X ⟶ Y` is a morphism
admitting a kernel such that `F` preserves this kernel and `F.map p` is an epi,
then `F.map Y` identifies to the cokernel of `F.map (kernel.ι p)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `143fe964376d73bccb6a1e35b4c4f637e83256f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
