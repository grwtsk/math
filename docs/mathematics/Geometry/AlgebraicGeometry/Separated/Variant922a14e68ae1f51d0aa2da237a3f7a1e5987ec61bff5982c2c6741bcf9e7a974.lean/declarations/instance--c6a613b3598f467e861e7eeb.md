# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2716b3164d4deb84b9ee86fc73f2303c93faca68bb50657f411dbd12368448eb",
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
  "slug": "instance--c6a613b3598f467e861e7eeb",
  "source": {
    "blob": "9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 209,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6a613b3598f467e861e7eeb14abd993e098110344af96b4f411c884e70e162f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2716b3164d4deb84b9ee86fc73f2303c93faca68bb50657f411dbd12368448eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {I J : X.IdealSheafData} (h : I ≤ J) : IsClosedImmersion (I.inclusion h) := by
  have : IsClosedImmersion (I.inclusion h ≫ I.subschemeι) := by
    simp only [Scheme.IdealSheafData.inclusion_subschemeι]
    infer_instance
  exact .of_comp _ I.subschemeι

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
