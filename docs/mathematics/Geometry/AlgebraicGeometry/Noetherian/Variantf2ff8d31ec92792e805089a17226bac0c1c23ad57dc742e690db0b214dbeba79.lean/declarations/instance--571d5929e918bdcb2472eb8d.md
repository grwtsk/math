# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dfbb8c44c92948517691f289066e62de7595cb6adc6e948331391ad85b46880",
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
  "slug": "instance--571d5929e918bdcb2472eb8d",
  "source": {
    "blob": "8e5ad23562b9c912e380afaf8647e1e21d38d2d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 205,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:571d5929e918bdcb2472eb8d51ff5ce04c0dd1915f41b0562e1b9cfe6f0339f3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dfbb8c44c92948517691f289066e62de7595cb6adc6e948331391ad85b46880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) {Z : Scheme} [IsLocallyNoetherian X]
    {f : Z ⟶ X} [IsOpenImmersion f] : QuasiCompact f := by
  apply quasiCompact_iff_forall_isAffineOpen.mpr
  intro U hU
  rw [Opens.map_coe, ← Set.preimage_inter_range]
  apply f.isOpenEmbedding.isInducing.isCompact_preimage'
  · apply (noetherianSpace_set_iff _).mp
    · convert! noetherianSpace_of_isAffineOpen U hU
      apply IsLocallyNoetherian.component_noetherian ⟨U, hU⟩
    · exact Set.inter_subset_left
  · exact Set.inter_subset_right

set_option backward.isDefEq.respectTransparency.types false in
/-- A locally Noetherian scheme is quasi-separated. -/
@[stacks 01OY]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantf2ff8d31ec92792e805089a17226bac0c1c23ad57dc742e690db0b214dbeba79.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5ad23562b9c912e380afaf8647e1e21d38d2d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
