# actualXiLaplace_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:842a043d-19cd-9fe8-61b6-9ee5612190da",
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
  "slug": "actualxilaplace-integrableon--33c1297c3186b801125c7c94",
  "source": {
    "blob": "e243fad8fb0d74b25f5000dee997a3ac49a8948a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 94,
    "path": "GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33c1297c3186b801125c7c94c403acf80e3f4b943723135073b50aabc2273104",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:842a043d-19cd-9fe8-61b6-9ee5612190da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–117.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variant5d32e5e3c0434befdb9906488fbd3fb4b7772135b532f59972ec1ca2b8e09388.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e243fad8fb0d74b25f5000dee997a3ac49a8948a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
