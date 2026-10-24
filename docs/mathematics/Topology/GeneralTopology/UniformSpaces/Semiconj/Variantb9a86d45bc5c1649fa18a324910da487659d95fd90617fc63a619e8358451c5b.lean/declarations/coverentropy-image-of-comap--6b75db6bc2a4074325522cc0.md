# coverEntropy_image_of_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbc5e58b-9ca9-c1a7-6794-1f45dee61e15",
  "kind": "theorem",
  "lexical_name": "coverEntropy_image_of_comap",
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
  "slug": "coverentropy-image-of-comap--6b75db6bc2a4074325522cc0",
  "source": {
    "blob": "5e3e3f5e7311a15c60fe029a7e006df0f08c65d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b75db6bc2a4074325522cc0966249bce234e72488f1980e393cccabe377955a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbc5e58b-9ca9-c1a7-6794-1f45dee61e15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coverEntropy_image_of_comap (u : UniformSpace Y) {S : X → X} {T : Y → Y} {φ : X → Y}
    (h : Semiconj φ S T) (F : Set X) :
    coverEntropy T (φ '' F) = @coverEntropy X (comap φ u) S F := by
  apply le_antisymm
  · refine iSup₂_le fun V V_uni ↦ (coverEntropyEntourage_image_le h F V).trans ?_
    apply @coverEntropyEntourage_le_coverEntropy X (comap φ u) S F
    rw [uniformity_comap φ, mem_comap]
    exact ⟨V, V_uni, Subset.rfl⟩
  · refine iSup₂_le fun U U_uni ↦ ?_
    simp only [uniformity_comap φ, mem_comap] at U_uni
    obtain ⟨V, V_uni, V_sub⟩ := U_uni
    obtain ⟨W, W_uni, W_symm, W_V⟩ := comp_symm_mem_uniformity_sets V_uni
    apply (coverEntropyEntourage_antitone S F ((preimage_mono W_V).trans V_sub)).trans
    apply (le_coverEntropyEntourage_image h F W_symm).trans
    exact coverEntropyEntourage_le_coverEntropy T (φ '' F) W_uni

/-- The entropy of `φ '' F` equals the entropy of `F` if `X` is endowed with the pullback by `φ`
  of the uniform structure of `Y`. This version uses a `liminf`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variantb9a86d45bc5c1649fa18a324910da487659d95fd90617fc63a619e8358451c5b.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e3e3f5e7311a15c60fe029a7e006df0f08c65d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
