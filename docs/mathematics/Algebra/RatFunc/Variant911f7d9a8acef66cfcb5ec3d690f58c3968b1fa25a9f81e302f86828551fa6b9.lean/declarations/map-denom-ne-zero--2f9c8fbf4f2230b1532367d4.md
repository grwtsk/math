# map_denom_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1433fc7-e4c3-e1f0-2efa-26d2f5236d48",
  "kind": "theorem",
  "lexical_name": "map_denom_ne_zero",
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
  "slug": "map-denom-ne-zero--2f9c8fbf4f2230b1532367d4",
  "source": {
    "blob": "8d13c6afd04fada6eb5221b3c4e8041d1403e570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1356,
    "line": 1352,
    "path": "GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f9c8fbf4f2230b1532367d4295f310abb0d2461159d351d8b4ea81a8a857b85",
  "verification": {
    "reference": "docs/verification/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1433fc7-e4c3-e1f0-2efa-26d2f5236d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1352–1356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_denom_ne_zero {L F : Type*} [Zero L] [ZeroHomClass F K[X] L] (φ : F)
    (hφ : Function.Injective φ) (f : RatFunc K) : φ f.denom ≠ 0 := fun H =>
  (denom_ne_zero f) ((map_eq_zero_iff φ hφ).mp H)
#align ratfunc.map_denom_ne_zero RatFunc.map_denom_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean#L1352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d13c6afd04fada6eb5221b3c4e8041d1403e570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
