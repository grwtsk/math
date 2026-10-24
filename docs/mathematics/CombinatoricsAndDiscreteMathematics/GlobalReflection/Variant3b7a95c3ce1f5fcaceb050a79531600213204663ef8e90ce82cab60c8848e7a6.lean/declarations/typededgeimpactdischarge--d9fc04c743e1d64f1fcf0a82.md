# TypedEdgeImpactDischarge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12db678879340ab314f8e05e4d20e98844302b6785bbfa57144e8ef339812bba",
  "kind": "inductive",
  "lexical_name": "TypedEdgeImpactDischarge",
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
  "slug": "typededgeimpactdischarge--d9fc04c743e1d64f1fcf0a82",
  "source": {
    "blob": "de06990a4fddc0346e87d209143095f0c1cdcfe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2378,
    "line": 2351,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9fc04c743e1d64f1fcf0a827ce3b8b558110e381b0cfa34ca543a405d1add73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12db678879340ab314f8e05e4d20e98844302b6785bbfa57144e8ef339812bba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2351–2378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TypedEdgeImpactDischarge
    (edge : AnyInterRelianceEdge) (candidate : RecordId) where
  | leftToRight
      (change : CandidateArtifactChange edge.left)
      (changeScoped : change.CandidateScoped)
      (impact : ImpactObligation edge.rightStratum)
      (impactExact :
        impact = edge.witness.propagateLeftToRight change)
      (evidence : Finset RecordId)
      (evidencePresent : evidence.Nonempty)
      (changeEvidenceIncluded : change.evidence ⊆ evidence)
      (candidateReferenced : candidate ∈ evidence)
      (requiredReviewDischarged : impact.requiredReview ∈ evidence)
  | rightToLeft
      (change : CandidateArtifactChange edge.right)
      (changeScoped : change.CandidateScoped)
      (impact : ImpactObligation edge.leftStratum)
      (impactExact :
        impact = edge.witness.propagateRightToLeft change)
      (evidence : Finset RecordId)
      (evidencePresent : evidence.Nonempty)
      (changeEvidenceIncluded : change.evidence ⊆ evidence)
      (candidateReferenced : candidate ∈ evidence)
      (requiredReviewDischarged : impact.requiredReview ∈ evidence)

namespace TypedEdgeImpactDischarge

/-- Every typed discharge has an explicit evidence record. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean#L2351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de06990a4fddc0346e87d209143095f0c1cdcfe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
