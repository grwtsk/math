# dense_of_no_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35026d13-b599-d5db-4265-917f4cfbe62d",
  "kind": "theorem",
  "lexical_name": "dense_of_no_min",
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
  "slug": "dense-of-no-min--b2a0fa602bd49f9179b82e0a",
  "source": {
    "blob": "ab4fca9bd8d79f5ab9c56864836f66c39389e5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2a0fa602bd49f9179b82e0ad849f53a9f8ed3b984169f37830b264b173d7ac2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35026d13-b599-d5db-4265-917f4cfbe62d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_of_no_min (S : AddSubgroup G) (hbot : S ≠ ⊥)
    (H : ¬∃ a : G, IsLeast { g : G | g ∈ S ∧ 0 < g } a) : Dense (S : Set G) := by
  refine S.dense_of_not_isolated_zero fun ε ε0 => ?_
  contrapose! H
  exact exists_isLeast_pos hbot ε0 (disjoint_left.2 H)
#align real.subgroup_dense_of_no_min AddSubgroup.dense_of_no_minₓ

/-- An additive subgroup of an archimedean linear ordered additive commutative group `G` with order
topology either is dense in `G` or is a cyclic subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4fca9bd8d79f5ab9c56864836f66c39389e5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
