# window_bound_implies_energy_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9221352-aee8-ff1e-cbb8-80984aa167f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da9f8e60-91dc-4c14-1610-8211930821d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2b8eca3-5dec-9c0a-81ee-ac919697aee8",
  "kind": "theorem",
  "lexical_name": "window_bound_implies_energy_polynomial",
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
  "slug": "window-bound-implies-energy-polynomial--af67e6795027061ac52efe42",
  "source": {
    "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 109,
    "path": "GRWTSK/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af67e6795027061ac52efe42f10cad8d29953e45992ef2bf8b65d8926a5dd8b2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2b8eca3-5dec-9c0a-81ee-ac919697aee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem window_bound_implies_energy_polynomial {b C q : ℝ}
    (hb : 0 < b) (hC : 0 ≤ C) (hq : 0 ≤ q)
    (hwindow : ∀ T : ℝ, b ≤ T → localEnergy b T ≤ C*(1+T)^q) :
    PolynomialBound energy := by
  have hn : ∀ n : ℕ, energy ((n:ℝ)*b) ≤ C*(n:ℝ)*(1+(n:ℝ)*b)^q := by
    intro n
    induction n with
    | zero => simp [energy_zero]
    | succ n ih =>
      have hnb : b ≤ ((n+1:ℕ):ℝ)*b := by
        have hn := Nat.cast_nonneg (α := ℝ) n
        push_cast
        nlinarith
      have hstep := energy_step hb.le hnb
      have he : ((n+1:ℕ):ℝ)*b-b = (n:ℝ)*b := by push_cast; ring
      rw [he] at hstep
      rw [hstep]
      have hw := hwindow (((n+1:ℕ):ℝ)*b) hnb
      have hp : (1+(n:ℝ)*b)^q ≤ (1+((n+1:ℕ):ℝ)*b)^q :=
        Real.rpow_le_rpow (by positivity) (by push_cast; nlinarith) hq
      have hi := ih.trans (mul_le_mul_of_nonneg_left hp (by positivity : 0 ≤ C*(n:ℝ)))
      calc
        _ ≤ C*(n:ℝ)*(1+((n+1:ℕ):ℝ)*b)^q+
          C*(1+((n+1:ℕ):ℝ)*b)^q := add_le_add hi hw
        _ = _ := by push_cast; ring
  refine ⟨C*(1+b⁻¹)*(1+b)^q,q+1,by positivity,by linarith,?_⟩
  intro T hT
  let n : ℕ := ⌈T/b⌉₊
  have hTn : T ≤ (n:ℝ)*b := (div_le_iff₀ hb).mp (Nat.le_ceil (T/b))
  have hnT : (n:ℝ) ≤ T/b+1 := (Nat.ceil_lt_add_one (div_nonneg hT hb.le)).le
  have hgrid : (n:ℝ)*b ≤ T+b := by
    have h := mul_le_mul_of_nonneg_right hnT hb.le
    field_simp at h
    nlinarith
  have hcount : (n:ℝ) ≤ (1+b⁻¹)*(1+T) := by
    rw [div_eq_mul_inv] at hnT
    nlinarith [inv_nonneg.mpr hb.le]
  have hscale : 1+(n:ℝ)*b ≤ (1+b)*(1+T) := by
    nlinarith [mul_nonneg hb.le hT]
  have hpow : (1+(n:ℝ)*b)^q ≤ ((1+b)*(1+T))^q :=
    Real.rpow_le_rpow (by positivity) hscale hq
  calc
    energy T ≤ energy ((n:ℝ)*b) := energy_monotone hTn
    _ ≤ C*(n:ℝ)*(1+(n:ℝ)*b)^q := hn n
    _ ≤ C*((1+b⁻¹)*(1+T))*((1+b)*(1+T))^q :=
      mul_le_mul (mul_le_mul_of_nonneg_left hcount hC) hpow (by positivity) (by positivity)
    _ = C*(1+b⁻¹)*(1+b)^q*(1+T)^(q+1) := by
      rw [Real.mul_rpow (by positivity : 0 ≤ 1+b) (by linarith : 0 ≤ 1+T),
        Real.rpow_add (by linarith : 0 < 1+T), Real.rpow_one]
      ring

end LocalEnergyTelescope
end HSSCP04
#print axioms HSSCP04.LocalEnergyTelescope.energy_step
#print axioms HSSCP04.LocalEnergyTelescope.floor_telescope
#print axioms HSSCP04.LocalEnergyTelescope.grid_telescope
#print axioms HSSCP04.LocalEnergyTelescope.window_bound_implies_energy_polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beb92fcfbed12582b897e7cb58f05419f05979bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
