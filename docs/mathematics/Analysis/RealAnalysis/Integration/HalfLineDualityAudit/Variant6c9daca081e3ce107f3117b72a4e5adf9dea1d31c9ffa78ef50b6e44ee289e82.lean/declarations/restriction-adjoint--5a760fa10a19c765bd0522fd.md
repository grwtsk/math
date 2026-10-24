# restriction_adjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ea6048d4910f151a3eaa7caaa7fc1f6c9f9bab1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80e2c18d-43b6-c464-41fd-121af3949718",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:936a1f62-d736-ebc7-37c4-b85df9b62419",
  "kind": "theorem",
  "lexical_name": "restriction_adjoint",
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
  "slug": "restriction-adjoint--5a760fa10a19c765bd0522fd",
  "source": {
    "blob": "3ea6048d4910f151a3eaa7caaa7fc1f6c9f9bab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variant6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a760fa10a19c765bd0522fd1f6aac8671d65762936fce40ca1486880f6a09cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variant6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:936a1f62-d736-ebc7-37c4-b85df9b62419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restriction_adjoint : restriction.adjoint = zeroExtension.toContinuousLinearMap := by
  rw [← zeroExtension_adjoint, ContinuousLinearMap.adjoint_adjoint]

end
end HalfLineDualityScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000

#check @HalfLineDualityScratch.restricted_inner_integrable
#print HalfLineDualityScratch.restricted_inner_integrable
#print axioms HalfLineDualityScratch.restricted_inner_integrable

#check @HalfLineDualityScratch.extended_inner_integrable
#print HalfLineDualityScratch.extended_inner_integrable
#print axioms HalfLineDualityScratch.extended_inner_integrable

#check @HalfLineDualityScratch.inner_restriction_zeroExtension
#print HalfLineDualityScratch.inner_restriction_zeroExtension
#print axioms HalfLineDualityScratch.inner_restriction_zeroExtension

#check @HalfLineDualityScratch.zeroExtension_adjoint
#print HalfLineDualityScratch.zeroExtension_adjoint
#print axioms HalfLineDualityScratch.zeroExtension_adjoint

#check @HalfLineDualityScratch.restriction_adjoint
#print HalfLineDualityScratch.restriction_adjoint
#print axioms HalfLineDualityScratch.restriction_adjoint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variant6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variant6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea6048d4910f151a3eaa7caaa7fc1f6c9f9bab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
