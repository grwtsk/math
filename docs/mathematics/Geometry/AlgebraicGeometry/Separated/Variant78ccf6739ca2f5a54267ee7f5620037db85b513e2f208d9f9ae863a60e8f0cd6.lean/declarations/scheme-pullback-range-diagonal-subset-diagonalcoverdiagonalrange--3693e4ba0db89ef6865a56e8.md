# Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "461406237cc752198497cd5e4b9b02ea38659dae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd02aed4-af14-27ef-6ea1-77b53aba798f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62d6698a-6d26-8bdb-732f-7aa1c1ef34e0",
  "kind": "lemma",
  "lexical_name": "Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange",
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
  "slug": "scheme-pullback-range-diagonal-subset-diagonalcoverdiagonalrange--3693e4ba0db89ef6865a56e8",
  "source": {
    "blob": "461406237cc752198497cd5e4b9b02ea38659dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 146,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3693e4ba0db89ef6865a56e8d020df63eea869f57a3b81b0e5fa768cbaebbb47",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62d6698a-6d26-8bdb-732f-7aa1c1ef34e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange :
    Set.range (pullback.diagonal f).base ⊆ diagonalCoverDiagonalRange f 𝒰 𝒱 := by
  rintro _ ⟨x, rfl⟩
  simp only [diagonalCoverDiagonalRange, openCoverOfBase_J, openCoverOfBase_obj,
    openCoverOfLeftRight_J, Opens.iSup_mk, Opens.carrier_eq_coe, Hom.coe_opensRange, Opens.coe_mk,
    Set.mem_iUnion, Set.mem_range, Sigma.exists]
  let i := 𝒰.f (f.base x)
  obtain ⟨y : 𝒰.obj i, hy : (𝒰.map i).base y = f.base x⟩ := 𝒰.covers (f.base x)
  obtain ⟨z, hz₁, hz₂⟩ := exists_preimage_pullback _ _ hy.symm
  let j := (𝒱 i).f z
  obtain ⟨w : (𝒱 i).obj j, hy : ((𝒱 i).map j).base w = z⟩ := (𝒱 i).covers z
  refine ⟨i, j, (pullback.diagonal ((𝒱 i).map j ≫ pullback.snd f (𝒰.map i))).base w, ?_⟩
  rw [← hz₁, ← hy, ← Scheme.comp_base_apply, ← Scheme.comp_base_apply]
  dsimp only [diagonalCover, Cover.pullbackHom, Cover.bind_obj, openCoverOfLeftRight_obj]
  rw [← Scheme.comp_base_apply]
  congr 5
  apply pullback.hom_ext <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant78ccf6739ca2f5a54267ee7f5620037db85b513e2f208d9f9ae863a60e8f0cd6.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `461406237cc752198497cd5e4b9b02ea38659dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
