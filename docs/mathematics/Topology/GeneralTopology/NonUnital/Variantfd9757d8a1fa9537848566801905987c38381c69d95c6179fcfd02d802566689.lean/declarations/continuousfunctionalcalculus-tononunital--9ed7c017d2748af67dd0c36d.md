# ContinuousFunctionalCalculus.toNonUnital

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bbe99b0af553f3fa117663e7766d22951dec177daec79c11c921f1d744cc482",
  "kind": "instance",
  "lexical_name": "ContinuousFunctionalCalculus.toNonUnital",
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
  "slug": "continuousfunctionalcalculus-tononunital--9ed7c017d2748af67dd0c36d",
  "source": {
    "blob": "20898072847cd652759206ccde7a3ebb3910bac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 889,
    "line": 874,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ed7c017d2748af67dd0c36de933d4039a7d79e87165bf01a9710c304a774741",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4bbe99b0af553f3fa117663e7766d22951dec177daec79c11c921f1d744cc482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 874–889.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ContinuousFunctionalCalculus.toNonUnital [ContinuousFunctionalCalculus R A p] :
    NonUnitalContinuousFunctionalCalculus R A p where
  predicate_zero := cfc_predicate_zero R
  compactSpace_quasispectrum a := by
    have h_cpct : CompactSpace (spectrum R a) := inferInstance
    simp only [← isCompact_iff_compactSpace, quasispectrum_eq_spectrum_union_zero] at h_cpct ⊢
    exact h_cpct |>.union isCompact_singleton
  exists_cfc_of_predicate _ ha :=
    ⟨cfcₙHom_of_cfcHom R ha,
      continuous_cfcₙHom_of_cfcHom ha,
      cfcₙHom_of_cfcHom_injective ha,
      cfcHom_id ha,
      cfcₙHom_of_cfcHom_map_quasispectrum ha,
      fun _ ↦ cfcHom_predicate ha _⟩

open scoped NonUnitalContinuousFunctionalCalculus in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean#L874).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20898072847cd652759206ccde7a3ebb3910bac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
