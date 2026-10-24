# stalkMap_germ_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f476671-9cd0-7c0c-1caf-35b0cb616e71",
  "kind": "lemma",
  "lexical_name": "stalkMap_germ_apply",
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
  "slug": "stalkmap-germ-apply--9675686c5aee6e62183c38cc",
  "source": {
    "blob": "28a8477ec14111170a566fd8e0b59db66b55fefa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 893,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9675686c5aee6e62183c38cc376ddc99be425ba5891ce401d7dce75e5358ca0a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f476671-9cd0-7c0c-1caf-35b0cb616e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 893–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stalkMap_germ_apply (U : Y.Opens) (x : X) (hx : f.base x ∈ U) (y) :
    f.stalkMap x (Y.presheaf.germ _ (f.base x) hx y) =
      X.presheaf.germ (f ⁻¹ᵁ U) x hx (f.app U y) :=
  PresheafedSpace.stalkMap_germ_apply f.toPshHom U x hx y

/-- If `x = y`, the stalk maps are isomorphic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3780876acd179c4618eba37d6b007c97b3d39e8b5e61888cf054bf5f3b4879a4.lean#L893).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a8477ec14111170a566fd8e0b59db66b55fefa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
