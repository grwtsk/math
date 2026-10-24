# actualXiComplexLaplace_norm_le_of_future_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1a4f71a-1f3c-770c-2b43-ccdfa4d6eb72",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_norm_le_of_future_average",
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
  "slug": "actualxicomplexlaplace-norm-le-of-future-average--4ebecf6d7451ecc3655b4c1c",
  "source": {
    "blob": "26a49c908e197cb02ca568c62bc007fc095ab9b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualXiConditionalComplexLaplace/Variant014888d8e705ebb4d8443f0aee4320f40177ea70fd66be5a90d8b73eb45f65e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ebecf6d7451ecc3655b4c1c188a86d25f831dc1e7ad456e33e65a1582f97282",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RootActualXiConditionalComplexLaplace/Variant014888d8e705ebb4d8443f0aee4320f40177ea70fd66be5a90d8b73eb45f65e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1a4f71a-1f3c-770c-2b43-ccdfa4d6eb72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_norm_le_of_future_average {M T₀ : ℝ}
    (hM : 0 ≤ M) (hT₀ : Real.log 7 ≤ T₀)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T)
    {z : ℂ} (hz : 0 < z.re) :
    ‖actualXiComplexLaplace z‖ ≤ actualXiConditionalLaplaceBudget M T₀ z.re := by
  have hL1 := actualXiComplexLaplace_integrableOn_of_future_average hM hT₀ haverage hz
  unfold actualXiComplexLaplace
  apply (norm_integral_le_integral_norm _).trans
  have hr := (actualXiLaplace_integrableOn_of_future_average hM hT₀ hz haverage).norm
  apply (integral_mono_ae hL1.norm hr (by
    filter_upwards [] with t
    exact (actualXiComplexLaplaceKernel_norm_eq z t).le)).trans
  exact actualXiLaplace_integral_norm_le hM hT₀ hz haverage

end
end FormalResearch.RiemannHypothesis.RootActualXiConditionalComplexLaplace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualXiConditionalComplexLaplace/Variant014888d8e705ebb4d8443f0aee4320f40177ea70fd66be5a90d8b73eb45f65e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualXiConditionalComplexLaplace/Variant014888d8e705ebb4d8443f0aee4320f40177ea70fd66be5a90d8b73eb45f65e1.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26a49c908e197cb02ca568c62bc007fc095ab9b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
