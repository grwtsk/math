# IsScalarTower.continuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5dd13c8-7986-c583-5ed9-cc36f015822a",
  "kind": "lemma",
  "lexical_name": "IsScalarTower.continuousSMul",
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
  "slug": "isscalartower-continuoussmul--436c637416a128aef8700566",
  "source": {
    "blob": "517de63ef204a2db408e4bf2356e8f96c3479e7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:436c637416a128aef8700566afc3a1a7d1de3628e8f3b3b85566053e31fd7bf3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5dd13c8-7986-c583-5ed9-cc36f015822a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsScalarTower.continuousSMul {M : Type*} (N : Type*) {α : Type*} [Monoid N] [SMul M N]
    [MulAction N α] [SMul M α] [IsScalarTower M N α] [TopologicalSpace M] [TopologicalSpace N]
    [TopologicalSpace α] [ContinuousSMul M N] [ContinuousSMul N α] : ContinuousSMul M α :=
  { continuous_smul := by
      suffices Continuous (fun p : M × α ↦ (p.1 • (1 : N)) • p.2) by simpa
      fun_prop }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variant608757652911c69be70d8610bc664cb1a877541419af65859d4f302c2bbe4f8f.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517de63ef204a2db408e4bf2356e8f96c3479e7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
