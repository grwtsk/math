# six_eq_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55725ea4-d4c5-2489-3f1d-846b8df3f7fa",
  "kind": "lemma",
  "lexical_name": "six_eq_seven",
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
  "slug": "six-eq-seven--c6cf51a717173ab731c4c848",
  "source": {
    "blob": "fbb4e845361b74b8c309fec1ed2ae7707355f2f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6cf51a717173ab731c4c848ba77c334f91b1e15b23837f17a270378722b7ef3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55725ea4-d4c5-2489-3f1d-846b8df3f7fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma six_eq_seven : 6 = 7 := sorry

-- This test also verifies that we are removing duplicate results;
-- it previously also reported `Nat.cast_ofNat`
/--
info: Try this: rw [six_eq_seven]
-- ∀ (x : ℕ), x ≤ 7
---
info: Try this: rw [← @Nat.cast_eq_ofNat]
-- ∀ (x : ℕ), x ≤ ↑6
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb4e845361b74b8c309fec1ed2ae7707355f2f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
