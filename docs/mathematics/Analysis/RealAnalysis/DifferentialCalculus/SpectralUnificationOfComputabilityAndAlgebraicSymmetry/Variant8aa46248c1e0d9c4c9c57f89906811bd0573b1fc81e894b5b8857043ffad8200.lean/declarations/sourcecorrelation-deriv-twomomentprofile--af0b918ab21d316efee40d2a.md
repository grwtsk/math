# sourceCorrelation_deriv_twoMomentProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d84e893a515b9a454a5ee4625a144ebfe67513b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cccdab0b-06f9-bf6a-f69d-81a9a92e488b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96549564-c486-d4eb-8dbe-d60bc58739d1",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deriv_twoMomentProfile",
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
  "slug": "sourcecorrelation-deriv-twomomentprofile--af0b918ab21d316efee40d2a",
  "source": {
    "blob": "6d84e893a515b9a454a5ee4625a144ebfe67513b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af0b918ab21d316efee40d2aaf69e971047647cc3a14add6db653d33332192e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96549564-c486-d4eb-8dbe-d60bc58739d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deriv_twoMomentProfile (A : ℝ) (hA : 1 ≤ A) :
    TwoMomentProfile (deriv (sourceCorrelation explicitSecondDerivative A)) := by
  have hC := sourceCorrelation_twoMomentProfile A hA
  have hD := derivativeProfile_twoMomentProfile A hA
  refine ⟨(sourceCorrelation_contDiff A (by linarith)).continuous_deriv (by norm_num),
    hC.2.1.deriv, ?_, ?_⟩
  · have heq : (fun t ↦ Real.exp (t / 2) *
          deriv (sourceCorrelation explicitSecondDerivative A) t) =
        fun t ↦ Real.exp (t / 2) * derivativeProfile A t +
          (Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) / 2 := by
      funext t
      unfold derivativeProfile
      ring
    rw [heq, integral_add (weighted_zero_integrable hD)
      ((weighted_zero_integrable hC).div_const 2), integral_div, hD.2.2.1, hC.2.2.1]
    norm_num
  · have heq : (fun t ↦ t * Real.exp (t / 2) *
          deriv (sourceCorrelation explicitSecondDerivative A) t) =
        fun t ↦ t * Real.exp (t / 2) * derivativeProfile A t +
          (t * Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) / 2 := by
      funext t
      unfold derivativeProfile
      ring
    rw [heq, integral_add (weighted_first_integrable hD)
      ((weighted_first_integrable hC).div_const 2), integral_div, hD.2.2.2, hC.2.2.2]
    norm_num

end
end EstimateSourceCorrelationDerivative
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d84e893a515b9a454a5ee4625a144ebfe67513b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
