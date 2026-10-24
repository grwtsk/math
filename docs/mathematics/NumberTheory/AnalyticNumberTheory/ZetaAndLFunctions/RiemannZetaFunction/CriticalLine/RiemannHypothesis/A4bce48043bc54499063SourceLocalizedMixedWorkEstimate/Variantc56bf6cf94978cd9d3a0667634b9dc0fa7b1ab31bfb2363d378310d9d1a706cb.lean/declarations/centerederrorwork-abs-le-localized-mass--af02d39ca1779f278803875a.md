# centeredErrorWork_abs_le_localized_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cadc50d-087c-a5a1-3738-cb0e004c6c42",
  "kind": "theorem",
  "lexical_name": "centeredErrorWork_abs_le_localized_mass",
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
  "slug": "centerederrorwork-abs-le-localized-mass--af02d39ca1779f278803875a",
  "source": {
    "blob": "dbf9b87498cdc68b9f518e784aa1c6cf20f17831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Variantc56bf6cf94978cd9d3a0667634b9dc0fa7b1ab31bfb2363d378310d9d1a706cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af02d39ca1779f278803875af7399e9939a309f0d38ccc88849eae44ef1685b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Variantc56bf6cf94978cd9d3a0667634b9dc0fa7b1ab31bfb2363d378310d9d1a706cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cadc50d-087c-a5a1-3738-cb0e004c6c42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredErrorWork_abs_le_localized_mass (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        localizedCenteredErrorExpMass A offset * columnEnvelopeMass A := by
  let l := Real.log (vaughanCutoff A : ℝ)
  by_cases hL : l ≤ actualJointSupportUpper A
  · dsimp only [l] at hL
    rw [centeredErrorWork_eq_support_integral A offset hA]
    simpa only [localizedCenteredErrorExpMass, max_eq_right hL] using
      actual_centered_work_window_abs_le_mass A offset l
        (actualJointSupportUpper A) hA hL
  · dsimp only [l] at hL
    rw [centeredErrorWork_zero_of_support_le_lower A offset hA (le_of_not_ge hL)]
    simp only [abs_zero, localizedCenteredErrorExpMass,
      max_eq_left (le_of_not_ge hL), intervalIntegral.integral_same, mul_zero, zero_mul, le_refl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Variantc56bf6cf94978cd9d3a0667634b9dc0fa7b1ab31bfb2363d378310d9d1a706cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Variantc56bf6cf94978cd9d3a0667634b9dc0fa7b1ab31bfb2363d378310d9d1a706cb.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbf9b87498cdc68b9f518e784aa1c6cf20f17831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
