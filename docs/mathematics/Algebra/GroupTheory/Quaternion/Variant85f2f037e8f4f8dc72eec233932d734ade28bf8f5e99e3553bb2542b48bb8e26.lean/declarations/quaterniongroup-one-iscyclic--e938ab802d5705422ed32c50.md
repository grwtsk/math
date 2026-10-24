# quaternionGroup_one_isCyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62ca20bb-012d-97a5-401f-f11310e284b1",
  "kind": "theorem",
  "lexical_name": "quaternionGroup_one_isCyclic",
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
  "slug": "quaterniongroup-one-iscyclic--e938ab802d5705422ed32c50",
  "source": {
    "blob": "6bec925b9a2a3d0350b7c9263a651c0290bf74e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 213,
    "path": "GRWTSK/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e938ab802d5705422ed32c50a7aa5381c9d20179591c98b9f45bc89a1872f01c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62ca20bb-012d-97a5-401f-f11310e284b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quaternionGroup_one_isCyclic : IsCyclic (QuaternionGroup 1) := by
  apply isCyclic_of_orderOf_eq_card
  · rw [Nat.card_eq_fintype_card, card, mul_one]
    exact orderOf_xa 0

/-- If `0 < n`, then `a 1` has order `2 * n`.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quaternion/Variant85f2f037e8f4f8dc72eec233932d734ade28bf8f5e99e3553bb2542b48bb8e26.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bec925b9a2a3d0350b7c9263a651c0290bf74e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
