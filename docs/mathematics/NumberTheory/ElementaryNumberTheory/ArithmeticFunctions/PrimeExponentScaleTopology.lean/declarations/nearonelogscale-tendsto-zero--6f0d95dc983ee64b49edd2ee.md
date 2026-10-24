# nearOneLogScale_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3de42b0a-3143-b9ae-f645-060482f4f0f2",
  "kind": "theorem",
  "lexical_name": "nearOneLogScale_tendsto_zero",
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
  "slug": "nearonelogscale-tendsto-zero--6f0d95dc983ee64b49edd2ee",
  "source": {
    "blob": "33710645eeea127159970acad41da190a2445fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 126,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f0d95dc983ee64b49edd2eedcdc99baca1b6a039afe8f9dea6d87ea2f5fb934",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3de42b0a-3143-b9ae-f645-060482f4f0f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nearOneLogScale_tendsto_zero (p : PrimeIndex) :
    Tendsto (fun n => (nearOneLogScale p n : ℝ)) atTop (𝓝 0) := by
  have hp : (1 : ℝ) < p.1 := by exact_mod_cast p.2.one_lt
  have hfn : (fun n => (nearOneLogScale p n : ℝ)) =
      (fun n : ℕ => Real.log (1 + ((p.1 : ℝ)⁻¹) ^ (n + 1))) := by
    funext n
    rw [nearOneLogScale, positiveRationalLogScale_value,
      nearOnePositiveRational_value, nearOneValue]
    push_cast
    congr 1
    rw [inv_pow]
    field_simp [show (p.1 : ℝ) ≠ 0 by exact_mod_cast p.2.ne_zero]
  rw [hfn]
  have hpow : Tendsto (fun n : ℕ => ((p.1 : ℝ)⁻¹) ^ n) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_abs_lt_one (by
      rw [abs_inv, abs_of_nonneg (by positivity)]
      exact inv_lt_one_of_one_lt₀ hp)
  have hsucc : Tendsto (fun n : ℕ => ((p.1 : ℝ)⁻¹) ^ (n + 1)) atTop (𝓝 0) := by
    simpa only [pow_succ, zero_mul] using hpow.mul_const ((p.1 : ℝ)⁻¹)
  have hnear : Tendsto (fun n : ℕ => 1 + ((p.1 : ℝ)⁻¹) ^ (n + 1)) atTop (𝓝 1) := by
    simpa only [add_zero] using tendsto_const_nhds.add hsucc
  simpa only [Real.log_one, Function.comp_def] using
    (Real.continuousAt_log (by norm_num : (1 : ℝ) ≠ 0)).tendsto.comp hnear

/-- The coordinate values do not converge to zero in the discrete topology on
`ℤ`; in fact their absolute values diverge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33710645eeea127159970acad41da190a2445fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
