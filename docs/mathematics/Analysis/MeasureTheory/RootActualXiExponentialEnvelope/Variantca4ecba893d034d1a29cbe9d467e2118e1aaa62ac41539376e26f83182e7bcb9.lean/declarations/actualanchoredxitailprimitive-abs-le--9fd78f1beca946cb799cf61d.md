# actualAnchoredXiTailPrimitive_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3555e0da-3ab4-e160-868c-a14c27ee2de6",
  "kind": "theorem",
  "lexical_name": "actualAnchoredXiTailPrimitive_abs_le",
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
  "slug": "actualanchoredxitailprimitive-abs-le--9fd78f1beca946cb799cf61d",
  "source": {
    "blob": "8886e9a6ae1459477ecee1fb2dde4844d314dff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 50,
    "path": "GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variantca4ecba893d034d1a29cbe9d467e2118e1aaa62ac41539376e26f83182e7bcb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fd78f1beca946cb799cf61d73807a111b1950cabef1a4a8dce688a3023ad50e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variantca4ecba893d034d1a29cbe9d467e2118e1aaa62ac41539376e26f83182e7bcb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3555e0da-3ab4-e160-868c-a14c27ee2de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAnchoredXiTailPrimitive_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |actualAnchoredXiTailPrimitive t| ≤
      2 * actualXiExponentialEnvelopeConstant * (Real.exp (t / 2) - Real.sqrt 7) := by
  let D := actualXiExponentialEnvelopeConstant
  have hi : IntervalIntegrable (fun r : ℝ => D * Real.exp (r / 2)) volume
      (Real.log 7) t :=
    (by fun_prop : Continuous (fun r : ℝ => D * Real.exp (r / 2))).intervalIntegrable _ _
  have hh := intervalIntegral.norm_integral_le_of_norm_le ht
    (Eventually.of_forall (fun r hr => by
      rw [Real.norm_eq_abs]
      exact actualXiTailTimeDensity_abs_le hr.1.le)) hi
  have hd (r : ℝ) : HasDerivAt (fun r : ℝ => 2 * D * Real.exp (r / 2))
      (D * Real.exp (r / 2)) r := by
    convert! (((hasDerivAt_id r).div_const (2 : ℝ)).exp.const_mul (2 * D)) using 1
    dsimp
    ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r) hi
  have he7 : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  rw [he, he7] at hh
  change |∫ r in Real.log 7..t, actualXiTailTimeDensity r| ≤ _
  simpa only [Real.norm_eq_abs, D, mul_sub] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variantca4ecba893d034d1a29cbe9d467e2118e1aaa62ac41539376e26f83182e7bcb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RootActualXiExponentialEnvelope/Variantca4ecba893d034d1a29cbe9d467e2118e1aaa62ac41539376e26f83182e7bcb9.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8886e9a6ae1459477ecee1fb2dde4844d314dff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
