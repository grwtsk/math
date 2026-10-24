# preimage_image_eq_image'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:badb4929-ac2e-a595-5fcd-f57ebd06305f",
  "kind": "theorem",
  "lexical_name": "preimage_image_eq_image'",
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
  "slug": "preimage-image-eq-image--c07ff2acd6714f3289231d00",
  "source": {
    "blob": "5d782fe44cc98a911a7bef76ee46df52a6188485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant0428d055bdf9ca0f599bbc8be8ff7b6a692dee4d07cb482aa0e1f9bba519d3c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c07ff2acd6714f3289231d00d6d23089d1fdcfb8fc54ea3715342be62e70601f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant0428d055bdf9ca0f599bbc8be8ff7b6a692dee4d07cb482aa0e1f9bba519d3c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:badb4929-ac2e-a595-5fcd-f57ebd06305f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_image_eq_image' (i j : D.J) (U : Set (𝖣.U i)) :
    𝖣.ι j ⁻¹' 𝖣.ι i '' U = (D.t i j ≫ D.f _ _) '' D.f _ _ ⁻¹' U := by
  convert! D.preimage_image_eq_image i j U using 1
  rw [coe_comp, coe_comp, Set.image_comp]
  congr! 1
  rw [← Set.eq_preimage_iff_image_eq, Set.preimage_preimage]
  · change _ = (D.t i j ≫ D.t j i ≫ _) ⁻¹' _
    rw [𝖣.t_inv_assoc]
  rw [bijective_iff_isIso_ofHom]
  apply (forget TopCat).map_isIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant0428d055bdf9ca0f599bbc8be8ff7b6a692dee4d07cb482aa0e1f9bba519d3c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant0428d055bdf9ca0f599bbc8be8ff7b6a692dee4d07cb482aa0e1f9bba519d3c0.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d782fe44cc98a911a7bef76ee46df52a6188485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
