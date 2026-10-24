# actualXiInverseSquarePhysical_integral_eq_time

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62366375-0351-a9db-99a6-c1695b5a6112",
  "kind": "theorem",
  "lexical_name": "actualXiInverseSquarePhysical_integral_eq_time",
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
  "slug": "actualxiinversesquarephysical-integral-eq-time--c9fe0ce5342e35bcc5e8ec08",
  "source": {
    "blob": "c35bd9dc9f6e2e85df4b94de69967e1fd43d735d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPntAtOne/Variant953c547bb28fea6c4c13b078818d8f338817d06f7299a1d538dcc8b01aa01df7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9fe0ce5342e35bcc5e8ec088183089d584886a9dcc1a02d641ed5734d8f2dd5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPntAtOne/Variant953c547bb28fea6c4c13b078818d8f338817d06f7299a1d538dcc8b01aa01df7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62366375-0351-a9db-99a6-c1695b5a6112`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiInverseSquarePhysical_integral_eq_time :
    (∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2) =
      ∫ t in Ioi (Real.log 7), actualXiInverseSquareTimeDensity t := by
  have h := integral_comp_exp_Ioi
    (fun y : ℝ => shiftedActualChebyshev y / y ^ 2) (Real.log 7)
  simp only [smul_eq_mul, Real.exp_log (by norm_num : (0 : ℝ) < 7)] at h
  rw [setIntegral_congr_fun measurableSet_Ioi (fun t _ => inverse_square_exp t)] at h
  exact h.symm

end
end FormalResearch.RiemannHypothesis.SourceActualXiPntAtOne
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPntAtOne/Variant953c547bb28fea6c4c13b078818d8f338817d06f7299a1d538dcc8b01aa01df7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPntAtOne/Variant953c547bb28fea6c4c13b078818d8f338817d06f7299a1d538dcc8b01aa01df7.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c35bd9dc9f6e2e85df4b94de69967e1fd43d735d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
