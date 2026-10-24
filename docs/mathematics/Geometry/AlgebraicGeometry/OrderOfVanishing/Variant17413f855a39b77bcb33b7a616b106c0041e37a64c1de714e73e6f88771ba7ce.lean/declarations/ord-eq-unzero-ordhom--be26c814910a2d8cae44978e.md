# ord_eq_unzero_ordHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f03de4b1-b5f0-6268-f837-5a15e274cac4",
  "kind": "lemma",
  "lexical_name": "ord_eq_unzero_ordHom",
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
  "slug": "ord-eq-unzero-ordhom--be26c814910a2d8cae44978e",
  "source": {
    "blob": "7ae200a452b33a10cce4a7d697c0e194a821fe49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 79,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be26c814910a2d8cae44978e26bae8410e411c7cbcd73354cd702c798e60f7e2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f03de4b1-b5f0-6268-f837-5a15e274cac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ord_eq_unzero_ordHom {x : X} (hx : coheight x = 1) {f : X.functionField} (hf : f ≠ 0) :
    ord f x = (WithZero.unzero ((map_ne_zero (ordHom x hx)).mpr hf)).toAdd := by
  simp [ord, hx, unzeroD_eq_unzero ((map_ne_zero (ordHom x hx)).mpr hf)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae200a452b33a10cce4a7d697c0e194a821fe49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
