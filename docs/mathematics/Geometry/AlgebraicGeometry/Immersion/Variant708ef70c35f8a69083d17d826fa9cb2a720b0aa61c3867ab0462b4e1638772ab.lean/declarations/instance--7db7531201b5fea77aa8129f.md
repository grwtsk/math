# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:341dcbfe73b7b3e6ff5b3f733b81254a14a47cd7c3adc57db3005270d7f2e17e",
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
  "slug": "instance--7db7531201b5fea77aa8129f",
  "source": {
    "blob": "32bac392ced9f8f130bc8cf5cb4b71fd074a8f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 96,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7db7531201b5fea77aa8129f679a5391f4e8ea69d669d4e1c414219b70d8b6ce",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:341dcbfe73b7b3e6ff5b3f733b81254a14a47cd7c3adc57db3005270d7f2e17e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsLocalAtTarget @IsImmersion := by
  suffices IsLocalAtTarget (topologically fun {X Y} _ _ f ↦ IsLocallyClosed (Set.range f)) from
    isImmersion_eq_inf ▸ inferInstance
  apply (config := { allowSynthFailures := true }) topologically_isLocalAtTarget'
  · refine { precomp := ?_, postcomp := ?_ }
    · intro X Y Z i hi f hf
      change IsIso i at hi
      show IsLocallyClosed _
      simpa only [Scheme.comp_coeBase, TopCat.coe_comp, Set.range_comp,
        Set.range_eq_univ.mpr i.surjective, Set.image_univ]
    · intro X Y Z i hi f hf
      change IsIso i at hi
      show IsLocallyClosed _
      simp only [Scheme.comp_coeBase, TopCat.coe_comp, Set.range_comp]
      refine hf.image i.homeomorph.isInducing ?_
      rw [Set.range_eq_univ.mpr i.surjective]
      exact isOpen_univ.isLocallyClosed
  · simp_rw [Set.range_restrictPreimage]
    exact fun _ _ _ hU _ ↦ hU.isLocallyClosed_iff_coe_preimage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32bac392ced9f8f130bc8cf5cb4b71fd074a8f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
