# eqOn_right_half_plane_of_superexponential_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0378b6cac22f885a9ebd8bc29154c7e788f5a2b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 861,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c001ac1f-eb11-d4e1-e8bd-4d6e833999df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0b4dbd1-6cfa-6af2-f7ac-d17680b7b4f6",
  "kind": "theorem",
  "lexical_name": "eqOn_right_half_plane_of_superexponential_decay",
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
  "slug": "eqon-right-half-plane-of-superexponential-decay--de5e6d0c0b14c96d02b5c2c8",
  "source": {
    "blob": "0378b6cac22f885a9ebd8bc29154c7e788f5a2b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 889,
    "line": 861,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de5e6d0c0b14c96d02b5c2c861923b01e4305e4331573b4751ecf4bcec6b6c94",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b4dbd1-6cfa-6af2-f7ac-d17680b7b4f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–889.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_right_half_plane_of_superexponential_decay {g : ℂ → E}
    (hfd : DiffContOnCl ℂ f {z | 0 < z.re}) (hgd : DiffContOnCl ℂ g {z | 0 < z.re})
    (hfexp : ∃ c < (2 : ℝ), ∃ B,
      f =O[comap Complex.abs atTop ⊓ 𝓟 {z | 0 < z.re}] fun z => expR (B * abs z ^ c))
    (hgexp : ∃ c < (2 : ℝ), ∃ B,
      g =O[comap Complex.abs atTop ⊓ 𝓟 {z | 0 < z.re}] fun z => expR (B * abs z ^ c))
    (hre : SuperpolynomialDecay atTop expR fun x => ‖f x - g x‖)
    (hfim : ∃ C, ∀ x : ℝ, ‖f (x * I)‖ ≤ C) (hgim : ∃ C, ∀ x : ℝ, ‖g (x * I)‖ ≤ C) :
    EqOn f g {z : ℂ | 0 ≤ z.re} := by
  suffices EqOn (f - g) 0 {z : ℂ | 0 ≤ z.re} by
    simpa only [EqOn, Pi.sub_apply, Pi.zero_apply, sub_eq_zero] using this
  refine' eq_zero_on_right_half_plane_of_superexponential_decay (hfd.sub hgd) _ hre _
  · set l : Filter ℂ := comap Complex.abs atTop ⊓ 𝓟 {z : ℂ | 0 < z.re}
    suffices ∀ {c₁ c₂ B₁ B₂ : ℝ}, c₁ ≤ c₂ → B₁ ≤ B₂ → 0 ≤ B₂ →
        (fun z => expR (B₁ * abs z ^ c₁)) =O[l] fun z => expR (B₂ * abs z ^ c₂) by
      rcases hfexp with ⟨cf, hcf, Bf, hOf⟩; rcases hgexp with ⟨cg, hcg, Bg, hOg⟩
      refine' ⟨max cf cg, max_lt hcf hcg, max 0 (max Bf Bg), _⟩
      refine' .sub (hOf.trans <| this _ _ _) (hOg.trans <| this _ _ _) <;> simp
    intro c₁ c₂ B₁ B₂ hc hB hB₂
    have : ∀ᶠ z : ℂ in l, 1 ≤ abs z := ((eventually_ge_atTop 1).comap _).filter_mono inf_le_left
    refine' .of_bound 1 (this.mono fun z hz => _)
    simp only [Real.norm_of_nonneg (Real.exp_pos _).le, Real.exp_le_exp, one_mul]
    have := Real.rpow_le_rpow_of_exponent_le hz hc
    gcongr
  · rcases hfim with ⟨Cf, hCf⟩; rcases hgim with ⟨Cg, hCg⟩
    exact ⟨Cf + Cg, fun x => norm_sub_le_of_le (hCf x) (hCg x)⟩
#align phragmen_lindelof.eq_on_right_half_plane_of_superexponential_decay PhragmenLindelof.eqOn_right_half_plane_of_superexponential_decay

end PhragmenLindelof
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0378b6cac22f885a9ebd8bc29154c7e788f5a2b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
