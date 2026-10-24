# Bundle.TotalSpace.smoothManifoldWithCorners

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1057ed1313afc0129bb5ed4de2759f885b8d32a6d6bac2b2385a3a3019477929",
  "kind": "instance",
  "lexical_name": "Bundle.TotalSpace.smoothManifoldWithCorners",
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
  "slug": "bundle-totalspace-smoothmanifoldwithcorners--ba9523dba53f5cf1229ad02e",
  "source": {
    "blob": "eb54446ef768f7fd34d217b063a4b43ec4cc3e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 496,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba9523dba53f5cf1229ad02eefcece5284605a35940092f37b56b55c561f9b2f",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1057ed1313afc0129bb5ed4de2759f885b8d32a6d6bac2b2385a3a3019477929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Bundle.TotalSpace.smoothManifoldWithCorners :
    SmoothManifoldWithCorners (IB.prod 𝓘(𝕜, F)) (TotalSpace F E) := by
  refine' { StructureGroupoid.HasGroupoid.comp (smoothFiberwiseLinear B F IB) _ with }
  intro e he
  rw [mem_smoothFiberwiseLinear_iff] at he
  obtain ⟨φ, U, hU, hφ, h2φ, heφ⟩ := he
  rw [isLocalStructomorphOn_contDiffGroupoid_iff]
  refine' ⟨ContMDiffOn.congr _ (EqOnSource.eqOn heφ),
      ContMDiffOn.congr _ (EqOnSource.eqOn (EqOnSource.symm' heφ))⟩
  · rw [EqOnSource.source_eq heφ]
    apply smoothOn_fst.prod_mk
    exact (hφ.comp contMDiffOn_fst <| prod_subset_preimage_fst _ _).clm_apply contMDiffOn_snd
  · rw [EqOnSource.target_eq heφ]
    apply smoothOn_fst.prod_mk
    exact (h2φ.comp contMDiffOn_fst <| prod_subset_preimage_fst _ _).clm_apply contMDiffOn_snd
#align bundle.total_space.smooth_manifold_with_corners Bundle.TotalSpace.smoothManifoldWithCorners

section

variable {F E}
variable {e e' : Trivialization F (π F E)} [MemTrivializationAtlas e] [MemTrivializationAtlas e']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb54446ef768f7fd34d217b063a4b43ec4cc3e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
