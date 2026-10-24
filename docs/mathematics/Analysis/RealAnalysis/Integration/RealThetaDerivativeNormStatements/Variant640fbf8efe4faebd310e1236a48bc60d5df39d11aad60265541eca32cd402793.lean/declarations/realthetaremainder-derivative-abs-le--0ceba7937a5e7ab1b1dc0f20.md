# realThetaRemainder_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19791ffdde54aa78e16840a8b21160fce4b5cb73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 716,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:663defda-9413-1532-ad70-8b4ccd0d8cc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:939056e9-0124-efec-ce22-fd65f9cf0a2e",
  "kind": "theorem",
  "lexical_name": "realThetaRemainder_derivative_abs_le",
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
  "slug": "realthetaremainder-derivative-abs-le--0ceba7937a5e7ab1b1dc0f20",
  "source": {
    "blob": "19791ffdde54aa78e16840a8b21160fce4b5cb73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 716,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ceba7937a5e7ab1b1dc0f2025cf0dc1eeb31ea4d0c3abecbba4b2ee3e19a633",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:939056e9-0124-efec-ce22-fd65f9cf0a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realThetaRemainder_derivative_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (realThetaRemainder A) q| ≤
      (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / (q * Real.sqrt q) := by
  have hq0 : 0 < q := by linarith
  rw [(realThetaRemainder_hasDerivAt A q hA hq0).deriv, abs_mul,
    abs_of_pos (one_div_pos.mpr hq0)]
  calc
    _ ≤ 1 / q * ((28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q) :=
      mul_le_mul_of_nonneg_left (realThetaDifferenceKernel_add_rankOne_abs_le A q hA hq)
        (one_div_nonneg.mpr hq0.le)
    _ = _ := by ring

end
end RealThetaDerivativeScratch

namespace RealThetaDerivativeNormStatements
open RealThetaDerivativeScratch
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceSampling SourceSamplingDerivative CorrelationDifferenceMoments
open CorrelationSecondMoment CorrelationPrimitive CorrelationPrimitiveMoments InnerPrimitiveTransport
open CorrelationSecondDerivative CorrelationThirdDerivative SamplingSecondDerivative
noncomputable section
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19791ffdde54aa78e16840a8b21160fce4b5cb73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
