# cocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d24fc40b93b703044deb4ca4f8c3b2615a593e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ded03e87-7c4f-ecbd-40e7-de8a8e38e969",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f217105-f122-08b3-e671-8f3e3541cbeb",
  "kind": "theorem",
  "lexical_name": "cocycle",
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
  "slug": "cocycle--6c3aef897a2d193eb9ef6957",
  "source": {
    "blob": "3d24fc40b93b703044deb4ca4f8c3b2615a593e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 181,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c3aef897a2d193eb9ef69576d88a85b1d2bc26012582ce82253d3199f71bc7a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f217105-f122-08b3-e671-8f3e3541cbeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cocycle (i j k : 𝒰.J) : t' 𝒰 f g i j k ≫ t' 𝒰 f g j k i ≫ t' 𝒰 f g k i j = 𝟙 _ := by
  apply pullback.hom_ext <;> rw [Category.id_comp]
  · apply pullback.hom_ext
    · apply pullback.hom_ext
      · simp_rw [Category.assoc, cocycle_fst_fst_fst 𝒰 f g i j k]
      · simp_rw [Category.assoc, cocycle_fst_fst_snd 𝒰 f g i j k]
    · simp_rw [Category.assoc, cocycle_fst_snd 𝒰 f g i j k]
  · apply pullback.hom_ext
    · apply pullback.hom_ext
      · simp_rw [Category.assoc, cocycle_snd_fst_fst 𝒰 f g i j k]
      · simp_rw [Category.assoc, cocycle_snd_fst_snd 𝒰 f g i j k]
    · simp_rw [Category.assoc, cocycle_snd_snd 𝒰 f g i j k]

/-- Given `Uᵢ ×[Z] Y`, this is the glued fibered product `X ×[Z] Y`. -/
@[simps U V f t t', simps -isSimp J]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d24fc40b93b703044deb4ca4f8c3b2615a593e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
