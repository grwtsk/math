# familyHyps_flat_gevrey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b37f71bf4f4eb930e3f8ec89b185a7f51ac803b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a99bdd5dc744328370d7439254cc149421e4f477e10088c656264d59f422be9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6eb57f71-05a1-2616-5685-3f90ccdab57a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c1eed55-16b0-4e87-96b0-75840b0d8c0d",
  "kind": "theorem",
  "lexical_name": "familyHyps_flat_gevrey",
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
  "slug": "familyhyps-flat-gevrey--1cd011877152d5dd10390149",
  "source": {
    "blob": "b37f71bf4f4eb930e3f8ec89b185a7f51ac803b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyFlat/Varianta99bdd5dc744328370d7439254cc149421e4f477e10088c656264d59f422be9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cd011877152d5dd103901497dc3f504ca7208dafa7ca3d69b049a2b435b7331",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyFlat/Varianta99bdd5dc744328370d7439254cc149421e4f477e10088c656264d59f422be9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c1eed55-16b0-4e87-96b0-75840b0d8c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem familyHyps_flat_gevrey {s A B : ℝ} {ϱ : ℝ → ℝ} (hϱ : Taper.GevreyProfile s A B ϱ) {lam : ℝ}
    (h0 : 0 < lam) (h1 : lam < 1) : FamilyHyps (fun _ => paramsOf ϱ lam) := by
  have hP : (paramsOf ϱ lam).Valid := paramsOf_valid hϱ.taper h0 h1.le
  have hA := hϱ.A_pos
  have hB := hϱ.B_pos
  refine ⟨⟨lam, h0, h1, fun _ => rfl⟩, ?_⟩
  obtain ⟨T₀, hT₀⟩ := Filter.eventually_atTop.mp
    ((Assembly.tendsto_L_atTop (paramsOf ϱ lam) hP.lam_pos).eventually_ge_atTop 8)
  refine ⟨∑ k ∈ Finset.Icc (1:ℕ) 3, 2 * B * (1:ℝ) * (A / 1) ^ k * ((k : ℕ) : ℝ) ^ (s * (k : ℕ)), T₀,
    fun T hT => ?_⟩
  have hL8 : 8 ≤ (paramsOf ϱ lam).L T := hT₀ T hT
  have h8 : 8 * (paramsOf ϱ lam).w ≤ (paramsOf ϱ lam).L T := by
    show 8 * (1:ℝ) ≤ (paramsOf ϱ lam).L T; linarith
  have hwL : 2 * (1:ℝ) ≤ (paramsOf ϱ lam).L T := by linarith
  have hcd : ContDiff ℝ 3 ((paramsOf ϱ lam).phi T) := Params.phi_contDiff hP h8
  refine ⟨hcd, closure_minimal (Params.phi_support_subset hP) isClosed_Icc,
    fun u => Params.phi_even' u,
    fun u => abs_le.mpr ⟨by linarith [Params.phi_nonneg hP (T := T) u], Params.phi_le_one hP u⟩,
    fun j hj1 hj3 => ⟨?_, ?_⟩⟩
  · exact ((hcd.continuous_iteratedDeriv j (by exact_mod_cast hj3)).integrable_of_hasCompactSupport
      (hasCompactSupport_iteratedDeriv (Params.phi_hasCompactSupport hP) j))
  · have hb := Taper.integral_abs_iteratedDeriv_phi_le (L := (paramsOf ϱ lam).L T) hϱ one_pos hwL hj1
    refine hb.trans ?_
    refine Finset.single_le_sum (f := fun k : ℕ => 2 * B * (1:ℝ) * (A / 1) ^ k * ((k : ℕ) : ℝ) ^ (s * (k : ℕ)))
      (fun k _ => by positivity) (Finset.mem_Icc.mpr ⟨hj1, hj3⟩)

end XiPrime
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyFlat/Varianta99bdd5dc744328370d7439254cc149421e4f477e10088c656264d59f422be9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyFlat/Varianta99bdd5dc744328370d7439254cc149421e4f477e10088c656264d59f422be9a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37f71bf4f4eb930e3f8ec89b185a7f51ac803b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
