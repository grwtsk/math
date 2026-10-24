# dense_or_cyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f16712eb-fa3c-2ea3-6160-b7b9f325a9f8",
  "kind": "theorem",
  "lexical_name": "dense_or_cyclic",
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
  "slug": "dense-or-cyclic--5ec3dd2bdb6f50ec681f2d49",
  "source": {
    "blob": "ab4fca9bd8d79f5ab9c56864836f66c39389e5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 75,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ec3dd2bdb6f50ec681f2d49bb1fde04260baf40b750f3bf2604d3e8db275c2e",
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

Occurrence: `result:f16712eb-fa3c-2ea3-6160-b7b9f325a9f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_or_cyclic (S : AddSubgroup G) : Dense (S : Set G) ∨ ∃ a : G, S = closure {a} := by
  refine (em _).imp (dense_of_not_isolated_zero S) fun h => ?_
  push_neg at h
  rcases h with ⟨ε, ε0, hε⟩
  exact cyclic_of_isolated_zero ε0 (disjoint_left.2 hε)
#align real.subgroup_dense_or_cyclic AddSubgroup.dense_or_cyclicₓ
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4fca9bd8d79f5ab9c56864836f66c39389e5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
