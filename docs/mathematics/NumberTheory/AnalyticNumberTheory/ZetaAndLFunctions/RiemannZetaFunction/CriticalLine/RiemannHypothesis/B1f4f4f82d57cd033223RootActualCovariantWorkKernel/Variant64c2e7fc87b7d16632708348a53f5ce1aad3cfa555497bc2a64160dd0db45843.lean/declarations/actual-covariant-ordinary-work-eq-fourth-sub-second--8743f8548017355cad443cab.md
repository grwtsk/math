# actual_covariant_ordinary_work_eq_fourth_sub_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fba2fdb1-f683-8768-2600-a9a6ddea369c",
  "kind": "theorem",
  "lexical_name": "actual_covariant_ordinary_work_eq_fourth_sub_second",
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
  "slug": "actual-covariant-ordinary-work-eq-fourth-sub-second--8743f8548017355cad443cab",
  "source": {
    "blob": "fed3f4c8d20c7bb2cb410c6ef06e0f7c728f14f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant64c2e7fc87b7d16632708348a53f5ce1aad3cfa555497bc2a64160dd0db45843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8743f8548017355cad443cabce0757e5feca5e892c179aec6a61d2851eebb3f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant64c2e7fc87b7d16632708348a53f5ce1aad3cfa555497bc2a64160dd0db45843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fba2fdb1-f683-8768-2600-a9a6ddea369c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_covariant_ordinary_work_eq_fourth_sub_second
    (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative (actualLogMixedDensity A) t s =
      covariantMixedDerivative
        (fun x y => covariantMixedDerivative (actualLogColumnSource A) x y) t s -
          covariantMixedDerivative (actualLogColumnSource A) t s / 4 := by
  rw [actual_covariant_ordinary_work_kernel A hA t s,
    actual_twice_covariant_mixed_fourth A hA t s, actual_covariant_mixed_second A hA t s]
  unfold actualCovariantJet
  ring

end
end FormalResearch.RiemannHypothesis.RootActualCovariantWorkKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant64c2e7fc87b7d16632708348a53f5ce1aad3cfa555497bc2a64160dd0db45843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant64c2e7fc87b7d16632708348a53f5ce1aad3cfa555497bc2a64160dd0db45843.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed3f4c8d20c7bb2cb410c6ef06e0f7c728f14f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
