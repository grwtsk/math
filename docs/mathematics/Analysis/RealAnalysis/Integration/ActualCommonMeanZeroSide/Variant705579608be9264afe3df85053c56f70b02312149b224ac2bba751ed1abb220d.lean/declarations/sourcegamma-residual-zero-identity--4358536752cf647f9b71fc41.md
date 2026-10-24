# sourceGamma_residual_zero_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b4b0d85-3249-ec77-feaf-0d1c5d46515a",
  "kind": "theorem",
  "lexical_name": "sourceGamma_residual_zero_identity",
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
  "slug": "sourcegamma-residual-zero-identity--4358536752cf647f9b71fc41",
  "source": {
    "blob": "24822613a2503c4f9ba5284db74db839a92adfba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variant705579608be9264afe3df85053c56f70b02312149b224ac2bba751ed1abb220d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4358536752cf647f9b71fc413f30d3b8912e39d65fb574d5d0604dec6471de79",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variant705579608be9264afe3df85053c56f70b02312149b224ac2bba751ed1abb220d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b4b0d85-3249-ec77-feaf-0d1c5d46515a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGamma_residual_zero_identity {A : ℝ} (hA : 1 ≤ A) :
    normalizedZeroSquare A = (sourceGammaValue A - 2*mertensResidual A : ℝ) := by
  rw [normalizedZeroSquare_eq_source hA]
  unfold sourceQuadraticValue sourceGammaValue
  rw [source_prime_power_contribution_eq_closed explicitSecondDerivative A
    (sourceCorrelation_upper_endpoint A (by linarith)),
    mertensResidual_eq_closedPrimeMoment A hA]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variant705579608be9264afe3df85053c56f70b02312149b224ac2bba751ed1abb220d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variant705579608be9264afe3df85053c56f70b02312149b224ac2bba751ed1abb220d.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24822613a2503c4f9ba5284db74db839a92adfba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
