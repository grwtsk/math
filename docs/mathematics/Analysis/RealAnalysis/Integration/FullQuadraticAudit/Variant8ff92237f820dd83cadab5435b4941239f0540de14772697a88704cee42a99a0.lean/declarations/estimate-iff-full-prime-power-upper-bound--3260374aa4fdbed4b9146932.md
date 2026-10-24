# estimate_iff_full_prime_power_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5b18d8c-add1-cb96-a4a0-d58667ba0f5b",
  "kind": "theorem",
  "lexical_name": "estimate_iff_full_prime_power_upper_bound",
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
  "slug": "estimate-iff-full-prime-power-upper-bound--3260374aa4fdbed4b9146932",
  "source": {
    "blob": "f1c502404cc4589f5ad7dd0e406decd666af5820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 206,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3260374aa4fdbed4b91469328cb83282513f4ab3ae8f6c30aecb30987dfa9366",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5b18d8c-add1-cb96-a4a0-d58667ba0f5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_iff_full_prime_power_upper_bound :
    CorrelationAssembly.EstimateObligation ↔
      ∃ upper : ℝ, ∀ A : ℝ, 1 ≤ A →
        primePowerContribution explicitSecondDerivative A ≤ upper := by
  constructor
  · rintro ⟨lower, hbound⟩
    refine ⟨(archimedeanMultiplier 0 + 4 + 2 * secondMomentBound - lower) / 2, ?_⟩
    intro A hA
    have hquad := hbound A hA
    have hgamma := actual_archimedean_upper A hA
    unfold sourceQuadraticValue at hquad
    linarith
  · rintro ⟨upper, hbound⟩
    refine ⟨archimedeanMultiplier 0 - 2 * upper, ?_⟩
    intro A hA
    have hprime := hbound A hA
    have hgamma := SourceCorrectionEstimate.actual_archimedean_lower A hA
    unfold sourceQuadraticValue
    linarith

end
end FormalResearch.RiemannHypothesis.FullQuadraticAudit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1c502404cc4589f5ad7dd0e406decd666af5820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
