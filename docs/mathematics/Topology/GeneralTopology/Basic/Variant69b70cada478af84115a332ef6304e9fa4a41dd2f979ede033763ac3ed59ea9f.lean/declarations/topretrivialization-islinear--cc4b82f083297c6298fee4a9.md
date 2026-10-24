# toPretrivialization.isLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96b5407b8e502084c97ecc30ac5eb7c4f83d4822ef7d5b343a31c8cb1f0f620f",
  "kind": "instance",
  "lexical_name": "toPretrivialization.isLinear",
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
  "slug": "topretrivialization-islinear--cc4b82f083297c6298fee4a9",
  "source": {
    "blob": "6dccfa7168a9adea851592463256a7e13d96a346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc4b82f083297c6298fee4a99ba4b99ad7ace2d88fe4a96a3c34bf34a8f5d727",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96b5407b8e502084c97ecc30ac5eb7c4f83d4822ef7d5b343a31c8cb1f0f620f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toPretrivialization.isLinear [AddCommMonoid F] [Module R F] [∀ x, AddCommMonoid (E x)]
    [∀ x, Module R (E x)] [e.IsLinear R] : e.toPretrivialization.IsLinear R :=
  { (‹_› : e.IsLinear R) with }
#align trivialization.to_pretrivialization.is_linear Trivialization.toPretrivialization.isLinear

variable [AddCommMonoid F] [Module R F] [∀ x, AddCommMonoid (E x)] [∀ x, Module R (E x)]

/-- A trivialization for a vector bundle defines linear equivalences between the
fibers and the model space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dccfa7168a9adea851592463256a7e13d96a346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
