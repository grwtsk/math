# familyHyps_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84bd853e-f0a9-fd12-7a0e-1fc70982f75f",
  "kind": "theorem",
  "lexical_name": "familyHyps_flat",
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
  "slug": "familyhyps-flat--ec1343084437379e6c48dfed",
  "source": {
    "blob": "c8f4e074d5bf4bcdafab14cf356cbadc1f486fdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 263,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variant26c71dff4112d523bb70d0ff929499eebd4d8ba6ba55e66f08034598976494d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec1343084437379e6c48dfed6ef9a9041f528fb90b88727e9888c1fb22e413c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variant26c71dff4112d523bb70d0ff929499eebd4d8ba6ba55e66f08034598976494d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84bd853e-f0a9-fd12-7a0e-1fc70982f75f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem familyHyps_flat {P : Params} (hP : P.Valid) (hlam : P.lam < 1) : FamilyHyps (fun _ => P) := by
  obtain ⟨B, hB0, hB⟩ := exists_deriv_bound hP.taper
  have hw1 : 1 ≤ P.w := hP.one_le_w
  have hw : 0 < P.w := by linarith
  refine ⟨⟨P.lam, hP.lam_pos, hlam, fun _ => rfl⟩, ?_⟩
  obtain ⟨T₀, hT₀⟩ := Filter.eventually_atTop.mp
    ((Assembly.tendsto_L_atTop P hP.lam_pos).eventually_ge_atTop (8 * P.w))
  refine ⟨2 * B, T₀, fun T hT => ?_⟩
  have h8 : 8 * P.w ≤ P.L T := hT₀ T hT
  have hwL : 2 * P.w ≤ P.L T := by linarith
  have hcd : ContDiff ℝ 3 (P.phi T) := Params.phi_contDiff hP h8
  refine ⟨hcd, closure_minimal (Params.phi_support_subset hP) isClosed_Icc,
    fun u => Params.phi_even' u,
    fun u => abs_le.mpr ⟨by linarith [Params.phi_nonneg hP (T := T) u], Params.phi_le_one hP u⟩,
    fun j hj1 hj3 => ⟨?_, ?_⟩⟩
  · exact ((hcd.continuous_iteratedDeriv j (by exact_mod_cast hj3)).integrable_of_hasCompactSupport
      (hasCompactSupport_iteratedDeriv' (Params.phi_hasCompactSupport hP) j))
  · have hb := integral_abs_iteratedDeriv_phi_le (L := P.L T) (w := P.w) hP.taper hB0 hB hw hwL hj1 hj3
    refine hb.trans ?_
    -- 2·(w⁻¹)^j·B·w ≤ 2B  (w ≥ 1, j ≥ 1)
    have hwj : (P.w⁻¹) ^ j * P.w ≤ 1 := by
      obtain ⟨i, rfl⟩ : ∃ i, j = i + 1 := ⟨j - 1, by omega⟩
      rw [pow_succ, mul_assoc, inv_mul_cancel₀ hw.ne', mul_one]
      exact pow_le_one₀ (by positivity) (inv_le_one_of_one_le₀ hw1)
    nlinarith

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variant26c71dff4112d523bb70d0ff929499eebd4d8ba6ba55e66f08034598976494d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variant26c71dff4112d523bb70d0ff929499eebd4d8ba6ba55e66f08034598976494d7.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8f4e074d5bf4bcdafab14cf356cbadc1f486fdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
