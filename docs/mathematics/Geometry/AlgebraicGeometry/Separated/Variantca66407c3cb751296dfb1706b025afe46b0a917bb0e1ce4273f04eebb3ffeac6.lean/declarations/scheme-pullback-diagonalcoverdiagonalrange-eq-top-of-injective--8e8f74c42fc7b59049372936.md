# Scheme.Pullback.diagonalCoverDiagonalRange_eq_top_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:001579af-66fe-8601-88c2-33853c797bf9",
  "kind": "lemma",
  "lexical_name": "Scheme.Pullback.diagonalCoverDiagonalRange_eq_top_of_injective",
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
  "slug": "scheme-pullback-diagonalcoverdiagonalrange-eq-top-of-injective--8e8f74c42fc7b59049372936",
  "source": {
    "blob": "bf5841503a1eaaec126a1fa517de0ced41de27df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 161,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e8f74c42fc7b59049372936f6502a141b559f8b522e7d87001da70996ecc74a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:001579af-66fe-8601-88c2-33853c797bf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Pullback.diagonalCoverDiagonalRange_eq_top_of_injective
    (hf : Function.Injective f) :
    diagonalCoverDiagonalRange f 𝒰 𝒱 = ⊤ := by
  rw [← top_le_iff]
  rintro x -
  simp only [diagonalCoverDiagonalRange, openCoverOfBase_I₀, openCoverOfBase_X,
    openCoverOfLeftRight_I₀, Opens.iSup_mk, Opens.carrier_eq_coe, Hom.coe_opensRange, Opens.mem_mk,
    Set.mem_iUnion, Set.mem_range, Sigma.exists]
  have H : pullback.fst f f x = pullback.snd f f x :=
    hf (by rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, pullback.condition])
  let i := 𝒰.idx (f (pullback.fst f f x))
  obtain ⟨y : 𝒰.X i, hy : 𝒰.f i y = f _⟩ :=
    𝒰.covers (f (pullback.fst f f x))
  obtain ⟨z, hz₁, hz₂⟩ := exists_preimage_pullback _ _ hy.symm
  let j := (𝒱 i).idx z
  obtain ⟨w : (𝒱 i).X j, hy : (𝒱 i).f j w = z⟩ := (𝒱 i).covers z
  refine ⟨i, j, ?_⟩
  simp_rw [diagonalCover_map]
  change x ∈ Set.range _
  simp only [diagonalCover, openCoverOfBase_I₀,
    Precoverage.ZeroHypercover.pullback₁_toPreZeroHypercover, PreZeroHypercover.pullback₁_X,
    Precoverage.ZeroHypercover.bind_toPreZeroHypercover, openCoverOfBase_X,
    PreZeroHypercover.bind_X, openCoverOfLeftRight_I₀, openCoverOfLeftRight_X]
  rw [range_map]
  simp [← H, ← hz₁, ← hy]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5841503a1eaaec126a1fa517de0ced41de27df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
