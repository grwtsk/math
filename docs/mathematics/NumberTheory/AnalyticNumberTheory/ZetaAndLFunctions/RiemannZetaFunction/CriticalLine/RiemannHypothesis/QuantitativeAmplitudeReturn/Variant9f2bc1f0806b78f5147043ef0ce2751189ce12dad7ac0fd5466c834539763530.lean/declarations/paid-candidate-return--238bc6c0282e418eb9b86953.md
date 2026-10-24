# paid_candidate_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5496447-9a5d-0a6d-7a50-e1ab2f203828",
  "kind": "theorem",
  "lexical_name": "paid_candidate_return",
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
  "slug": "paid-candidate-return--238bc6c0282e418eb9b86953",
  "source": {
    "blob": "86fba0de27bcd87e3824e7030cf3693b746754fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238bc6c0282e418eb9b86953c6415fa9f22510c5e7a1235809bcbfcc28326884",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5496447-9a5d-0a6d-7a50-e1ab2f203828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paid_candidate_return {A h retained error baseline D C p q : ℝ}
    (hA : 1 ≤ A) (hD : 0 ≤ D) (hC : 0 ≤ C)
    (hexact : h = retained + error) (herror : |error| ≤ C * A ^ q)
    (hretained : retained ≤ baseline + D * A ^ p) :
    h ≤ baseline + (D + C) * A ^ (max p q) := by
  have hd := mul_le_mul_of_nonneg_left
    (Real.rpow_le_rpow_of_exponent_le hA (le_max_left p q)) hD
  have hc := mul_le_mul_of_nonneg_left
    (Real.rpow_le_rpow_of_exponent_le hA (le_max_right p q)) hC
  have he := (le_abs_self error).trans herror
  rw [hexact]
  nlinarith

/-- All original candidates and all real scales are quantified by the caller. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86fba0de27bcd87e3824e7030cf3693b746754fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
