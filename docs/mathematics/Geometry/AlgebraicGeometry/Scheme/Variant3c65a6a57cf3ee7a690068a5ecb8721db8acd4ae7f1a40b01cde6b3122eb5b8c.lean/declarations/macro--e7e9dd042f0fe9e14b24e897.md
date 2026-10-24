# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cbe6d5e514c4177299276a5144c90567539e2e20690ae5877421fa704ea8a7a",
  "kind": "macro",
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
  "slug": "macro--e7e9dd042f0fe9e14b24e897",
  "source": {
    "blob": "c6413c91e5acbaee81d56b987c765cce0d34c551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 267,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7e9dd042f0fe9e14b24e89765e919690a43dfb8fc6605d08789bdf2d7cbcb48",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cbe6d5e514c4177299276a5144c90567539e2e20690ae5877421fa704ea8a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro "mem_tac" : tactic =>
  `(tactic| first | exact pow_mem_graded _ (SetLike.coe_mem _) | exact natCast_mem_graded _ _ |
    exact pow_mem_graded _ f_deg)

/-- The function from `Spec A⁰_f` to `Proj|D(f)` is defined by `q ↦ {a | aᵢᵐ/fⁱ ∈ q}`, i.e. sending
`q` a prime ideal in `A⁰_f` to the homogeneous prime relevant ideal containing only and all the
elements `a : A` such that for every `i`, the degree 0 element formed by dividing the `m`-th power
of the `i`-th projection of `a` by the `i`-th power of the degree-`m` homogeneous element `f`,
lies in `q`.

The set `{a | aᵢᵐ/fⁱ ∈ q}`
* is an ideal, as proved in `carrier.asIdeal`;
* is homogeneous, as proved in `carrier.asHomogeneousIdeal`;
* is prime, as proved in `carrier.asIdeal.prime`;
* is relevant, as proved in `carrier.relevant`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6413c91e5acbaee81d56b987c765cce0d34c551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
