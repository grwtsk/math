# map_smul_homEquiv'_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:768ef69b-59c7-b782-58bc-34010fcf3f3c",
  "kind": "lemma",
  "lexical_name": "map_smul_homEquiv'_iff",
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
  "slug": "map-smul-homequiv-iff--e99cca4afb15e77df9df7f17",
  "source": {
    "blob": "e45bca924e16bcff1aabe10a862e78f81f4417e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant0e1f19270add07f1f91282b1a85c7d3bfe109294b37481574a4575ec4d2961e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e99cca4afb15e77df9df7f1741d9702e4d3b712f2bb61c517cdb17b88c0ea68e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant0e1f19270add07f1f91282b1a85c7d3bfe109294b37481574a4575ec4d2961e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:768ef69b-59c7-b782-58bc-34010fcf3f3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_smul_homEquiv'_iff {N : ModuleCat.{w} cR.pt}
    (α : ModuleColimit hcR hcM →+ N) :
    dsimp% (∀ (U : Cᵒᵖ) (r : R.obj U) (m : M.obj U), (homEquiv' hcR hcM α).app U (r • m) =
        letI m' : N := (homEquiv' hcR hcM α).app U m; letI r' : cR.pt := cR.ι.app U r
        r' • m') ↔
    ∀ (r : cR.pt) (m : ModuleColimit hcR hcM), α (r • m) = r • α m := by
  refine ⟨fun h r m ↦ ?_, fun h U r m ↦ ?_⟩
  · obtain ⟨U, r, m, rfl, rfl⟩ := jointly_surjective₂ r m
    refine Eq.trans ?_ ((homEquiv'_app_apply ..).symm.trans (h U r m))
    congr 1
    apply smul_eq
  · rw [homEquiv'_app_apply, homEquiv'_app_apply, ← h]
    congr 1
    exact (smul_eq ..).symm

/-- This is the universal property of `PresheafOfModules.ModuleColimit` as a module.
See also `PresheafOfModules.colimitAdjunction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant0e1f19270add07f1f91282b1a85c7d3bfe109294b37481574a4575ec4d2961e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant0e1f19270add07f1f91282b1a85c7d3bfe109294b37481574a4575ec4d2961e1.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e45bca924e16bcff1aabe10a862e78f81f4417e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
