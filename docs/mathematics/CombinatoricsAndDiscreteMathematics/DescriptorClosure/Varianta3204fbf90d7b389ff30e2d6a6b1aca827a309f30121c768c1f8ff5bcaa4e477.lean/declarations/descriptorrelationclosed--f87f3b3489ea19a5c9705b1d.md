# DescriptorRelationClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf0f2c1876c9838050cd814210218db22fa478026e377604ba31a0423b27cbd1",
  "kind": "def",
  "lexical_name": "DescriptorRelationClosed",
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
  "slug": "descriptorrelationclosed--f87f3b3489ea19a5c9705b1d",
  "source": {
    "blob": "906cb1319f63bc83ab3cc1cacba1dbcec6bfc2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Varianta3204fbf90d7b389ff30e2d6a6b1aca827a309f30121c768c1f8ff5bcaa4e477.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f87f3b3489ea19a5c9705b1da538450d4f06abbcafab6997676e06f340914524",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Varianta3204fbf90d7b389ff30e2d6a6b1aca827a309f30121c768c1f8ff5bcaa4e477.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf0f2c1876c9838050cd814210218db22fa478026e377604ba31a0423b27cbd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DescriptorRelationClosed
    (pointUniverse : PointUniverse)
    (points : Finset ElementId) : Prop :=
  points ⊆
      (pointUniverse.points.map MathematicalPoint.pointId).toFinset ∧
  (∀ descriptor ∈ pointUniverse.descriptors.descriptors,
    ∀ pointId ∈ descriptor.disposition.pointReferences,
      pointId ∈ points) ∧
  (∀ relation ∈ pointUniverse.relations,
    relation.source ∈ points →
      relation.target ∈ points)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Varianta3204fbf90d7b389ff30e2d6a6b1aca827a309f30121c768c1f8ff5bcaa4e477.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Varianta3204fbf90d7b389ff30e2d6a6b1aca827a309f30121c768c1f8ff5bcaa4e477.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `906cb1319f63bc83ab3cc1cacba1dbcec6bfc2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
