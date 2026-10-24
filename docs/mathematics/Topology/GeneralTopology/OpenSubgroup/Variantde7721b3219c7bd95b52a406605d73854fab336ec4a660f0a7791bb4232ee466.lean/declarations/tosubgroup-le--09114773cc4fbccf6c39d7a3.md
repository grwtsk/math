# toSubgroup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c0eb877-524c-6b8f-b7c8-b49d820d5716",
  "kind": "theorem",
  "lexical_name": "toSubgroup_le",
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
  "slug": "tosubgroup-le--09114773cc4fbccf6c39d7a3",
  "source": {
    "blob": "b8e5907f3b2d9576a9f3932072a436f37e48181e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantde7721b3219c7bd95b52a406605d73854fab336ec4a660f0a7791bb4232ee466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09114773cc4fbccf6c39d7a3ffe947fd9da36522e28d5fcc88bacf1e0f0f839a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenSubgroup/Variantde7721b3219c7bd95b52a406605d73854fab336ec4a660f0a7791bb4232ee466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c0eb877-524c-6b8f-b7c8-b49d820d5716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSubgroup_le : (U : Subgroup G) ≤ (V : Subgroup G) ↔ U ≤ V :=
  Iff.rfl

variable {N : Type*} [Group N] [TopologicalSpace N]

/-- The preimage of an `OpenSubgroup` along a continuous `Monoid` homomorphism
  is an `OpenSubgroup`. -/
@[to_additive /-- The preimage of an `OpenAddSubgroup` along a continuous `AddMonoid` homomorphism
is an `OpenAddSubgroup`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenSubgroup/Variantde7721b3219c7bd95b52a406605d73854fab336ec4a660f0a7791bb4232ee466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantde7721b3219c7bd95b52a406605d73854fab336ec4a660f0a7791bb4232ee466.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8e5907f3b2d9576a9f3932072a436f37e48181e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
