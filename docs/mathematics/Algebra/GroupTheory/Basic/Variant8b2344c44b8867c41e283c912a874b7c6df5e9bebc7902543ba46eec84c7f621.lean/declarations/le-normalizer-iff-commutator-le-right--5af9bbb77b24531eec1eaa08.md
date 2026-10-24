# le_normalizer_iff_commutator_le_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbecce5c2d20c99bc3ff753ac4d84b6e7d841052",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19a24d94-d69d-d0bd-2c5d-70cc14a07c8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b8becf1-9585-41fb-51a0-c9db3c92fe34",
  "kind": "theorem",
  "lexical_name": "le_normalizer_iff_commutator_le_right",
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
  "slug": "le-normalizer-iff-commutator-le-right--5af9bbb77b24531eec1eaa08",
  "source": {
    "blob": "cbecce5c2d20c99bc3ff753ac4d84b6e7d841052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 269,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5af9bbb77b24531eec1eaa084435c8791b90da75706aeed395988f8ec38cdedc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b8becf1-9585-41fb-51a0-c9db3c92fe34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_normalizer_iff_commutator_le_right : H ≤ normalizer K ↔ ⁅H, K⁆ ≤ K := by
  refine le_normalizer_iff.trans ⟨fun hH ↦ ?_, fun hH h hh k hk ↦ ?_⟩
  · exact commutator_le.mpr fun h hh k hk ↦ mul_mem (hH h hh k hk) (inv_mem hk)
  · exact (mul_mem_cancel_right <| inv_mem hk).mp <| hH <| commutator_mem_commutator hh hk

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbecce5c2d20c99bc3ff753ac4d84b6e7d841052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
