# StructurallyValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c4cb0844c3d8adf8a03c61c899670ed6e90edf7046930cf428898e09fd3855b",
  "kind": "def",
  "lexical_name": "StructurallyValid",
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
  "slug": "structurallyvalid--5daa2e1d018710d9e1f9089b",
  "source": {
    "blob": "99dba7f60c66ef380c8d4d1309b9e5f019e07287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Variant7766e5219b160995be5bd3f73c9e0348019e2dc846c9c9b8a2f6b68c0233ae10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5daa2e1d018710d9e1f9089b0c79f4319bb88a31dc8ea9b748ad42384c400bbf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Variant7766e5219b160995be5bd3f73c9e0348019e2dc846c9c9b8a2f6b68c0233ae10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c4cb0844c3d8adf8a03c61c899670ed6e90edf7046930cf428898e09fd3855b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StructurallyValid (projection : TreeProjection) : Prop :=
  projection.SemanticOccurrencesNotProjectionOnly ∧
  projection.UniqueOccurrenceIds ∧
  projection.UniqueCanonicalConcepts ∧
  projection.ExactConceptCoverage ∧
  projection.UniqueRoot ∧
  projection.ParentReferencesResolve ∧
  projection.RootReachability ∧
  projection.Acyclic ∧
  projection.ReferencesOwnNoChildren ∧
  projection.RelationConservation ∧
  projection.HyperrelationConservation ∧
  projection.LayoutIntervalsValid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Variant7766e5219b160995be5bd3f73c9e0348019e2dc846c9c9b8a2f6b68c0233ae10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Invariant/Variant7766e5219b160995be5bd3f73c9e0348019e2dc846c9c9b8a2f6b68c0233ae10.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99dba7f60c66ef380c8d4d1309b9e5f019e07287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
