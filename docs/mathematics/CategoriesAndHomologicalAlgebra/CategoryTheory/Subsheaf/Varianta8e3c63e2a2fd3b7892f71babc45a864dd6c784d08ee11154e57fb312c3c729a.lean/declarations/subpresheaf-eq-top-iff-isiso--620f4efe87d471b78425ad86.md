# Subpresheaf.eq_top_iff_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:617a4bf2-367c-67b4-bf8a-610993612402",
  "kind": "theorem",
  "lexical_name": "Subpresheaf.eq_top_iff_isIso",
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
  "slug": "subpresheaf-eq-top-iff-isiso--620f4efe87d471b78425ad86",
  "source": {
    "blob": "596f21a9fe278d23fbcc014c49069f49bf932da7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:620f4efe87d471b78425ad86f0ad2a84a8b28b0a5f89e656d4bb15d6e1fcce12",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:617a4bf2-367c-67b4-bf8a-610993612402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subpresheaf.eq_top_iff_isIso : G = ⊤ ↔ IsIso G.ι := by
  constructor
  · rintro rfl
    infer_instance
  · intro H
    ext U x
    apply iff_true_iff.mpr
    rw [← IsIso.inv_hom_id_apply (G.ι.app U) x]
    exact ((inv (G.ι.app U)) x).2
#align category_theory.grothendieck_topology.subpresheaf.eq_top_iff_is_iso CategoryTheory.GrothendieckTopology.Subpresheaf.eq_top_iff_isIso

/-- If the image of a morphism falls in a subpresheaf, then the morphism factors through it. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596f21a9fe278d23fbcc014c49069f49bf932da7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
