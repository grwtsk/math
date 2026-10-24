# FinitePlace.prod_eq_inv_abs_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0df4d62a-f6b7-5ed5-692d-65d63b635ee7",
  "kind": "theorem",
  "lexical_name": "FinitePlace.prod_eq_inv_abs_norm",
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
  "slug": "finiteplace-prod-eq-inv-abs-norm--3fb756703dffeced3651347c",
  "source": {
    "blob": "cc53898046fbd2aeddf980b36672659c1b9e2860",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant2c28797c251acf97d5d812c071623304e9cdc752b04849687c53b690e407a277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fb756703dffeced3651347c1489aacf64c308398462e2a95d28a2deff0f43b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant2c28797c251acf97d5d812c071623304e9cdc752b04849687c53b690e407a277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0df4d62a-f6b7-5ed5-692d-65d63b635ee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FinitePlace.prod_eq_inv_abs_norm {x : K} (h_x_nezero : x ≠ 0) :
    ∏ᶠ w : FinitePlace K, w x = |(Algebra.norm ℚ) x|⁻¹ := by
  --reduce to 𝓞 K
  rcases IsFractionRing.div_surjective (𝓞 K) x with ⟨a, b, hb, rfl⟩
  apply nonZeroDivisors.ne_zero at hb
  have ha : a ≠ 0 := by
    rintro rfl
    simp at h_x_nezero
  simp_rw [map_div₀, Rat.cast_inv, Rat.cast_abs,
    finprod_div_distrib (hasFiniteMulSupport_int ha) (hasFiniteMulSupport_int hb),
    prod_eq_inv_abs_norm_int ha, prod_eq_inv_abs_norm_int hb]
  rw [← inv_eq_iff_eq_inv, inv_inv_div_inv, ← abs_div]
  congr
  have hb₀ : ((Algebra.norm ℤ) b : ℝ) ≠ 0 := by simp [hb]
  refine (eq_div_of_mul_eq hb₀ ?_).symm
  norm_cast
  rw [coe_norm_int a, coe_norm_int b, ← map_mul,
    div_mul_cancel₀ _ (RingOfIntegers.coe_ne_zero_iff.mpr hb)]

open FinitePlace in
/-- The Product Formula for the Number Field `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant2c28797c251acf97d5d812c071623304e9cdc752b04849687c53b690e407a277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant2c28797c251acf97d5d812c071623304e9cdc752b04849687c53b690e407a277.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc53898046fbd2aeddf980b36672659c1b9e2860` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
