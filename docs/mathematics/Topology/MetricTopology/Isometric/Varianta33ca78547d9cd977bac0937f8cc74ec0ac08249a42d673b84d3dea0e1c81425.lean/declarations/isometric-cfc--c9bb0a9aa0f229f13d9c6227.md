# isometric_cfc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cb60573d3567a07b7f8aaec96fede8298b1157b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 408,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:885eee5c-9912-d9df-9e4b-1dca35380679",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d197c59-0fec-cc39-4af9-321109b32c89",
  "kind": "theorem",
  "lexical_name": "isometric_cfc",
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
  "slug": "isometric-cfc--c9bb0a9aa0f229f13d9c6227",
  "source": {
    "blob": "4cb60573d3567a07b7f8aaec96fede8298b1157b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 408,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9bb0a9aa0f229f13d9c62277d28d095efa5517d5ff84d7c937dddec239808bf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d197c59-0fec-cc39-4af9-321109b32c89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isometric_cfc (f : C(S, R)) (halg : Isometry (algebraMap R S)) (h0 : p 0)
    (h : ∀ a, p a ↔ q a ∧ QuasispectrumRestricts a f) :
    NonUnitalIsometricContinuousFunctionalCalculus R A p where
  toNonUnitalContinuousFunctionalCalculus := QuasispectrumRestricts.cfc f
    halg.isClosedEmbedding h0 h
  isometric a ha := by
    obtain ⟨ha', haf⟩ := h a |>.mp ha
    have := QuasispectrumRestricts.cfc f halg.isClosedEmbedding h0 h
    rw [cfcₙHom_eq_restrict f ha ha' haf]
    refine .of_dist_eq fun g₁ g₂ ↦ ?_
    simp only [nonUnitalStarAlgHom_apply, isometry_cfcₙHom a ha' |>.dist_eq]
    refine le_antisymm ?_ ?_
    all_goals refine ContinuousMap.dist_le dist_nonneg |>.mpr fun x ↦ ?_
    · simpa [halg.dist_eq] using! ContinuousMap.dist_apply_le_dist _
    · let x' : σₙ S a := Subtype.map (algebraMap R S) (fun _ ↦ quasispectrum.algebraMap_mem S) x
      apply le_of_eq_of_le ?_ <| ContinuousMap.dist_apply_le_dist x'
      simp only [ContinuousMapZero.comp_apply, ContinuousMapZero.coe_mk,
        ContinuousMap.coe_mk, StarAlgHom.ofId_apply, halg.dist_eq, x']
      congr! 2
      all_goals ext; exact haf.left_inv _ |>.symm

end QuasispectrumRestricts

end NonUnital

/-! ### Instances of isometric continuous functional calculi

The instances for `ℝ` and `ℂ` can be found in
`Mathlib/Analysis/CStarAlgebra/ContinuousFunctionalCalculus/Basic.lean`, as those require an actual
`CStarAlgebra` instance on `A`, whereas the one for `ℝ≥0` is simply inherited from an existing
instance for `ℝ`.
-/

section Instances

section Unital

variable {A : Type*} [NormedRing A] [PartialOrder A] [StarRing A] [StarOrderedRing A]
variable [NormedAlgebra ℝ A] [IsometricContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
variable [NonnegSpectrumClass ℝ A]

open NNReal in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb60573d3567a07b7f8aaec96fede8298b1157b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
