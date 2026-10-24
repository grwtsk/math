# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a23fe4616d88ee6392d6d8cdfae50cb1824290d48b7b06a7033af77d04b295e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1f806f632c4f0c5a1687c7fe",
  "source": {
    "blob": "cf245bb9301a1b44e773a497cf086218d9ab0e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f806f632c4f0c5a1687c7feb7a549f36d96dbb50ec2fc3f812919686da88a41",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a23fe4616d88ee6392d6d8cdfae50cb1824290d48b7b06a7033af77d04b295e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (Y : Sheaf J A) : IsIso ((G.sheafAdjunctionCocontinuous A J K).counit.app Y) := by
  apply (config := { allowSynthFailures := true })
    ReflectsIsomorphisms.reflects (sheafToPresheaf J A)
  rw [NatTrans.isIso_iff_isIso_app]
  intro ⟨U⟩
  apply (config := { allowSynthFailures := true }) ReflectsIsomorphisms.reflects yoneda
  rw [NatTrans.isIso_iff_isIso_app]
  intro ⟨X⟩
  simp only [comp_obj, sheafToPresheaf_obj, sheafPushforwardContinuous_obj_val_obj, yoneda_obj_obj,
    id_obj, sheafToPresheaf_map, sheafAdjunctionCocontinuous_counit_app_val, ranAdjunction_counit]
  exact isIso_ranCounit_app_of_isDenseSubsite G J K Y U X

variable (A)

/--
If `G : C ⥤ D` exhibits `(C, J)` as a dense subsite of `(D, K)`,
it induces an equivalence of category of sheaves valued in a category with suitable limits.
-/
@[simps! functor inverse]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafEquiv/Variant58477d9165ab1f6d0cdf9d9b72fef34f802f0a71855305f85530681f2c65f8a9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf245bb9301a1b44e773a497cf086218d9ab0e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
