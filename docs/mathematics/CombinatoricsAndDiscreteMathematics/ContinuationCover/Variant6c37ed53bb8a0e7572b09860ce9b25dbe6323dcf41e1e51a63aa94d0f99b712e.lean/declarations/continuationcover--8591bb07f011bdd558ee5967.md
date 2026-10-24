# ContinuationCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47da9ea0042b61a44f3047f4d8a15c9c57613718229d94ef7378ae377f43b6d4",
  "kind": "structure",
  "lexical_name": "ContinuationCover",
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
  "slug": "continuationcover--8591bb07f011bdd558ee5967",
  "source": {
    "blob": "7613b10ccb3139f20945b04b7a668a6b2b6532c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 14,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ContinuationCover/Variant6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8591bb07f011bdd558ee596749d852dcc28eb2026dec473f161b8339432b2a81",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ContinuationCover/Variant6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47da9ea0042b61a44f3047f4d8a15c9c57613718229d94ef7378ae377f43b6d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuationCover
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (parent : Partial)
    (children : Finset Partial) where
  children_refine :
    ∀ child ∈ children,
      semantics.refines parent child
  completion_covered :
    ∀ completion,
      semantics.extendsFull parent completion →
      semantics.SatisfiesAll
          completion constraints →
      ∃ child ∈ children,
        semantics.extendsFull child completion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ContinuationCover/Variant6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ContinuationCover/Variant6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7613b10ccb3139f20945b04b7a668a6b2b6532c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
