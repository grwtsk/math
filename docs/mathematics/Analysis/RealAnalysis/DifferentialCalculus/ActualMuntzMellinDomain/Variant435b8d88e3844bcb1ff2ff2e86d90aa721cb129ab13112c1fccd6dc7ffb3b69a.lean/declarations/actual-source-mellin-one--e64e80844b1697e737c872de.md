# actual_source_mellin_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fb69c48-8dab-6623-0b15-50c23258de01",
  "kind": "theorem",
  "lexical_name": "actual_source_mellin_one",
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
  "slug": "actual-source-mellin-one--e64e80844b1697e737c872de",
  "source": {
    "blob": "ba4551e3cf89ec7f5b81d331684b70c199704721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e64e80844b1697e737c872dedeb5c803d0f766852573b4ed4a8f05d10b20acf0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fb69c48-8dab-6623-0b15-50c23258de01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_mellin_one {A : ℝ} (hA : 1 ≤ A) :
    mellin (complexSource A) 1 = 0 := by
  simp only [mellin,sub_self,Complex.cpow_zero,one_smul,complexSource]
  rw [integral_complex_ofReal,actualLogSource_integral_zero hA,Complex.ofReal_zero]

end ContinuousResearch.ActualMuntzMellinDomain

/- Exact public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualMuntzMellinDomain.complexMuntz
#print axioms ContinuousResearch.ActualMuntzMellinDomain.complexMuntz
#print ContinuousResearch.ActualMuntzMellinDomain.complexMuntz

#check ContinuousResearch.ActualMuntzMellinDomain.complexSource
#print axioms ContinuousResearch.ActualMuntzMellinDomain.complexSource
#print ContinuousResearch.ActualMuntzMellinDomain.complexSource

#check ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_measurable
#print axioms ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_measurable
#print ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_measurable

#check ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_integrable
#print axioms ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_integrable
#print ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_integrable

#check ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_top_decay
#print axioms ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_top_decay
#print ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_top_decay

#check ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_zero_bound
#print axioms ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_zero_bound
#print ContinuousResearch.ActualMuntzMellinDomain.complexMuntz_zero_bound

#check ContinuousResearch.ActualMuntzMellinDomain.actual_muntz_mellinConvergent
#print axioms ContinuousResearch.ActualMuntzMellinDomain.actual_muntz_mellinConvergent
#print ContinuousResearch.ActualMuntzMellinDomain.actual_muntz_mellinConvergent

#check ContinuousResearch.ActualMuntzMellinDomain.actual_muntz_mellin_hasDerivAt
#print axioms ContinuousResearch.ActualMuntzMellinDomain.actual_muntz_mellin_hasDerivAt
#print ContinuousResearch.ActualMuntzMellinDomain.actual_muntz_mellin_hasDerivAt

#check ContinuousResearch.ActualMuntzMellinDomain.actual_muntz_mellin_analytic
#print axioms ContinuousResearch.ActualMuntzMellinDomain.actual_muntz_mellin_analytic
#print ContinuousResearch.ActualMuntzMellinDomain.actual_muntz_mellin_analytic

#check ContinuousResearch.ActualMuntzMellinDomain.complexSource_integrable
#print axioms ContinuousResearch.ActualMuntzMellinDomain.complexSource_integrable
#print ContinuousResearch.ActualMuntzMellinDomain.complexSource_integrable

#check ContinuousResearch.ActualMuntzMellinDomain.complexSource_top_decay
#print axioms ContinuousResearch.ActualMuntzMellinDomain.complexSource_top_decay
#print ContinuousResearch.ActualMuntzMellinDomain.complexSource_top_decay

#check ContinuousResearch.ActualMuntzMellinDomain.complexSource_zero_decay
#print axioms ContinuousResearch.ActualMuntzMellinDomain.complexSource_zero_decay
#print ContinuousResearch.ActualMuntzMellinDomain.complexSource_zero_decay

#check ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellinConvergent
#print axioms ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellinConvergent
#print ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellinConvergent

#check ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellin_hasDerivAt
#print axioms ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellin_hasDerivAt
#print ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellin_hasDerivAt

#check ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellin_differentiable
#print axioms ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellin_differentiable
#print ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellin_differentiable

#check ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellin_one
#print axioms ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellin_one
#print ContinuousResearch.ActualMuntzMellinDomain.actual_source_mellin_one
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4551e3cf89ec7f5b81d331684b70c199704721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
