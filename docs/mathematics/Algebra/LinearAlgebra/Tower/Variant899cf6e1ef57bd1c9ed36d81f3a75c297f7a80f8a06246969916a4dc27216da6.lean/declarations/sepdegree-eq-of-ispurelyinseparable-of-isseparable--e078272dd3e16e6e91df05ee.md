# sepDegree_eq_of_isPurelyInseparable_of_isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1339509ed50fd4e87fb3a975580e15238b694756",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0970b6aa-51ed-929b-7a8d-f65bfeaa4bcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d34a0f6-deca-9fc7-1f64-387ad05e0ee9",
  "kind": "lemma",
  "lexical_name": "sepDegree_eq_of_isPurelyInseparable_of_isSeparable",
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
  "slug": "sepdegree-eq-of-ispurelyinseparable-of-isseparable--e078272dd3e16e6e91df05ee",
  "source": {
    "blob": "1339509ed50fd4e87fb3a975580e15238b694756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e078272dd3e16e6e91df05ee16de0bcd7effb33178402379595c9a16cb8454a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d34a0f6-deca-9fc7-1f64-387ad05e0ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sepDegree_eq_of_isPurelyInseparable_of_isSeparable
    [IsPurelyInseparable F E] [Algebra.IsSeparable E K] : sepDegree F K = Module.rank E K := by
  have h := (separableClosure F K).linearDisjoint_of_isPurelyInseparable_of_isSeparable E
    |>.adjoin_rank_eq_rank_left_of_isAlgebraic_left |>.symm
  rwa [separableClosure.adjoin_eq_of_isAlgebraic_of_isSeparable K, rank_top'] at h

/-- If `K / E / F` is a field extension tower, such that `E / F` is separable,
then $[E:F] [K:E]_s = [K:F]_s$.
It is a special case of `Field.lift_sepDegree_mul_lift_sepDegree_of_isAlgebraic`, and is an
intermediate result used to prove it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variant899cf6e1ef57bd1c9ed36d81f3a75c297f7a80f8a06246969916a4dc27216da6.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1339509ed50fd4e87fb3a975580e15238b694756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
