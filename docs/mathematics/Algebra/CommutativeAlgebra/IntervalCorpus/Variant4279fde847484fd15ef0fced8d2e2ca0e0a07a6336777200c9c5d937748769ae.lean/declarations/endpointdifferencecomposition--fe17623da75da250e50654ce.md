# endpointDifferenceComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b34e28c833902650d197764e30f3a0191e3830d9ddf936d7a25d21caead2780",
  "kind": "def",
  "lexical_name": "endpointDifferenceComposition",
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
  "slug": "endpointdifferencecomposition--fe17623da75da250e50654ce",
  "source": {
    "blob": "d1458a0a9a16d5f7d32ffccafea9228bd8eb370e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 80,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe17623da75da250e50654ce11b368f3ee50f602ac475d28a222381f8ba10fd5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b34e28c833902650d197764e30f3a0191e3830d9ddf936d7a25d21caead2780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointDifferenceComposition : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-integration:integral-add-interval" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    2
    "integral_add_interval"
    (by decide)
    .theorem
    "96d4061682c0980dc08bf1f480749acccb9ac8889e931c2f82bee2548137d9f1"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration :=
    "Mathematics.Polynomial.cubicPotentialDifference_trans"
  targetDeclaration_nonempty := by decide
  relation := .theoremReconstruction
  rationale := "Transport adjacent-interval composition to endpoint differences."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1458a0a9a16d5f7d32ffccafea9228bd8eb370e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
