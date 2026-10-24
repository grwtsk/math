# Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e300f12-a850-1278-aec1-768ebe4a663e",
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
  "slug": "scheme-pullback-range-diagonal-subset-diagonalcoverdiagonalrange--4fbe2792195d216cf6b0506a",
  "source": {
    "blob": "9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 154,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fbe2792195d216cf6b0506ae5ab41c15193aba64e608615122b2d4a8b84bfb4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e300f12-a850-1278-aec1-768ebe4a663e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–171.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
