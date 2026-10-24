# factorization_support_subset_primesUpTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69411cb6-779b-c804-9f38-a58c5fb4b19a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26b19d22-c06f-df8c-db56-7d5db6ba60df",
  "kind": "theorem",
  "lexical_name": "factorization_support_subset_primesUpTo",
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
  "slug": "factorization-support-subset-primesupto--42d64f1a402f7e540666b841",
  "source": {
    "blob": "0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42d64f1a402f7e540666b841989cd429d3113b3bbda3c8160d6d578b025fe947",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26b19d22-c06f-df8c-db56-7d5db6ba60df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_support_subset_primesUpTo
    {n N p : Nat}
    (hnpos : 0 < n)
    (hnN : n ≤ N)
    (hp : Nat.factorization n p ≠ 0) :
    p ∈ primesUpTo N := by
  have hnot := (Nat.factorization_eq_zero_iff n p).not.mp hp
  have hprime : Nat.Prime p := by
    by_contra hnp
    exact hnot (Or.inl hnp)
  have hpdvd : p ∣ n := by
    by_contra hndvd
    exact hnot (Or.inr (Or.inl hndvd))
  exact prime_factor_mem_primesUpTo_of_dvd_le hprime hpdvd hnpos hnN

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
