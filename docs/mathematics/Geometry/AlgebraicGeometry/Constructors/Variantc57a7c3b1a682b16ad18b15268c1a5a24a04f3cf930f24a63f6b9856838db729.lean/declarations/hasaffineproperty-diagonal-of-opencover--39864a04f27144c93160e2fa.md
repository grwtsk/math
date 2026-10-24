# HasAffineProperty.diagonal_of_openCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88bcf15636c887111b8f5d021d3744ed9d486c6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c872a7fd-62ee-6438-8b6c-ba8bd51a8d7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cbb16e6-c108-f612-eacf-5e3495779f55",
  "kind": "theorem",
  "lexical_name": "HasAffineProperty.diagonal_of_openCover",
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
  "slug": "hasaffineproperty-diagonal-of-opencover--39864a04f27144c93160e2fa",
  "source": {
    "blob": "88bcf15636c887111b8f5d021d3744ed9d486c6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 63,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39864a04f27144c93160e2fab2d1ecff585033097b465d9202c6cda4784cbca9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cbb16e6-c108-f612-eacf-5e3495779f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasAffineProperty.diagonal_of_openCover (P) {Q} [HasAffineProperty P Q]
    {X Y : Scheme.{u}} (f : X ⟶ Y) (𝒰 : Scheme.OpenCover.{u} Y) [∀ i, IsAffine (𝒰.obj i)]
    (𝒰' : ∀ i, Scheme.OpenCover.{u} (pullback f (𝒰.map i))) [∀ i j, IsAffine ((𝒰' i).obj j)]
    (h𝒰' : ∀ i j k,
      Q (pullback.mapDesc ((𝒰' i).map j) ((𝒰' i).map k) (𝒰.pullbackHom f i))) :
    P.diagonal f := by
  letI := isLocal_affineProperty P
  let 𝒱 := (Scheme.Pullback.openCoverOfBase 𝒰 f f).bind fun i =>
    Scheme.Pullback.openCoverOfLeftRight.{u} (𝒰' i) (𝒰' i) (pullback.snd _ _) (pullback.snd _ _)
  have i1 : ∀ i, IsAffine (𝒱.obj i) := fun i => by dsimp [𝒱]; infer_instance
  apply of_openCover 𝒱
  rintro ⟨i, j, k⟩
  dsimp [𝒱]
  convert (Q.cancel_left_of_respectsIso
    ((pullbackDiagonalMapIso _ _ ((𝒰' i).map j) ((𝒰' i).map k)).inv ≫
      pullback.map _ _ _ _ (𝟙 _) (𝟙 _) (𝟙 _) _ _) (pullback.snd _ _)).mp _ using 1
  · simp
  · ext1 <;> simp
  · simp only [Category.assoc, limit.lift_π, PullbackCone.mk_pt, PullbackCone.mk_π_app,
      Functor.const_obj_obj, cospan_one, cospan_left, cospan_right, Category.comp_id]
    convert h𝒰' i j k
    ext1 <;> simp [Scheme.Cover.pullbackHom]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88bcf15636c887111b8f5d021d3744ed9d486c6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
