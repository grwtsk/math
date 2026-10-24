# salient_iff_inter_neg_eq_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1b6d530919a75466adbe05a09c95e28dccf9267",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/595ae9bbdaf96925c28253130da6dbe9fb506b4a5b2c15b606535765dcc4ca49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:766cbb94-94e9-7757-8425-e793af87705a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4babac7-dec0-4b95-4139-6a4fe78e7eaf",
  "kind": "lemma",
  "lexical_name": "salient_iff_inter_neg_eq_singleton",
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
  "slug": "salient-iff-inter-neg-eq-singleton--19bc4ea106f04176754f1ab6",
  "source": {
    "blob": "b1b6d530919a75466adbe05a09c95e28dccf9267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 389,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variant595ae9bbdaf96925c28253130da6dbe9fb506b4a5b2c15b606535765dcc4ca49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19bc4ea106f04176754f1ab6136ee639e9541510beb1b2a01cb812433a5ef402",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointed/Variant595ae9bbdaf96925c28253130da6dbe9fb506b4a5b2c15b606535765dcc4ca49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4babac7-dec0-4b95-4139-6a4fe78e7eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma salient_iff_inter_neg_eq_singleton (C : PointedCone R E) :
    (C : ConvexCone R E).Salient ↔ (C ∩ -C : Set E) = {0} := by
  simp [ConvexCone.Salient, Set.eq_singleton_iff_unique_mem, not_imp_not]

end Salient

section DirectedOrderRing

variable {R : Type*} [Ring R] [PartialOrder R] [IsDirectedOrder R] [IsOrderedRing R]
variable {E : Type*} [AddCommGroup E] [Module R E]
variable {C : PointedCone R E} {x : E}

/-- A cone that is closed under negation forms a submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointed/Variant595ae9bbdaf96925c28253130da6dbe9fb506b4a5b2c15b606535765dcc4ca49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointed/Variant595ae9bbdaf96925c28253130da6dbe9fb506b4a5b2c15b606535765dcc4ca49.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1b6d530919a75466adbe05a09c95e28dccf9267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
