# actualXiLaplace_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f253784-d8b3-5c90-53a7-d8d32cd143cc",
  "kind": "theorem",
  "lexical_name": "actualXiLaplace_integrableOn",
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
  "slug": "actualxilaplace-integrableon--1a388729165c1f26df5919bc",
  "source": {
    "blob": "7ddd6f31012efda2856bc2cd88c25c3126c81f6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 86,
    "path": "GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a388729165c1f26df5919bc85853a0a4e01af7420c9a40d60340ffbfca8a936",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f253784-d8b3-5c90-53a7-d8d32cd143cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLaplace_integrableOn {σ : ℝ} (hσ : 1 / 2 < σ) :
    IntegrableOn (fun t : ℝ => actualAnchoredXiTailPrimitive t * Real.exp (-σ * t))
      (Ioi (Real.log 7)) := by
  have hc : ContinuousOn
      (fun t : ℝ => actualAnchoredXiTailPrimitive t * Real.exp (-σ * t))
      (Ici (Real.log 7)) := primitive_continuousOn_Ici.mul (by fun_prop)
  have ho : (fun t : ℝ => actualAnchoredXiTailPrimitive t * Real.exp (-σ * t))
      =O[atTop] (fun t : ℝ => Real.exp (-(σ - 1 / 2) * t)) := by
    apply Asymptotics.IsBigO.of_bound (2 * actualXiExponentialEnvelopeConstant)
    filter_upwards [eventually_ge_atTop (Real.log 7)] with t ht
    have hh := actualAnchoredXiTailPrimitive_abs_le ht
    have hF : |actualAnchoredXiTailPrimitive t| ≤
        2 * actualXiExponentialEnvelopeConstant * Real.exp (t / 2) := by
      exact hh.trans (by nlinarith [coefficient_nonneg, Real.sqrt_nonneg 7])
    rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_mul,
      abs_of_pos (Real.exp_pos _), abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ (2 * actualXiExponentialEnvelopeConstant * Real.exp (t / 2)) *
          Real.exp (-σ * t) := mul_le_mul_of_nonneg_right hF (Real.exp_pos _).le
      _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring
  exact integrable_of_isBigO_exp_neg (by linarith : 0 < σ - 1 / 2) hc ho

end
end FormalResearch.RiemannHypothesis.RootActualXiExponentialEnvelope
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant248929274bc4cd4324a570ebac796e9ca10b50366920ce3b2632b1757b38d961.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ddd6f31012efda2856bc2cd88c25c3126c81f6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
