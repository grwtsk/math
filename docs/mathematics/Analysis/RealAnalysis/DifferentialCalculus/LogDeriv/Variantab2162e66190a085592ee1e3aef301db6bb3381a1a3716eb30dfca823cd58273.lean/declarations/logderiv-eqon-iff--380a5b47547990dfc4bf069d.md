# logDeriv_eqOn_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ce1ebf-13e4-2d1c-9330-bc1cc0ee8487",
  "kind": "lemma",
  "lexical_name": "logDeriv_eqOn_iff",
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
  "slug": "logderiv-eqon-iff--380a5b47547990dfc4bf069d",
  "source": {
    "blob": "32d51258281aedfdf1aa0faad77ee25bebcd1e77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 162,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:380a5b47547990dfc4bf069d55c1c51047778abe5342e3c1c026f2860bb0640e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ce1ebf-13e4-2d1c-9330-bc1cc0ee8487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_eqOn_iff [IsRCLikeNormedField 𝕜] {f g : 𝕜 → 𝕜'} {s : Set 𝕜}
    (hf : DifferentiableOn 𝕜 f s) (hg : DifferentiableOn 𝕜 g s)
    (hs2 : IsOpen s) (hsc : IsPreconnected s) (hgn : ∀ x ∈ s, g x ≠ 0) (hfn : ∀ x ∈ s, f x ≠ 0) :
    EqOn (logDeriv f) (logDeriv g) s ↔ ∃ z : 𝕜', z ≠ 0 ∧ EqOn f (z • g) s := by
  rcases s.eq_empty_or_nonempty with rfl | ⟨t, ht⟩
  · simpa using ⟨1, one_ne_zero⟩
  · constructor
    · refine fun h ↦ ⟨f t * (g t)⁻¹, by grind, fun y hy ↦ ?_⟩
      have hderiv : s.EqOn (deriv (f * g⁻¹)) (deriv f * g⁻¹ - f * deriv g / g ^ 2) := by
        intro z hz
        rw [deriv_mul (hf.differentiableAt (hs2.mem_nhds hz)) ((hg.differentiableAt
          (hs2.mem_nhds hz)).inv (hgn z hz))]
        simp only [Pi.inv_apply, show g⁻¹ = (fun x => x⁻¹) ∘ g by rfl, deriv_inv, neg_mul,
          deriv_comp z (differentiableAt_inv (hgn z hz)) (hg.differentiableAt (hs2.mem_nhds hz)),
          mul_neg, Pi.sub_apply, Pi.mul_apply, comp_apply, Pi.div_apply, Pi.pow_apply]
        ring
      have hfg : EqOn (deriv (f * g⁻¹)) 0 s := hderiv.trans fun z hz ↦ by
        simp only [Pi.sub_apply, Pi.mul_apply, Pi.inv_apply, Pi.div_apply, Pi.pow_apply,
          Pi.zero_apply]
        grind [logDeriv_apply, Pi.div_apply]
      let := IsRCLikeNormedField.rclike 𝕜
      obtain ⟨a, ha⟩ := hs2.exists_is_const_of_deriv_eq_zero hsc (hf.mul (hg.inv hgn)) hfg
      grind [Pi.mul_apply, Pi.inv_apply, Pi.smul_apply, smul_eq_mul]
    · rintro ⟨z, hz0, hz⟩ x hx
      simp [logDeriv_apply, hz.deriv hs2 hx, hz hx, deriv_const_smul _
        (hg.differentiableAt (hs2.mem_nhds hx)), mul_div_mul_left (deriv g x) (g x) hz0]


/-- At a simple zero of an analytic function, the logarithmic residue
`(w - x) * logDeriv f w` tends to 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantab2162e66190a085592ee1e3aef301db6bb3381a1a3716eb30dfca823cd58273.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32d51258281aedfdf1aa0faad77ee25bebcd1e77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
