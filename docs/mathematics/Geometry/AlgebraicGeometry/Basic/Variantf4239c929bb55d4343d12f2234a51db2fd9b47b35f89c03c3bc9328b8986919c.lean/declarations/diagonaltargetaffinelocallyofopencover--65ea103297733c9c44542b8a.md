# diagonalTargetAffineLocallyOfOpenCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e85611a8-d1a8-aca8-3816-aed044965222",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e09cf803-5809-e10b-85a2-d407d0ea2133",
  "kind": "theorem",
  "lexical_name": "diagonalTargetAffineLocallyOfOpenCover",
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
  "slug": "diagonaltargetaffinelocallyofopencover--65ea103297733c9c44542b8a",
  "source": {
    "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 518,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65ea103297733c9c44542b8ad0e3ac199e7294ee976f9dc565369f3ecc9b6c96",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e09cf803-5809-e10b-85a2-d407d0ea2133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalTargetAffineLocallyOfOpenCover (P : AffineTargetMorphismProperty) (hP : P.IsLocal)
    {X Y : Scheme.{u}} (f : X ⟶ Y) (𝒰 : Scheme.OpenCover.{u} Y) [∀ i, IsAffine (𝒰.obj i)]
    (𝒰' : ∀ i, Scheme.OpenCover.{u} (pullback f (𝒰.map i))) [∀ i j, IsAffine ((𝒰' i).obj j)]
    (h𝒰' : ∀ i j k, P (pullback.mapDesc ((𝒰' i).map j) ((𝒰' i).map k) pullback.snd)) :
    (targetAffineLocally P).diagonal f := by
  let 𝒱 := (Scheme.Pullback.openCoverOfBase 𝒰 f f).bind fun i =>
    Scheme.Pullback.openCoverOfLeftRight.{u} (𝒰' i) (𝒰' i) pullback.snd pullback.snd
  have i1 : ∀ i, IsAffine (𝒱.obj i) := fun i => by dsimp; infer_instance
  refine' (hP.affine_openCover_iff _ _).mpr _
  rintro ⟨i, j, k⟩
  dsimp
  convert (affine_cancel_left_isIso hP.1
    (pullbackDiagonalMapIso _ _ ((𝒰' i).map j) ((𝒰' i).map k)).inv pullback.snd).mp _
  pick_goal 3
  · convert h𝒰' i j k; apply pullback.hom_ext <;> simp
  all_goals apply pullback.hom_ext <;>
  simp only [Category.assoc, pullback.lift_fst, pullback.lift_snd, pullback.lift_fst_assoc,
    pullback.lift_snd_assoc]
#align algebraic_geometry.diagonal_target_affine_locally_of_open_cover AlgebraicGeometry.diagonalTargetAffineLocallyOfOpenCover

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
