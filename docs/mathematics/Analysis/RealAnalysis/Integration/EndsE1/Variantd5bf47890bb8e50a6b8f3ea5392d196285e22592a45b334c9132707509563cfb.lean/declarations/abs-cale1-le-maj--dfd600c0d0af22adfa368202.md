# abs_calE1_le_maj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 844,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7182fac1-38a6-502c-c4b6-1446c7b667ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf4b7995-082b-47c8-6dcc-b98c5d699e1a",
  "kind": "theorem",
  "lexical_name": "abs_calE1_le_maj",
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
  "slug": "abs-cale1-le-maj--dfd600c0d0af22adfa368202",
  "source": {
    "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 887,
    "line": 844,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfd600c0d0af22adfa368202b3e529c686c96fb08f9e1d59d993027daff80953",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf4b7995-082b-47c8-6dcc-b98c5d699e1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 844–887.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_calE1_le_maj (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F) (_hT : 0 < p.T) :
    |calE1 p F ν| ≤ ∫ q in sqI p, majK1 p F ν q := by
  have hcpt : IsCompact (sqI p) := isCompact_sqI
  have hfi : IntegrableOn (fun q => trG2integrand p F ν q - KinfIntegrand p F ν q) (sqI p) :=
    ((trG2integrand_continuous hνc hF).sub (KinfIntegrand_continuous hνc hF)).continuousOn
      |>.integrableOn_compact hcpt
  -- integrability of majK1 on the compact square
  have hρc : Continuous (rho p F) := by
    have := hF.phiHat_cont; unfold rho; fun_prop
  have hdistc : Continuous (distB p) := by unfold distB; fun_prop
  have hgc : ContinuousOn (gwt p) (Icc p.T (2 * p.T)) := by
    unfold gwt
    refine ContinuousOn.inv₀ (by fun_prop) fun τ hτ => ?_
    have := distB_nonneg (p := p) hτ; positivity
  have hρg : ContinuousOn (fun τ => rho p F τ / gwt p τ) (Icc p.T (2 * p.T)) :=
    hρc.continuousOn.div hgc fun τ hτ => (gwt_pos hτ).ne'
  have hfst : ∀ {f : ℝ → ℝ}, ContinuousOn f (Icc p.T (2 * p.T)) →
      ContinuousOn (fun q : ℝ × ℝ => f q.1) (sqI p) := fun hf =>
    hf.comp continuous_fst.continuousOn fun q hq => hq.1
  have hsnd : ∀ {f : ℝ → ℝ}, ContinuousOn f (Icc p.T (2 * p.T)) →
      ContinuousOn (fun q : ℝ × ℝ => f q.2) (sqI p) := fun hf =>
    hf.comp continuous_snd.continuousOn fun q hq => hq.2
  have hνa : ContinuousOn (fun τ => |ν τ|) (Icc p.T (2 * p.T)) := hνc.abs.continuousOn
  have hM1c : ContinuousOn (fun q : ℝ × ℝ => rho p F q.1 / gwt p q.1 * gwt p q.2) (sqI p) :=
    (hfst hρg).mul (hsnd hgc)
  have hM2c : ContinuousOn (fun q : ℝ × ℝ => gwt p q.1 * (rho p F q.2 / gwt p q.2)) (sqI p) :=
    (hfst hgc).mul (hsnd hρg)
  have hc : ContinuousOn (majK1 p F ν) (sqI p) := by
    have := ((hM1c.add hM2c).const_smul (p.L ^ 2)).mul ((hfst hνa).mul (hsnd hνa))
    refine this.congr fun q hq => ?_
    simp only [majK1, Pi.smul_apply, Pi.add_apply, Pi.mul_apply, smul_eq_mul]
  have hmi : IntegrableOn (majK1 p F ν) (sqI p) := hc.integrableOn_compact hcpt
  unfold calE1
  have step1 := norm_integral_le_integral_norm (μ := volume.restrict (sqI p))
    (fun q => trG2integrand p F ν q - KinfIntegrand p F ν q)
  rw [Real.norm_eq_abs] at step1
  refine step1.trans ?_
  refine setIntegral_mono_on hfi.norm hmi measurableSet_sqI fun q hq => ?_
  rw [Real.norm_eq_abs]
  exact abs_E1integrand_le_majK1 hF hq

variable (cϱ lam : ℝ)

/-- **Bound for 𝓔₁** (cf. §5.3): `|𝓔₁| ≤ C · L³ B² l` for `T ≥ T₀` (corollary). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean#L844).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ffe779b70efce4c0c54915abcb2286eaa0edfca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
