# lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "920e0027760d6d79581119139254f9c6a08848d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7020f653-2823-ece7-de40-90d32bc4812a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5a0aef6-8ef1-98f8-40f3-5aa1da778c9a",
  "kind": "theorem",
  "lexical_name": "lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic_left",
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
  "slug": "lift-rank-right-mul-lift-adjoin-rank-eq-of-isalgebraic-left--9f8fd0e98ab13a3c732ecab7",
  "source": {
    "blob": "920e0027760d6d79581119139254f9c6a08848d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 448,
    "path": "GRWTSK/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f8fd0e98ab13a3c732ecab778b455cee467346c273101ab1185f90ed2f7f7b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5a0aef6-8ef1-98f8-40f3-5aa1da778c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic_left (H : A.LinearDisjoint L)
    [Algebra.IsAlgebraic F A] :
    Cardinal.lift.{v} (Module.rank F L) * Cardinal.lift.{w} (Module.rank (adjoin L (A : Set E)) E) =
      Cardinal.lift.{w} (Module.rank A E) :=
  H.lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic (.inl ‹_›)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `920e0027760d6d79581119139254f9c6a08848d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
