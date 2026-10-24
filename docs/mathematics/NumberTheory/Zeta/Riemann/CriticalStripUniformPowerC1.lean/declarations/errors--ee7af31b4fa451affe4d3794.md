# errors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f38f5d1e-9416-d532-d06a-877ebe7560ae",
  "kind": "theorem",
  "lexical_name": "errors",
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
  "slug": "errors--ee7af31b4fa451affe4d3794",
  "source": {
    "blob": "743b56e22265c5c7544c87056b23c62343cc0d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee7af31b4fa451affe4d3794d51a7724bd5176c4b75f9bf2ff3859bc0ab07b95",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f38f5d1e-9416-d532-d06a-877ebe7560ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem errors {k m n : ℕ} {S : ℚ} {s : ℂ} (h : Guard k m n S)
    (hs : 0 ≤ s.re) (hn : ‖s‖ ≤ (S : ℝ)) :
    ‖power k s-poly k m n s‖ ≤ (valueRadius k m n S : ℝ) ∧
    ‖deriv (power k) s-deriv (poly k m n) s‖ ≤ (derivativeRadius k m n S : ℝ) := by
  obtain ⟨hk,hnpos,hS,hsmall,hgShort,hgLong⟩ := h
  have hshort := shorter_error hk hs hn hsmall hgShort
  constructor
  · apply shorter_error hk hs hn hsmall
    convert hgLong using 1 <;> push_cast <;> ring
  · rw [(power_hasDerivAt hk s).deriv,(poly_hasDerivAt k m n s).deriv]
    have hl := (logRecord k m hk).encloses
    change |Real.log (k : ℝ)-(logCenter k m : ℝ)| ≤ (logRadius k m : ℝ) at hl
    have hlog : ‖(logCenter k m : ℂ)-(Real.log (k : ℝ) : ℂ)‖ ≤ (logRadius k m : ℝ) := by
      rw [show (logCenter k m : ℂ)=((logCenter k m : ℝ) : ℂ) by norm_cast,
        ← Complex.ofReal_sub,Complex.norm_real,Real.norm_eq_abs,abs_sub_comm]
      exact hl
    have hp : ‖power k s‖ ≤ 1 := by
      simpa [power] using positive_base_neg_power_norm_le_one (x := (k : ℝ))
        (by exact_mod_cast hk) hs
    have heq : -(Real.log (k : ℝ) : ℂ)*power k s-slope k m n s =
        ((logCenter k m : ℂ)-(Real.log (k : ℝ) : ℂ))*power k s-
        (logCenter k m : ℂ)*(power k s-complexExpTaylor n (-s*(logCenter k m : ℂ))) := by
      unfold slope; ring
    rw [heq]
    have hd0 : (0 : ℝ) ≤ (logRadius k m : ℝ) := by exact_mod_cast logRadius_nonneg hk m
    have hb := (norm_sub_le _ _).trans (add_le_add
      (by simpa only [norm_mul,mul_one] using mul_le_mul hlog hp (norm_nonneg _) hd0)
      (by simpa only [norm_mul] using mul_le_mul_of_nonneg_left hshort
        (norm_nonneg (logCenter k m : ℂ))))
    have hnorm : ‖(logCenter k m : ℂ)‖=|(logCenter k m : ℝ)| := by
      rw [show (logCenter k m : ℂ)=((logCenter k m : ℝ) : ℂ) by norm_cast,
        Complex.norm_real,Real.norm_eq_abs]
    simpa only [hnorm,derivativeRadius,Rat.cast_add,Rat.cast_mul,Rat.cast_abs] using hb

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.UniformPowerC1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743b56e22265c5c7544c87056b23c62343cc0d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
