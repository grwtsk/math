# DisjointExecutionSemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5bcc711b4e00711914af5d80c27718d9cfa2a799b91dc662795bfad9d82e440",
  "kind": "structure",
  "lexical_name": "DisjointExecutionSemantics",
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
  "slug": "disjointexecutionsemantics--d8e1ec63b0f4f4746e7f93c4",
  "source": {
    "blob": "788bb292b942216576cd9910f6dcc0a7c730f88a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 231,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8e1ec63b0f4f4746e7f93c4d84d7ed31d7bd0dec02d8c09b7ae0ae452a463d2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5bcc711b4e00711914af5d80c27718d9cfa2a799b91dc662795bfad9d82e440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DisjointExecutionSemantics
    (T : SmoothFramedSurgeryTheory)
    {M : T.Manifold} {count : Nat}
    (family : FiniteDisjointFramedFamily T M count) where
  TransportedCopy : (i : Fin count) → {X : T.Manifold} →
    T.FramedEmbedding (family.p i) (family.q i) M →
      T.FramedEmbedding (family.p i) (family.q i) X → Prop
  source_copy : ∀ i,
    TransportedCopy i (family.embedding i) (family.embedding i)

/-- Index of the state immediately before an execution step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788bb292b942216576cd9910f6dcc0a7c730f88a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
