# ramificationIdx_eq_multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96079e3cda86febb2744280cb60f68eba52e5d01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a4f673222192063886c5381f0199aaf056b396e99308418ca004e781c22e411.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93848c3c-91d4-dacf-4afb-01c60fab6db6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:111bd30f-6120-a51c-a85c-7699242d7a61",
  "kind": "theorem",
  "lexical_name": "ramificationIdx_eq_multiplicity",
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
  "slug": "ramificationidx-eq-multiplicity--b32aa7a1dd59140577d7172f",
  "source": {
    "blob": "96079e3cda86febb2744280cb60f68eba52e5d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 186,
    "path": "GRWTSK/Algebra/Ramification/Variant8a4f673222192063886c5381f0199aaf056b396e99308418ca004e781c22e411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b32aa7a1dd59140577d7172f8c990d1348ce312f14b324fa13c96b39e0de9eab",
  "verification": {
    "reference": "docs/verification/Algebra/Ramification/Variant8a4f673222192063886c5381f0199aaf056b396e99308418ca004e781c22e411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111bd30f-6120-a51c-a85c-7699242d7a61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdx_eq_multiplicity [IsDedekindDomain S]
    [q.IsPrime] [q.LiesOver p] (hp : p.map (algebraMap R S) ≠ ⊥) :
    q.ramificationIdx R = multiplicity q (p.map (algebraMap R S)) := by
  have hq : q ≠ ⊥ := ne_bot_of_le_ne_bot hp (map_le_of_le_comap (q.over_def p).le)
  rw [ramificationIdx_eq_normalizedFactors_count p q hp,
    multiplicity_eq_of_emultiplicity_eq_some (emultiplicity_eq_count_normalizedFactors
      (prime_of_isPrime hq inferInstance).irreducible hp), normalize_eq]

end IsDedekindDomain

/-- See `ramificationIdx_tower` for a version that does not assume primality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ramification/Variant8a4f673222192063886c5381f0199aaf056b396e99308418ca004e781c22e411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ramification/Variant8a4f673222192063886c5381f0199aaf056b396e99308418ca004e781c22e411.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96079e3cda86febb2744280cb60f68eba52e5d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
