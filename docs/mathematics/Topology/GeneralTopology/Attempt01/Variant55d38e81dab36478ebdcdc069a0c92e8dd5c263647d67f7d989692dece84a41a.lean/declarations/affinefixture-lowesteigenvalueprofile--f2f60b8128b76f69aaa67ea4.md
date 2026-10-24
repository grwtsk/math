# affineFixture_lowestEigenvalueProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e9088be-da08-f615-3087-d457fe94a393",
  "kind": "theorem",
  "lexical_name": "affineFixture_lowestEigenvalueProfile",
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
  "slug": "affinefixture-lowesteigenvalueprofile--f2f60b8128b76f69aaa67ea4",
  "source": {
    "blob": "b517c0daab0a2e9e3631f03ab90a1d1824cb31e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f60b8128b76f69aaa67ea497dd99a839d7fc4d6d8934bdcfff1f1896ba0454",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e9088be-da08-f615-3087-d457fe94a393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineFixture_lowestEigenvalueProfile : LowestEigenvalueProfile affineFixture :=
  ⟨affineFixture_continuous.continuousOn, affineFixture_smallPositive⟩

#check SmallPositive
#print axioms SmallPositive
#check GlobalNonnegative
#print axioms GlobalNonnegative
#check NonvanishingOnPositive
#print axioms NonvanishingOnPositive
#check affineFixture
#print axioms affineFixture
#check affineFixture_continuous
#print axioms affineFixture_continuous
#check affineFixture_smallPositive
#print axioms affineFixture_smallPositive
#check affineFixture_later_negative
#print axioms affineFixture_later_negative
#check affineFixture_not_global
#print axioms affineFixture_not_global
#check continuous_local_does_not_imply_global
#print axioms continuous_local_does_not_imply_global
#check affineFixture_unique_crossing
#print axioms affineFixture_unique_crossing
#check zero_before_negative
#print axioms zero_before_negative
#check zero_of_not_global
#print axioms zero_of_not_global
#check positive_everywhere_of_nonvanishing
#print axioms positive_everywhere_of_nonvanishing
#check positive_everywhere_iff_nonvanishing
#print axioms positive_everywhere_iff_nonvanishing
#check global_nonnegative_of_nonvanishing
#print axioms global_nonnegative_of_nonvanishing
#check LowestEigenvalueProfile
#print axioms LowestEigenvalueProfile
#check lowestEigenvalue_crossing
#print axioms lowestEigenvalue_crossing
#check lowestEigenvalue_failure_crossing
#print axioms lowestEigenvalue_failure_crossing
#check lowestEigenvalue_nonvanishing_iff_positive
#print axioms lowestEigenvalue_nonvanishing_iff_positive
#check affineFixture_lowestEigenvalueProfile
#print axioms affineFixture_lowestEigenvalueProfile

end ContinuousResearch.LocalizationBlindness
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b517c0daab0a2e9e3631f03ab90a1d1824cb31e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
