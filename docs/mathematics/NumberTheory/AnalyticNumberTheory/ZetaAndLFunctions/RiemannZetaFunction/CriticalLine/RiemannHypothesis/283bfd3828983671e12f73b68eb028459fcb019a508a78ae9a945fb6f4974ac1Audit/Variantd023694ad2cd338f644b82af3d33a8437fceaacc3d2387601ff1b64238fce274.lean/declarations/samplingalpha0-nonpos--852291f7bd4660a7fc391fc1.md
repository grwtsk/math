# samplingAlpha0_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab5ffa0e-bfd5-72c7-db95-1a2f86524c84",
  "kind": "theorem",
  "lexical_name": "samplingAlpha0_nonpos",
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
  "slug": "samplingalpha0-nonpos--852291f7bd4660a7fc391fc1",
  "source": {
    "blob": "16417448406c0e62fbeb0b3c71ae8394fccf531b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/283bfd3828983671e12f73b68eb028459fcb019a508a78ae9a945fb6f4974ac1Audit/Variantd023694ad2cd338f644b82af3d33a8437fceaacc3d2387601ff1b64238fce274.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:852291f7bd4660a7fc391fc161a8d5efdaa82528864edf52df2cffa41ce941e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/283bfd3828983671e12f73b68eb028459fcb019a508a78ae9a945fb6f4974ac1Audit/Variantd023694ad2cd338f644b82af3d33a8437fceaacc3d2387601ff1b64238fce274.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab5ffa0e-bfd5-72c7-db95-1a2f86524c84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem samplingAlpha0_nonpos : samplingAlpha0 ≤ 0 := by
  have hmoment : 0 ≤ signedCoefficientMoment 0 := by
    unfold signedCoefficientMoment
    apply setIntegral_nonneg measurableSet_Ioi
    intro u hu
    simp only [coefficientWeight, pow_zero, mul_one]
    exact mul_nonneg (Int.fract_nonneg u) (Real.rpow_pos_of_pos hu _).le
  unfold samplingAlpha0
  linarith

end FormalResearch.RiemannHypothesis.SourceSamplingCoefficients

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceSamplingCoefficients
#print samplingAlpha0_nonpos
#print axioms samplingAlpha0_nonpos
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/283bfd3828983671e12f73b68eb028459fcb019a508a78ae9a945fb6f4974ac1Audit/Variantd023694ad2cd338f644b82af3d33a8437fceaacc3d2387601ff1b64238fce274.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/283bfd3828983671e12f73b68eb028459fcb019a508a78ae9a945fb6f4974ac1Audit/Variantd023694ad2cd338f644b82af3d33a8437fceaacc3d2387601ff1b64238fce274.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16417448406c0e62fbeb0b3c71ae8394fccf531b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
