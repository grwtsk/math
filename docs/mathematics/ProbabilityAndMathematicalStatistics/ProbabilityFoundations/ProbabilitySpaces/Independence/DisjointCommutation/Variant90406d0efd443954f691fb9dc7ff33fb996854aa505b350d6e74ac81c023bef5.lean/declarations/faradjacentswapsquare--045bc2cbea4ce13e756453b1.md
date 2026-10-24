# FarAdjacentSwapSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32d21afb6b73eee4c0d38a71893eaee36cd4c08294d23e10f9aea78247e2cfd4",
  "kind": "structure",
  "lexical_name": "FarAdjacentSwapSquare",
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
  "slug": "faradjacentswapsquare--045bc2cbea4ce13e756453b1",
  "source": {
    "blob": "788bb292b942216576cd9910f6dcc0a7c730f88a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 190,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:045bc2cbea4ce13e756453b1d8e60b4bca54603bb6365a38efee2b272ed9b431",
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

Occurrence: `declaration:32d21afb6b73eee4c0d38a71893eaee36cd4c08294d23e10f9aea78247e2cfd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FarAdjacentSwapSquare
    {count : Nat}
    (start finish : Equiv.Perm (Fin count)) where
  afterFirst : Equiv.Perm (Fin count)
  afterSecond : Equiv.Perm (Fin count)
  first : AdjacentSwapWitness start afterFirst
  secondAfterFirst : AdjacentSwapWitness afterFirst finish
  second : AdjacentSwapWitness start afterSecond
  firstAfterSecond : AdjacentSwapWitness afterSecond finish
  first_index_agrees : first.lower = firstAfterSecond.lower
  second_index_agrees : second.lower = secondAfterFirst.lower
  separated : first.upper.val < second.lower.val ∨ second.upper.val < first.lower.val

/--
A concrete Coxeter braid hexagon.  The upper route has generator word
`i,(i+1),i`; the lower route has `(i+1),i,(i+1)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788bb292b942216576cd9910f6dcc0a7c730f88a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
