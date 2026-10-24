# quasiCompact_affineProperty_iff_quasiSeparatedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:406714e8-152c-56e9-3163-bec02712fdc4",
  "kind": "theorem",
  "lexical_name": "quasiCompact_affineProperty_iff_quasiSeparatedSpace",
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
  "slug": "quasicompact-affineproperty-iff-quasiseparatedspace--258753bb882318a29d816450",
  "source": {
    "blob": "a2fdd2e6d0cdd0aba16037b320847a2049972835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:258753bb882318a29d8164505cb7e57723a8347fb6e4d37bb475ac5ff9941aa7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:406714e8-152c-56e9-3163-bec02712fdc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasiCompact_affineProperty_iff_quasiSeparatedSpace {X Y : Scheme} [IsAffine Y]
    (f : X ⟶ Y) :
    AffineTargetMorphismProperty.diagonal (fun X _ _ _ ↦ CompactSpace X) f ↔
      QuasiSeparatedSpace X := by
  delta AffineTargetMorphismProperty.diagonal
  rw [quasiSeparatedSpace_iff_affine]
  constructor
  · intro H U V
    haveI : IsAffine _ := U.2
    haveI : IsAffine _ := V.2
    let g : pullback U.1.ι V.1.ι ⟶ X := pullback.fst _ _ ≫ U.1.ι
    have : IsOpenImmersion g := inferInstance
    have e := this.base_open.isEmbedding.toHomeomorph
    rw [IsOpenImmersion.range_pullback_to_base_of_left] at e
    erw [Subtype.range_coe, Subtype.range_coe] at e
    rw [isCompact_iff_compactSpace]
    exact @Homeomorph.compactSpace _ _ _ _ (H _ _) e
  · introv H h₁ h₂
    let g : pullback f₁ f₂ ⟶ X := pullback.fst _ _ ≫ f₁
    have : IsOpenImmersion g := inferInstance
    have e := this.base_open.isEmbedding.toHomeomorph
    rw [IsOpenImmersion.range_pullback_to_base_of_left] at e
    simp_rw [isCompact_iff_compactSpace] at H
    exact
      @Homeomorph.compactSpace _ _ _ _
        (H ⟨⟨_, h₁.base_open.isOpen_range⟩, isAffineOpen_opensRange _⟩
          ⟨⟨_, h₂.base_open.isOpen_range⟩, isAffineOpen_opensRange _⟩)
        e.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2fdd2e6d0cdd0aba16037b320847a2049972835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
