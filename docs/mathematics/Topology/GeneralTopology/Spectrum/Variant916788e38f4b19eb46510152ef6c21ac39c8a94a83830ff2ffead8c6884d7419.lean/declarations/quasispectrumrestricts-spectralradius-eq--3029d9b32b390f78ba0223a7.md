# QuasispectrumRestricts.spectralRadius_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3749c30c-371f-ff09-edda-746b0898324f",
  "kind": "lemma",
  "lexical_name": "QuasispectrumRestricts.spectralRadius_eq",
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
  "slug": "quasispectrumrestricts-spectralradius-eq--3029d9b32b390f78ba0223a7",
  "source": {
    "blob": "9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 726,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3029d9b32b390f78ba0223a7338de27d9becfcfe4139a32ce46882e8362e6150",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3749c30c-371f-ff09-edda-746b0898324f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuasispectrumRestricts.spectralRadius_eq {𝕜₁ 𝕜₂ A : Type*} [NormedField 𝕜₁]
    [NormedField 𝕜₂] [NonUnitalRing A] [Module 𝕜₁ A] [Module 𝕜₂ A] [NormedAlgebra 𝕜₁ 𝕜₂]
    [IsScalarTower 𝕜₁ 𝕜₂ A] [IsScalarTower 𝕜₂ A A] [SMulCommClass 𝕜₂ A A]
    {f : 𝕜₂ → 𝕜₁} {a : A} (h : QuasispectrumRestricts a f) :
    spectralRadius 𝕜₁ a = spectralRadius 𝕜₂ a := by
  rw [spectralRadius, spectralRadius]
  have := algebraMap_isometry 𝕜₁ 𝕜₂ |>.nnnorm_map_of_map_zero (map_zero _)
  apply le_antisymm
  all_goals apply iSup₂_le fun x hx ↦ ?_
  · grw [← this, ← le_iSup₂ _ ?_]
    exact (quasispectrum.algebraMap_mem_iff _).mpr hx
  · obtain ⟨y, hy, rfl⟩ := h.algebraMap_image.symm ▸ hx
    grw [this, ← le_iSup₂ y hy]

namespace SpectrumRestricts

open NNReal ENNReal

/-- If `𝕜₁` is a normed field contained as subfield of a larger normed field `𝕜₂`, and if `a : A`
is an element whose `𝕜₂` spectrum restricts to `𝕜₁`, then the spectral radii over each scalar
field coincide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
