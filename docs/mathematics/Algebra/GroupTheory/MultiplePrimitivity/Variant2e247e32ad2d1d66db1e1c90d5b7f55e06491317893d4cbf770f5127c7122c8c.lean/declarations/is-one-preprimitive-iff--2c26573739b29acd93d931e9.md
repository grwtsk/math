# is_one_preprimitive_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:169a93e2-5fea-2604-b96b-bfe215fef251",
  "kind": "theorem",
  "lexical_name": "is_one_preprimitive_iff",
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
  "slug": "is-one-preprimitive-iff--2c26573739b29acd93d931e9",
  "source": {
    "blob": "7c6d8cdec8221628505254ecf73d93f1dbf22864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c26573739b29acd93d931e9d152d8c8b7998b746fb0713f094a9a78bc547bd9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:169a93e2-5fea-2604-b96b-bfe215fef251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_one_preprimitive_iff :
    IsMultiplyPreprimitive M α 1 ↔ IsPreprimitive M α := by
  constructor
  · intro H1
    rw [← isPreprimitive_of_fixingSubgroup_empty_iff]
    apply H1.isPreprimitive_ofFixingSubgroup (by simp)
  · intro h
    rw [isMultiplyPreprimitive_iff]
    constructor
    · exact is_one_pretransitive_iff.mpr h.toIsPretransitive
    · simpa using isPreprimitive_of_fixingSubgroup_empty_iff.mpr h

/-- The action of `stabilizer M a` is one-less preprimitive. -/
@[to_additive /-- The action of `stabilizer M a` is one-less preprimitive. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6d8cdec8221628505254ecf73d93f1dbf22864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
