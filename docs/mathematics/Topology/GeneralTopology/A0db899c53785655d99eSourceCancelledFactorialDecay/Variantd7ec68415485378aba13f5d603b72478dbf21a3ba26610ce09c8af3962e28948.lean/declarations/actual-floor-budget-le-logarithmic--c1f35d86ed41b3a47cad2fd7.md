# actual_floor_budget_le_logarithmic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f854fb07-078e-81ce-8dc8-1cd4b90ae09c",
  "kind": "theorem",
  "lexical_name": "actual_floor_budget_le_logarithmic",
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
  "slug": "actual-floor-budget-le-logarithmic--c1f35d86ed41b3a47cad2fd7",
  "source": {
    "blob": "6abdc04d1c568097d022a39e3e271888fde822f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variantd7ec68415485378aba13f5d603b72478dbf21a3ba26610ce09c8af3962e28948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1f35d86ed41b3a47cad2fd714bbe9b200afc6cf7fb100333c00bfd511df8974",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variantd7ec68415485378aba13f5d603b72478dbf21a3ba26610ce09c8af3962e28948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f854fb07-078e-81ce-8dc8-1cd4b90ae09c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_floor_budget_le_logarithmic {A : ℝ} (hA : 91 ≤ A) :
    (120 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
      1280 * Real.log (vaughanCutoff A : ℝ) + 3840) / A ≤
        cancelledFactorialEnvelope A := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have hU1 := (SourceStrictComplementaryLocalization.actual_cutoff_order A hA1).1
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_nonneg hU1
  have hl0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ht : Real.log (vaughanCutoff A : ℝ) ≤ 2 * Real.log A := by
    have hh := Real.log_le_log (by linarith : 0 < (vaughanCutoff A : ℝ)) hf
    simpa only [Real.log_pow, Nat.cast_ofNat] using hh
  have ht2 : (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 4 * (Real.log A) ^ 2 := by
    nlinarith
  calc
    _ ≤ (480 * Real.log A ^ 2 + 2560 * Real.log A + 3840) / A := by
      apply div_le_div_of_nonneg_right _ hp.le
      nlinarith
    _ = _ := by unfold cancelledFactorialEnvelope; ring

/-- The quantitative envelope vanishes along the original real scale domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variantd7ec68415485378aba13f5d603b72478dbf21a3ba26610ce09c8af3962e28948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A0db899c53785655d99eSourceCancelledFactorialDecay/Variantd7ec68415485378aba13f5d603b72478dbf21a3ba26610ce09c8af3962e28948.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6abdc04d1c568097d022a39e3e271888fde822f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
