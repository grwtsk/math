# ordered_factorization_by_topology_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cc7dea2c6c2915f16b02edeaabfa00f8f17e2f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 14,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbaf6ea1-7273-a900-fc4a-991a04c3d017",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4213a6f-77c8-673d-d3ef-bb40de193476",
  "kind": "theorem",
  "lexical_name": "ordered_factorization_by_topology_prime",
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
  "slug": "ordered-factorization-by-topology-prime--89422d0b089efa3ab8bcf897",
  "source": {
    "blob": "3cc7dea2c6c2915f16b02edeaabfa00f8f17e2f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 14,
    "path": "GRWTSK/Algebra/LinearAlgebra/UniqueFactorization/Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89422d0b089efa3ab8bcf8972c0d5859d64b9233c322661645fce7250944bb16",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/UniqueFactorization/Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4213a6f-77c8-673d-d3ef-bb40de193476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordered_factorization_by_topology_prime
    (P : PairingCodec)
    (E : PrimeEnumerator)
    {A B : OrderedPrimeCore}
    (h : (topologyPrime P E A).value = (topologyPrime P E B).value) :
    A = B :=
  same_topologyPrime_same_factorization P E h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/UniqueFactorization/Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/UniqueFactorization/Variant52cd77340261218b588d3617e1a8f6a4c7eb271f3f7c1e34e50eee761de48a56.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cc7dea2c6c2915f16b02edeaabfa00f8f17e2f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
