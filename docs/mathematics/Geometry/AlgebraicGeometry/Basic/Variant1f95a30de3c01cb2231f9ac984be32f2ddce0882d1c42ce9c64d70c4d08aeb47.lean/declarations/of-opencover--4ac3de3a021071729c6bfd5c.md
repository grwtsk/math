# of_openCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f45eb43f9d01633687caca22cbd5b9bb380d15b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 556,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c32ca738-7609-09c3-ca6f-58b8368bc141",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e72db88-9e69-094f-b0cf-00cb423a8243",
  "kind": "theorem",
  "lexical_name": "of_openCover",
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
  "slug": "of-opencover--4ac3de3a021071729c6bfd5c",
  "source": {
    "blob": "f45eb43f9d01633687caca22cbd5b9bb380d15b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 556,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac3de3a021071729c6bfd5c5d9eb95e58936e86afdbb3d594aa299c72a72c4e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e72db88-9e69-094f-b0cf-00cb423a8243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_openCover
    (𝒰 : Y.OpenCover) [∀ i, IsAffine (𝒰.obj i)] (h𝒰 : ∀ i, Q (𝒰.pullbackHom f i)) :
    P f :=
  letI := isLocal_affineProperty P
  of_iSup_eq_top
    (fun i ↦ ⟨_, isAffineOpen_opensRange (𝒰.map i)⟩) 𝒰.iSup_opensRange
    (fun i ↦ (Q.arrow_mk_iso_iff (morphismRestrictOpensRange f _)).mpr (h𝒰 i))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f45eb43f9d01633687caca22cbd5b9bb380d15b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
