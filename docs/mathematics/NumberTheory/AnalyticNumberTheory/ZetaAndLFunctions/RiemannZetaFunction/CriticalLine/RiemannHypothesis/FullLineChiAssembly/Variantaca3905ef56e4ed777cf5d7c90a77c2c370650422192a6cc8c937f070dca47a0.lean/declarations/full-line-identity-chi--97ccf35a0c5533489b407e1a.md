# full_line_identity_chi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2b8da4f4226a668cb8a6102ad529304e7ba7452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/aca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d0d2922-9875-a646-4da4-f3cac6bb1c49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69df90e3-fb21-9f06-c2f5-fdbac4125a43",
  "kind": "theorem",
  "lexical_name": "full_line_identity_chi'",
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
  "slug": "full-line-identity-chi--97ccf35a0c5533489b407e1a",
  "source": {
    "blob": "d2b8da4f4226a668cb8a6102ad529304e7ba7452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 152,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97ccf35a0c5533489b407e1af3bae9330614aa952ee8971f5442ed45103d4020",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69df90e3-fb21-9f06-c2f5-fdbac4125a43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_line_identity_chi' (hq : 1 < q) (hprim : χ.IsPrimitive)
    {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3/2) :
    (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ,
        (Hfn k ((c:ℝ) + t * I) * logDeriv (completedLSym χ) (((c:ℝ):ℂ) + t * I)
          + Hfn k (1 - c - t * I) * logDeriv (completedLSym χ⁻¹) (((c:ℝ):ℂ) + t * I))
      = ∑' ρ : (LZeros (LSeam_of hq hprim)).carrier,
          ((LZeros (LSeam_of hq hprim)).mult ρ : ℂ) * Hfn k ρ := by
  obtain ⟨Cg, hCg, R, hR⟩ := exists_heights_chi hq hprim
  set f : ℂ → ℂ := fun s => Hfn k s * logDeriv (completedLSym χ) s with hf
  -- the rectangle identity at every height R_j
  have hrect : ∀ j : ℕ, ∃ Z : Finset ℂ,
      ((Z : Set ℂ) = {ρ : ℂ | IsNontrivialZeroL χ ρ ∧ -R j < ρ.im ∧ ρ.im < R j}) ∧
      RectangleIntegral' f (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I)
        = ∑ ρ ∈ Z, (zeroMultL χ ρ : ℂ) * Hfn k ρ := by
    intro j
    obtain ⟨h1, h2, h3⟩ := hR j
    exact rectangle_identity_chi hq hprim hk hkc hc1 hc2 (R := R j) (by linarith)
      (completedL_ne_zero_on_horizontals hq hprim hc1 hc2
        (fun s him hr1 hr2 => (h3 s him hr1 hr2).1))
  choose Z hZ hE using hrect
  -- the three limits
  obtain ⟨hHtop, hHbot⟩ := horizontal_vanish_chi hq hprim hk hkc hc1 hc2 hCg hR
  have hZlim := zero_sum_limit_chi hq hprim hk hkc (R := R) (fun j => ⟨(hR j).1, (hR j).2.1⟩) hZ
  have hV := tendsto_interval_FlineChi hq hprim hk hkc hc1 hc2 (R := R)
    (fun j => by linarith [(hR j).1])
  -- decomposition of the normalized rectangle integral
  have hdec : ∀ j : ℕ, RectangleIntegral' f (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I)
      = (1 / (2 * Real.pi * I) : ℂ) * (HIntegral f (1 - c) c (-(R j)) - HIntegral f (1 - c) c (R j))
        + (1 / (2 * Real.pi) : ℂ) * ∫ t in (-R j)..R j, FlineChi χ k c t := by
    intro j
    obtain ⟨e1, e2, e3, e4⟩ := corner_re_im c (R j)
    rw [RectangleIntegral', RectangleIntegral, smul_eq_mul, e1, e2, e3, e4]
    have hv := verticals_eq_chi hq hprim hk hkc hc1 hc2 (R j)
    rw [hf]
    rw [show ∀ A B V₁ V₂ : ℂ, A - B + V₁ - V₂ = (A - B) + (V₁ - V₂) from fun _ _ _ _ => by ring, hv,
      smul_eq_mul, mul_add, inv_two_pi_I_mul_I]
  -- LHS → (1/2π) ∫ F
  have hL : Tendsto (fun j : ℕ => RectangleIntegral' f (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I))
      atTop (𝓝 ((1 / (2 * Real.pi) : ℂ) * ∫ t, FlineChi χ k c t)) := by
    have h := ((hHbot.sub hHtop).const_mul (1 / (2 * Real.pi * I) : ℂ)).add
      (hV.const_mul (1 / (2 * Real.pi) : ℂ))
    simp only [sub_zero, mul_zero, zero_add] at h
    refine h.congr fun j => ?_
    rw [hdec j]
  have hL' : Tendsto (fun j : ℕ => ∑ ρ ∈ Z j, (zeroMultL χ ρ : ℂ) * Hfn k ρ)
      atTop (𝓝 ((1 / (2 * Real.pi) : ℂ) * ∫ t, FlineChi χ k c t)) :=
    hL.congr fun j => hE j
  have := tendsto_nhds_unique hL' hZlim
  exact this

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b8da4f4226a668cb8a6102ad529304e7ba7452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
