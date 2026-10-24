# EF_zero_sum_summable_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ebf0509-9fe4-3ce1-30cb-c823640f2c66",
  "kind": "theorem",
  "lexical_name": "EF_zero_sum_summable_chi",
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
  "slug": "ef-zero-sum-summable-chi--e6b91b0a846eb486c34d778d",
  "source": {
    "blob": "ff9c1c747924dd476bccea6fbb30f760bcfadbfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 297,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6b91b0a846eb486c34d778d6ae5aef7c940e16dd720b126201d156b2b02cf1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ebf0509-9fe4-3ce1-30cb-c823640f2c66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EF_zero_sum_summable_chi (hq : 1 < q) (hprim : χ.IsPrimitive)
    {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) :
    Summable (fun ρ : (LZeros (LSeam_of hq hprim)).carrier =>
      (((LZeros (LSeam_of hq hprim)).mult ρ : ℂ)) * paperFT k (gammaOf ρ)) := by
  obtain ⟨A₀, hA₀, hloc⟩ := localCountChi hq hprim
  have hloc' : ∀ t : ℝ, ((LZeros (LSeam_of hq hprim)).N t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3) := by
    intro t; rw [LZeros_N]; exact hloc t
  exact Zeta23.WeilEF.EF_zero_sum_summable_gen (LZeros (LSeam_of hq hprim)) hA₀ hloc' hk hkc

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variant1f239fb37ba0b5b00cf1e5d4ea7582bc41fc5cf48c46bd5f692881c045fa719c.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9c1c747924dd476bccea6fbb30f760bcfadbfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
