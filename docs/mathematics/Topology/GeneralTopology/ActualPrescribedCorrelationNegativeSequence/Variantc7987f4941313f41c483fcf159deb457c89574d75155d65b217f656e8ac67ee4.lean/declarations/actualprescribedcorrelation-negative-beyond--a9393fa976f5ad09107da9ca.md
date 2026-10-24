# actualPrescribedCorrelation_negative_beyond

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e040b17-0c61-5a89-a769-0609f84db1bf",
  "kind": "theorem",
  "lexical_name": "actualPrescribedCorrelation_negative_beyond",
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
  "slug": "actualprescribedcorrelation-negative-beyond--a9393fa976f5ad09107da9ca",
  "source": {
    "blob": "8015b0e54468b13ff6f484e3683f957667932ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantc7987f4941313f41c483fcf159deb457c89574d75155d65b217f656e8ac67ee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9393fa976f5ad09107da9ca5ea56628e037e7cbd5b9313b61f039e04aea7e04",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantc7987f4941313f41c483fcf159deb457c89574d75155d65b217f656e8ac67ee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e040b17-0c61-5a89-a769-0609f84db1bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPrescribedCorrelation_negative_beyond (R : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧
      (actualHalfCorrelationTransform A actualPrescribedComplexMode).re < 0 := by
  obtain ⟨n, hn, hR, hA⟩ :=
    (actualPrescribedCorrelation_eventually_negative.and
      ((actualPrescribedScaleSequence_tendsto.eventually_ge_atTop R).and
      (actualPrescribedScaleSequence_tendsto.eventually_ge_atTop 1))).exists
  exact ⟨actualPrescribedScaleSequence n, hR, hA, hn⟩

end
end FormalResearch.RiemannHypothesis.ActualPrescribedCorrelationNegativeSequence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantc7987f4941313f41c483fcf159deb457c89574d75155d65b217f656e8ac67ee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPrescribedCorrelationNegativeSequence/Variantc7987f4941313f41c483fcf159deb457c89574d75155d65b217f656e8ac67ee4.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8015b0e54468b13ff6f484e3683f957667932ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
