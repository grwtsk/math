# hasHomology_sc'_of_not_mem_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dff1dafd-16f8-f718-607a-701fffcdb928",
  "kind": "lemma",
  "lexical_name": "hasHomology_sc'_of_not_mem_boundary",
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
  "slug": "hashomology-sc-of-not-mem-boundary--b353aed463583bf17b74803b",
  "source": {
    "blob": "5545aff54ffd355c967b84500586048882d9e1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantb14932a636fe222b4c332468db42c2bd139554c87fe4fe83520fcdf5512fd2c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b353aed463583bf17b74803b85a0356baaf5d12e981c268c7ac34dd9c3d54e51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantb14932a636fe222b4c332468db42c2bd139554c87fe4fe83520fcdf5512fd2c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dff1dafd-16f8-f718-607a-701fffcdb928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasHomology_sc'_of_not_mem_boundary (hj : ¬ e.BoundaryGE j) :
    ((K.truncGE' e).sc' i j k).HasHomology := by
  have : (K.restriction e).HasHomology j :=
    restriction.hasHomology K e i j k hi hk rfl rfl rfl
      (e.prev_f_of_not_boundaryGE hi hj) (e.next_f hk)
  have := ShortComplex.hasHomology_of_iso ((K.restriction e).isoSc' i j k hi hk)
  let φ := (shortComplexFunctor' C c i j k).map (K.restrictionToTruncGE' e)
  have : Epi φ.τ₁ := by dsimp [φ]; infer_instance
  have : IsIso φ.τ₂ := K.isIso_restrictionToTruncGE' e j hj
  have : IsIso φ.τ₃ := K.isIso_restrictionToTruncGE' e k (e.not_boundaryGE_next' hj hk)
  exact ShortComplex.hasHomology_of_epi_of_isIso_of_mono φ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantb14932a636fe222b4c332468db42c2bd139554c87fe4fe83520fcdf5512fd2c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variantb14932a636fe222b4c332468db42c2bd139554c87fe4fe83520fcdf5512fd2c4.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5545aff54ffd355c967b84500586048882d9e1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
