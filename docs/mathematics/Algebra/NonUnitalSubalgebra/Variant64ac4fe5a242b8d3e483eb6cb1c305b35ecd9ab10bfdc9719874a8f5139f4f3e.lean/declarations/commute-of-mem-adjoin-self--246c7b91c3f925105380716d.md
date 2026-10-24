# commute_of_mem_adjoin_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d7d369e-5427-457b-f7d1-c06a0cea9010",
  "kind": "lemma",
  "lexical_name": "commute_of_mem_adjoin_self",
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
  "slug": "commute-of-mem-adjoin-self--246c7b91c3f925105380716d",
  "source": {
    "blob": "cb72f551e23bdeb487b62a552da51a9db639e2df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1277,
    "line": 1271,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Variant64ac4fe5a242b8d3e483eb6cb1c305b35ecd9ab10bfdc9719874a8f5139f4f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:246c7b91c3f925105380716dbb7c08c2d67ce86b2949a18a58a30c66922323b4",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Variant64ac4fe5a242b8d3e483eb6cb1c305b35ecd9ab10bfdc9719874a8f5139f4f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d7d369e-5427-457b-f7d1-c06a0cea9010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1271–1277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma commute_of_mem_adjoin_self {a b : A} [IsStarNormal a] (hb : b ∈ adjoin R {a}) :
    Commute a b :=
  commute_of_mem_adjoin_singleton_of_commute hb rfl (isStarNormal_iff a |>.mp inferInstance).symm

variable (R) in
/-- If all elements of `s : Set A` are normal, commute pairwise, and commute pairwise with the
`star` of elements in this set, then `adjoin R s` is commutative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Variant64ac4fe5a242b8d3e483eb6cb1c305b35ecd9ab10bfdc9719874a8f5139f4f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Variant64ac4fe5a242b8d3e483eb6cb1c305b35ecd9ab10bfdc9719874a8f5139f4f3e.lean#L1271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb72f551e23bdeb487b62a552da51a9db639e2df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
