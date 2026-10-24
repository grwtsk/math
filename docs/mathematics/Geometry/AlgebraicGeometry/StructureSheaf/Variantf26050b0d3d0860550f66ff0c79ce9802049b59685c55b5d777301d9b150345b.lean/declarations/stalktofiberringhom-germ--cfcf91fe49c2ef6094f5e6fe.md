# stalkToFiberRingHom_germ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a568f6bba0307bac003a3a5ae4eab9ef6313a07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:605acfe8-2cd6-6178-89d2-8db06dde88f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fa808e7-c17a-8fe0-c27f-677649e57009",
  "kind": "theorem",
  "lexical_name": "stalkToFiberRingHom_germ'",
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
  "slug": "stalktofiberringhom-germ--cfcf91fe49c2ef6094f5e6fe",
  "source": {
    "blob": "4a568f6bba0307bac003a3a5ae4eab9ef6313a07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 292,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfcf91fe49c2ef6094f5e6feb3af7b382639d24611bd4bb1d127ac7b8273664e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fa808e7-c17a-8fe0-c27f-677649e57009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkToFiberRingHom_germ' (U : Opens (ProjectiveSpectrum.top 𝒜))
    (x : ProjectiveSpectrum.top 𝒜) (hx : x ∈ U) (s : (Proj.structureSheaf 𝒜).1.obj (op U)) :
    stalkToFiberRingHom 𝒜 x ((Proj.structureSheaf 𝒜).presheaf.germ ⟨x, hx⟩ s) = (s.1 ⟨x, hx⟩ : _) :=
  RingHom.ext_iff.1 (germ_comp_stalkToFiberRingHom 𝒜 U ⟨x, hx⟩ : _) s
#align algebraic_geometry.stalk_to_fiber_ring_hom_germ' AlgebraicGeometry.stalkToFiberRingHom_germ'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a568f6bba0307bac003a3a5ae4eab9ef6313a07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
