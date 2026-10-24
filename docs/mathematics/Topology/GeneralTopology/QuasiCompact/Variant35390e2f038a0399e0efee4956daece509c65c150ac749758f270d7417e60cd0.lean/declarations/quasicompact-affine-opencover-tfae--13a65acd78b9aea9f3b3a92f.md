# QuasiCompact.affine_openCover_tFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e831017f254a9020ca5d9d84886c006d9492e1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec7480dd-3ea6-6fb9-9aa1-abaa3a33ebcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d37a5fa-9d23-88c0-72ab-8b01a75fe99e",
  "kind": "theorem",
  "lexical_name": "QuasiCompact.affine_openCover_tFAE",
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
  "slug": "quasicompact-affine-opencover-tfae--13a65acd78b9aea9f3b3a92f",
  "source": {
    "blob": "6e831017f254a9020ca5d9d84886c006d9492e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13a65acd78b9aea9f3b3a92fcbc4deaac1f8b99d13a0509f8d78676c60a575fa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d37a5fa-9d23-88c0-72ab-8b01a75fe99e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuasiCompact.affine_openCover_tFAE {X Y : Scheme.{u}} (f : X ⟶ Y) :
    List.TFAE
      [QuasiCompact f,
        ∃ (𝒰 : Scheme.OpenCover.{u} Y) (_ : ∀ i, IsAffine (𝒰.obj i)),
          ∀ i : 𝒰.J, CompactSpace (pullback f (𝒰.map i)).carrier,
        ∀ (𝒰 : Scheme.OpenCover.{u} Y) [∀ i, IsAffine (𝒰.obj i)] (i : 𝒰.J),
          CompactSpace (pullback f (𝒰.map i)).carrier,
        ∀ {U : Scheme} (g : U ⟶ Y) [IsAffine U] [IsOpenImmersion g],
          CompactSpace (pullback f g).carrier,
        ∃ (ι : Type u) (U : ι → Opens Y.carrier) (_ : iSup U = ⊤) (_ : ∀ i, IsAffineOpen (U i)),
          ∀ i, CompactSpace (f.1.base ⁻¹' (U i).1)] :=
  quasiCompact_eq_affineProperty.symm ▸ QuasiCompact.affineProperty_isLocal.affine_openCover_TFAE f
#align algebraic_geometry.quasi_compact.affine_open_cover_tfae AlgebraicGeometry.QuasiCompact.affine_openCover_tFAE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e831017f254a9020ca5d9d84886c006d9492e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
