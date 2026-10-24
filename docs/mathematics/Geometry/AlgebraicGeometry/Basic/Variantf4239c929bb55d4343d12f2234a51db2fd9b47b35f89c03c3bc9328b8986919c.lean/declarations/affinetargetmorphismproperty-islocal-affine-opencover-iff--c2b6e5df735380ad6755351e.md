# AffineTargetMorphismProperty.IsLocal.affine_openCover_iff

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
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cbed1bb-fff5-8fbf-88e4-3eb60bf7d56b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98c9a4e4-d605-5692-75f5-2cfc7a730a56",
  "kind": "theorem",
  "lexical_name": "AffineTargetMorphismProperty.IsLocal.affine_openCover_iff",
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
  "slug": "affinetargetmorphismproperty-islocal-affine-opencover-iff--c2b6e5df735380ad6755351e",
  "source": {
    "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 311,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2b6e5df735380ad6755351eb67b9a4c2b2f0c882f56722fffd2c8fc62c657b8",
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

Occurrence: `result:98c9a4e4-d605-5692-75f5-2cfc7a730a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineTargetMorphismProperty.IsLocal.affine_openCover_iff {P : AffineTargetMorphismProperty}
    (hP : P.IsLocal) {X Y : Scheme.{u}} (f : X ⟶ Y) (𝒰 : Scheme.OpenCover.{u} Y)
    [h𝒰 : ∀ i, IsAffine (𝒰.obj i)] :
    targetAffineLocally P f ↔ ∀ i, @P _ _ (pullback.snd : pullback f (𝒰.map i) ⟶ _) (h𝒰 i) := by
  refine' ⟨fun H => let h := ((hP.affine_openCover_TFAE f).out 0 2).mp H; _,
    fun H => let h := ((hP.affine_openCover_TFAE f).out 1 0).mp; _⟩
  · exact fun i => h 𝒰 i
  · exact h ⟨𝒰, inferInstance, H⟩
#align algebraic_geometry.affine_target_morphism_property.is_local.affine_open_cover_iff AlgebraicGeometry.AffineTargetMorphismProperty.IsLocal.affine_openCover_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
