# QuasiCompact.affineProperty_stableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a7afacb-7714-16ae-9bea-50425cbb838b",
  "kind": "theorem",
  "lexical_name": "QuasiCompact.affineProperty_stableUnderBaseChange",
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
  "slug": "quasicompact-affineproperty-stableunderbasechange--122fae147aa0791427a908ba",
  "source": {
    "blob": "05399ce62aa03a6bf827e5e15e46066b6be70e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 257,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:122fae147aa0791427a908ba556e97bf67858df3ce3dfd51ffd537d7f2d60be5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a7afacb-7714-16ae-9bea-50425cbb838b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuasiCompact.affineProperty_stableUnderBaseChange :
    QuasiCompact.affineProperty.StableUnderBaseChange := by
  intro X Y S _ _ f g h
  rw [QuasiCompact.affineProperty] at h ⊢
  skip
  let 𝒰 := Scheme.Pullback.openCoverOfRight Y.affineCover.finiteSubcover f g
  have : Finite 𝒰.J := by dsimp; infer_instance
  have : ∀ i, CompactSpace (𝒰.obj i).carrier := by intro i; dsimp; infer_instance
  exact 𝒰.compactSpace
#align algebraic_geometry.quasi_compact.affine_property_stable_under_base_change AlgebraicGeometry.QuasiCompact.affineProperty_stableUnderBaseChange

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05399ce62aa03a6bf827e5e15e46066b6be70e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
