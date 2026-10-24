# actualHalfCorrelationTransform_normalized_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:535f882d-68b5-a53e-7e4d-436476710d4f",
  "kind": "theorem",
  "lexical_name": "actualHalfCorrelationTransform_normalized_tendsto",
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
  "slug": "actualhalfcorrelationtransform-normalized-tendsto--358eeb8d9083d5cf8043bc25",
  "source": {
    "blob": "2d58fe38cb1a2ba44cb16350c7402465feafa0d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant9dceda67e8dfb632940a9b4d1d662b087a34a28eb5817b8e435a6075478f7ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:358eeb8d9083d5cf8043bc251ca3191217b9ede788e6605f40a34ffec109daf2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant9dceda67e8dfb632940a9b4d1d662b087a34a28eb5817b8e435a6075478f7ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:535f882d-68b5-a53e-7e4d-436476710d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfCorrelationTransform_normalized_tendsto {z : ℂ}
    (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => actualCorrelationAsymptoticScale A z *
      actualHalfCorrelationTransform A z) atTop
      (𝓝 ((384 / z^3 - 96 / z^5)^2)) := by
  have hh := (actualBilateralCorrelationTransform_normalized_tendsto hz).add
    (actualHalfCorrelationTransform_scaled_error_tendsto_zero hz)
  simp only [add_zero] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun A => by ring

end
end FormalResearch.RiemannHypothesis.ActualComplexCorrelationAsymptotic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant9dceda67e8dfb632940a9b4d1d662b087a34a28eb5817b8e435a6075478f7ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant9dceda67e8dfb632940a9b4d1d662b087a34a28eb5817b8e435a6075478f7ba0.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d58fe38cb1a2ba44cb16350c7402465feafa0d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
