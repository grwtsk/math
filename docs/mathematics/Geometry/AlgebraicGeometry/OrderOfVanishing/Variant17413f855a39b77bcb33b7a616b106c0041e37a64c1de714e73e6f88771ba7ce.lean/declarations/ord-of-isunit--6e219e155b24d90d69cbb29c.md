# ord_of_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:509a0eb5-6146-dfde-655b-affbdbf58d9e",
  "kind": "lemma",
  "lexical_name": "ord_of_isUnit",
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
  "slug": "ord-of-isunit--6e219e155b24d90d69cbb29c",
  "source": {
    "blob": "7ae200a452b33a10cce4a7d697c0e194a821fe49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 96,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e219e155b24d90d69cbb29c8038fc1573fe6c71be5da606db59901992bd6fa9",
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

Occurrence: `result:509a0eb5-6146-dfde-655b-affbdbf58d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ord_of_isUnit {U : X.Opens} [Nonempty U] {f : Γ(X, U)} (hf : IsUnit f) {x : X}
    (hx' : x ∈ U) : ord (X.germToFunctionField U f) x = 0 := by
  by_cases! hx : coheight x ≠ 1
  · simp [hx]
  simp [map_ne_zero_iff, germToFunctionField_injective, IsUnit.ne_zero hf,
    ord_eq_iff hx, ordHom_of_isUnit hf hx hx']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OrderOfVanishing/Variant17413f855a39b77bcb33b7a616b106c0041e37a64c1de714e73e6f88771ba7ce.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae200a452b33a10cce4a7d697c0e194a821fe49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
