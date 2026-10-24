# chebyshevTheta_le_primeCounting_mul_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9866937cfbda9bbcfd3a690e9e3004e87d20777",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:177e1804-dca8-d2c3-c805-0fad0f4b127c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9aa45f77-6a30-0408-e3c2-57f390d68592",
  "kind": "theorem",
  "lexical_name": "chebyshevTheta_le_primeCounting_mul_log",
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
  "slug": "chebyshevtheta-le-primecounting-mul-log--ffd6efffd329576db006da3c",
  "source": {
    "blob": "f9866937cfbda9bbcfd3a690e9e3004e87d20777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd6efffd329576db006da3c495f746c52cea40a4ee94e7b499a6caf8a87ebfc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aa45f77-6a30-0408-e3c2-57f390d68592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshevTheta_le_primeCounting_mul_log
    (N : Nat) :
    chebyshevTheta N ≤ (primeCounting N : Real) * Real.log N := by
  unfold chebyshevTheta primeCounting
  calc
    (∑ p ∈ primesUpTo N, Real.log p)
        ≤ ∑ _p ∈ primesUpTo N, Real.log N := by
          refine Finset.sum_le_sum ?_
          intro p hp
          exact
            Real.log_le_log
              (by exact_mod_cast (primesUpTo_prime hp).pos)
              (by exact_mod_cast (mem_primesUpTo_iff.mp hp).2)
    _ = ((primesUpTo N).card : Real) * Real.log N := by
          simp [Finset.sum_const, nsmul_eq_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9866937cfbda9bbcfd3a690e9e3004e87d20777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
