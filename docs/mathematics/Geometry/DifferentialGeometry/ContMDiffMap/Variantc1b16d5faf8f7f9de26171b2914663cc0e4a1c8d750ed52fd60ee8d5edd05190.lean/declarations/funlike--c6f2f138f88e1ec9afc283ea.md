# funLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a66771660b4e8905c69f8995c422212dad9561e049e0f4e0b42a4301ecd9b677",
  "kind": "instance",
  "lexical_name": "funLike",
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
  "slug": "funlike--c6f2f138f88e1ec9afc283ea",
  "source": {
    "blob": "00feb226f9916c802f08153d0da60478b57d041a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 52,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6f2f138f88e1ec9afc283ea2f893ec212ac84f2d71013d221abe0048febf6e5",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a66771660b4e8905c69f8995c422212dad9561e049e0f4e0b42a4301ecd9b677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance funLike : FunLike C^n⟮I, M; I', M'⟯ M fun _ => M' where
  coe := Subtype.val
  coe_injective' := Subtype.coe_injective
#align cont_mdiff_map.fun_like ContMDiffMap.funLike

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00feb226f9916c802f08153d0da60478b57d041a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
