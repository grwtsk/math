# isRightAdjoint_of_preservesLimits_of_isCoseparating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b758ee3-10e4-0e9f-acda-853629e5815c",
  "kind": "lemma",
  "lexical_name": "isRightAdjoint_of_preservesLimits_of_isCoseparating",
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
  "slug": "isrightadjoint-of-preserveslimits-of-iscoseparating--69f8cc22f2ee92a71581e2e0",
  "source": {
    "blob": "3ed1385e643991393eb5b7d5238a672ec4d6b016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69f8cc22f2ee92a71581e2e01b6e6a561ddd39b5a7ecabdb7a0afaa71b48ccea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b758ee3-10e4-0e9f-acda-853629e5815c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRightAdjoint_of_preservesLimits_of_isCoseparating [HasLimits D] [WellPowered.{v} D]
    {𝒢 : Set D} [Small.{v} 𝒢] (h𝒢 : IsCoseparating 𝒢) (G : D ⥤ C) [PreservesLimits G] :
    G.IsRightAdjoint :=
  have : ∀ A, HasInitial (StructuredArrow A G) := fun A =>
    hasInitial_of_isCoseparating (StructuredArrow.isCoseparating_proj_preimage A G h𝒢)
  isRightAdjointOfStructuredArrowInitials _

/-- The special adjoint functor theorem: if `F : C ⥤ D` preserves colimits and `C` is cocomplete,
well-copowered and has a small separating set, then `F` has a right adjoint.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed1385e643991393eb5b7d5238a672ec4d6b016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
