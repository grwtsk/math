# hasDependencyFeedback_of_mutual_dependency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfe9153b15fdfd9a277d5ed7a6eaee81b8470f93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e274143-208f-b969-5b75-77543927a404",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a138575e-47fc-04ba-aea9-16e102b2d9a0",
  "kind": "theorem",
  "lexical_name": "hasDependencyFeedback_of_mutual_dependency",
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
  "slug": "hasdependencyfeedback-of-mutual-dependency--83b41df1112e3009dbdcd38d",
  "source": {
    "blob": "dfe9153b15fdfd9a277d5ed7a6eaee81b8470f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83b41df1112e3009dbdcd38df4202226481ccdde8facebef9e9b45240be529c4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a138575e-47fc-04ba-aea9-16e102b2d9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDependencyFeedback_of_mutual_dependency {n : Nat}
    (N : BooleanNetwork.Network n)
    (source target : Fin n)
    (hforward : BooleanNetwork.DependencyEdge N source target)
    (hback : BooleanNetwork.DependencyEdge N target source) :
    BooleanNetwork.HasDependencyFeedback N := by
  exact
    BooleanNetwork.hasDependencyFeedback_of_feedbackAt N source
      (BooleanNetwork.dependencyFeedbackAt_of_mutual_dependency
        N source target hforward hback)

end BooleanNetwork

end Boolean.Cube
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Feedback/Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfe9153b15fdfd9a277d5ed7a6eaee81b8470f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
