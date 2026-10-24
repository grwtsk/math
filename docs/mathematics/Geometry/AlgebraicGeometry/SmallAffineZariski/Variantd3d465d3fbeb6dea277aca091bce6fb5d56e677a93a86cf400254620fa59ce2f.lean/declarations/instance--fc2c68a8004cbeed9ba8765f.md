# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28eb6c64c5aa0cb84865c1688eaddf084f454d1fbe1af69175b626ad2722bf80",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fc2c68a8004cbeed9ba8765f",
  "source": {
    "blob": "c80ae9d09ae1705fd7332c94c8401804d7b0bd93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 83,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc2c68a8004cbeed9ba8765ff1a20a31aad86a5d353f7e1e531b93196274ed9f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28eb6c64c5aa0cb84865c1688eaddf084f454d1fbe1af69175b626ad2722bf80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (toOpensFunctor X).IsLocallyFull (Opens.grothendieckTopology X) where
  functorPushforward_imageSieve_mem := by
    intro U V h x hx
    obtain ⟨f, hfU, hxf⟩ := V.2.exists_basicOpen_le ⟨x, hx⟩ (h.le hx)
    exact ⟨X.basicOpen f, homOfLE hfU, ⟨V.basicOpen f,
      ⟨_, (X.basicOpen_res f h.op).trans (inf_eq_right.mpr hfU)⟩, 𝟙 _,
      ⟨⟨f, rfl⟩, rfl⟩, rfl⟩, hxf⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80ae9d09ae1705fd7332c94c8401804d7b0bd93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
