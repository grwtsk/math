# IsPrimitive.Int.irreducible_iff_irreducible_map_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a98d2c6-98e2-779d-7c5a-f97b4824f8b5",
  "kind": "theorem",
  "lexical_name": "IsPrimitive.Int.irreducible_iff_irreducible_map_cast",
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
  "slug": "isprimitive-int-irreducible-iff-irreducible-map-cast--215972ebda449bfb66e22040",
  "source": {
    "blob": "4f9dcefc7d3e77b284d02e41a34dec5c44049323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 320,
    "path": "GRWTSK/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:215972ebda449bfb66e22040335ae4c5aeaf0fb091f8a036b5750f2a569fd669",
  "verification": {
    "reference": "docs/verification/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a98d2c6-98e2-779d-7c5a-f97b4824f8b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimitive.Int.irreducible_iff_irreducible_map_cast {p : ℤ[X]} (hp : p.IsPrimitive) :
    Irreducible p ↔ Irreducible (p.map (Int.castRingHom ℚ)) :=
  hp.irreducible_iff_irreducible_map_fraction_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f9dcefc7d3e77b284d02e41a34dec5c44049323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
