# noZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fd72b21039cab525dc05ffdfeabca65c9685b091dd4561888dd5ee175820088",
  "kind": "instance",
  "lexical_name": "noZeroDivisors",
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
  "slug": "nozerodivisors--3e7223ebdb3d760547a7d1c6",
  "source": {
    "blob": "b048da177ab4cc035adde2fde70898c04f7207e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 96,
    "path": "GRWTSK/Algebra/Defs/Variant52c8137a6323f8ac503614de11e6b86dddcfffe05a13c57b9d6b932221cb6386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e7223ebdb3d760547a7d1c672e72b59373639267297c10cb518b3aa77b61a0a",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant52c8137a6323f8ac503614de11e6b86dddcfffe05a13c57b9d6b932221cb6386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fd72b21039cab525dc05ffdfeabca65c9685b091dd4561888dd5ee175820088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance noZeroDivisors [NoZeroDivisors R] : NoZeroDivisors s :=
  Subtype.coe_injective.noZeroDivisors Subtype.val rfl fun _ _ => rfl

/-- The natural non-unital ring hom from a non-unital subsemiring of a non-unital semiring `R` to
`R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant52c8137a6323f8ac503614de11e6b86dddcfffe05a13c57b9d6b932221cb6386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant52c8137a6323f8ac503614de11e6b86dddcfffe05a13c57b9d6b932221cb6386.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b048da177ab4cc035adde2fde70898c04f7207e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
