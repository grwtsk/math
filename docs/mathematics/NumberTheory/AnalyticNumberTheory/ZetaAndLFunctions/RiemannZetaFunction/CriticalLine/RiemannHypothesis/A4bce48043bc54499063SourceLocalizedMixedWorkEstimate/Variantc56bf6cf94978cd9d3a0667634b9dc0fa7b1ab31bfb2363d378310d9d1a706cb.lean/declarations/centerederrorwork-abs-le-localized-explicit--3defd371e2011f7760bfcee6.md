# centeredErrorWork_abs_le_localized_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8fe5da3-ee6f-88a8-cb38-64e097981d2c",
  "kind": "theorem",
  "lexical_name": "centeredErrorWork_abs_le_localized_explicit",
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
  "slug": "centerederrorwork-abs-le-localized-explicit--3defd371e2011f7760bfcee6",
  "source": {
    "blob": "dbf9b87498cdc68b9f518e784aa1c6cf20f17831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 123,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Variantc56bf6cf94978cd9d3a0667634b9dc0fa7b1ab31bfb2363d378310d9d1a706cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3defd371e2011f7760bfcee60ec8dea71650a36f26d1768449c132edbc9337d1",
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

Occurrence: `result:c8fe5da3-ee6f-88a8-cb38-64e097981d2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredErrorWork_abs_le_localized_explicit (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤
      4 * (Real.log 4 + 4 + Real.log 2 + |offset|) * Real.exp A *
        (162826 / (7623 * A ^ 2) + 1 / 4) := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  let C := Real.log 4 + 4 + Real.log 2 + |offset|
  let a : ℝ := ((vaughanCutoff A + 1 : ℕ) : ℝ)
  have hc : 0 ≤ c := by dsimp only [c]; positivity
  have hC : 0 ≤ C := by dsimp only [C]; positivity
  have ha : 0 < a := by dsimp only [a]; positivity
  have hAa : A ≤ Real.sqrt a := by
    have hf : A ^ 2 < a := by
      simpa only [a, vaughanCutoff, Nat.cast_add, Nat.cast_one] using
        Nat.lt_floor_add_one (A ^ 2)
    nlinarith [Real.sq_sqrt ha.le, Real.sqrt_nonneg a]
  have hratio : A / Real.sqrt a ≤ 1 := (div_le_one (Real.sqrt_pos.2 ha)).2 hAa
  calc
    _ ≤ c * localizedCenteredErrorExpMass A offset * columnEnvelopeMass A :=
      centeredErrorWork_abs_le_localized_mass A offset hA
    _ ≤ c * localizedCenteredErrorExpMass A offset * (2 * A) :=
      mul_le_mul_of_nonneg_left (columnEnvelopeMass_le A hA)
        (mul_nonneg hc (localizedCenteredErrorExpMass_nonneg A offset))
    _ ≤ c * (2 * C * Real.exp A / Real.sqrt a) * (2 * A) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (localizedCenteredErrorExpMass_le A offset hA) hc)
        (by linarith)
    _ = (4 * C * Real.exp A * c) * (A / Real.sqrt a) := by ring
    _ ≤ (4 * C * Real.exp A * c) * 1 :=
      mul_le_mul_of_nonneg_left hratio (by positivity)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Variantc56bf6cf94978cd9d3a0667634b9dc0fa7b1ab31bfb2363d378310d9d1a706cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Variantc56bf6cf94978cd9d3a0667634b9dc0fa7b1ab31bfb2363d378310d9d1a706cb.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbf9b87498cdc68b9f518e784aa1c6cf20f17831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
