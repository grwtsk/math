# Cotrident.coequalizer_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef05f18f-eaf6-a9a2-0c7c-89ece6140527",
  "kind": "theorem",
  "lexical_name": "Cotrident.coequalizer_ext",
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
  "slug": "cotrident-coequalizer-ext--2c56db70225d385b55d963e9",
  "source": {
    "blob": "3c4490622a4d20d367185dc7b609b40ea0dbf6ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 299,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant077a96bd4acca38224d8794788525df9bbdc8e1dea0bf14e6173393e1b15c945.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c56db70225d385b55d963e93c96b2dba821b0fc974c12ce8e94d3b5a10e48e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant077a96bd4acca38224d8794788525df9bbdc8e1dea0bf14e6173393e1b15c945.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef05f18f-eaf6-a9a2-0c7c-89ece6140527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cotrident.coequalizer_ext [Nonempty J] (s : Cotrident f) {W : C} {k l : s.pt ⟶ W}
    (h : s.π ≫ k = s.π ≫ l) : ∀ j : WalkingParallelFamily J, s.ι.app j ≫ k = s.ι.app j ≫ l
  | zero => by rw [← s.app_one (Classical.arbitrary J), Category.assoc, Category.assoc, h]
  | one => h
#align
  category_theory.limits.cotrident.coequalizer_ext
  CategoryTheory.Limits.Cotrident.coequalizer_ext

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant077a96bd4acca38224d8794788525df9bbdc8e1dea0bf14e6173393e1b15c945.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant077a96bd4acca38224d8794788525df9bbdc8e1dea0bf14e6173393e1b15c945.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c4490622a4d20d367185dc7b609b40ea0dbf6ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
