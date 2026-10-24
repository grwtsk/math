# exp_div_tenth_power_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99ab5e02-e2c6-082b-fb3f-cffe960aad73",
  "kind": "theorem",
  "lexical_name": "exp_div_tenth_power_lower",
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
  "slug": "exp-div-tenth-power-lower--a8a7119d3ce19f3634e1a87f",
  "source": {
    "blob": "fcbc2ff78884ebcda748b05ad299de02f5eeb2b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant3cd3f02ee17622973fef6c799d07f8ff6228330c1de26570cdc574c0ab996eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8a7119d3ce19f3634e1a87fd898b668e62dd17149a6942e46383eaa64acf969",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant3cd3f02ee17622973fef6c799d07f8ff6228330c1de26570cdc574c0ab996eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99ab5e02-e2c6-082b-fb3f-cffe960aad73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_div_tenth_power_lower {A : ℝ} (hA : 0 < A) :
    A / 39916800 ≤ Real.exp A / A ^ 10 := by
  have hexp := Real.pow_div_factorial_le_exp A hA.le 11
  norm_num [Nat.factorial] at hexp
  calc
    A / 39916800 = (A ^ 11 / 39916800) / A ^ 10 := by
      field_simp [hA.ne']
    _ ≤ Real.exp A / A ^ 10 := div_le_div_of_nonneg_right hexp (by positivity)

/-- At every proposed radius and cap the normalized-to-zero control exceeds the cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant3cd3f02ee17622973fef6c799d07f8ff6228330c1de26570cdc574c0ab996eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant3cd3f02ee17622973fef6c799d07f8ff6228330c1de26570cdc574c0ab996eea.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcbc2ff78884ebcda748b05ad299de02f5eeb2b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
