# boundary_quotient_factor_draft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2b16c1a-ff35-a232-0d14-2457a323ea63",
  "kind": "theorem",
  "lexical_name": "boundary_quotient_factor_draft",
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
  "slug": "boundary-quotient-factor-draft--8c74f5102f9c57e358b7ac3a",
  "source": {
    "blob": "10048b6982a9a9d54b4ff758d2ea2bb7fa3c33c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variantee54b34b449c8c83ef13dec62aa809a93e02dbd34f20f14fdda579bc9c717278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c74f5102f9c57e358b7ac3a0273d5e5ccbb8ed4901c6e25940fbe06bafc2545",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variantee54b34b449c8c83ef13dec62aa809a93e02dbd34f20f14fdda579bc9c717278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2b16c1a-ff35-a232-0d14-2457a323ea63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_quotient_factor_draft {f u : ℂ → ℂ} {z₀ : ℂ} (n : ℕ)
    (hu : AnalyticAt ℂ u z₀) (hu0 : u z₀ ≠ 0)
    (hfactor : f =ᶠ[𝓝 z₀] fun w ↦ (w - z₀) ^ (n + 1) * u w) :
    ∃ v : ℂ → ℂ, AnalyticAt ℂ v z₀ ∧ v z₀ ≠ 0 ∧
      (fun w ↦ f w / (f w + deriv f w)) =ᶠ[𝓝 z₀]
        (fun w ↦ (w - z₀) * (u w / v w)) := by
  let v : ℂ → ℂ := fun w ↦ ((n + 1 : ℕ) : ℂ) * u w +
    (w - z₀) * (u w + deriv u w)
  have hv : AnalyticAt ℂ v z₀ := by
    dsimp only [v]
    exact (analyticAt_const.mul hu).add
      ((analyticAt_id.sub analyticAt_const).mul (hu.add hu.deriv))
  have hv0 : v z₀ ≠ 0 := by
    dsimp only [v]
    simp only [sub_self, zero_mul, add_zero]
    exact mul_ne_zero (Nat.cast_ne_zero.mpr (by omega)) hu0
  have hf0 : f z₀ = 0 := by
    simpa using hfactor.self_of_nhds
  have hderiv : deriv f =ᶠ[𝓝 z₀] fun w ↦
      ((n + 1 : ℕ) : ℂ) * (w - z₀) ^ n * u w +
        (w - z₀) ^ (n + 1) * deriv u w := by
    filter_upwards [hfactor.deriv, hu.eventually_analyticAt] with w hw hau
    have hd := (((hasDerivAt_id w).sub_const z₀).fun_pow (n + 1)).fun_mul
      hau.differentiableAt.hasDerivAt
    exact hw.trans (by simpa using hd.deriv)
  refine ⟨v, hv, hv0, ?_⟩
  filter_upwards [hfactor, hderiv, hv.continuousAt.eventually_ne hv0] with w hfw hdfw hvw
  by_cases hw0 : w = z₀
  · subst w
    simp [hf0]
  · have hp : (w - z₀) ^ n ≠ 0 := pow_ne_zero _ (sub_ne_zero.mpr hw0)
    have hden : f w + deriv f w = (w - z₀) ^ n * v w := by
      rw [hfw, hdfw]
      dsimp only [v]
      simp only [pow_succ]
      ring
    rw [hden, hfw, pow_succ]
    field_simp [hp, hvw] <;> ring

/-- Candidate general finite positive-order result, retaining the original total quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variantee54b34b449c8c83ef13dec62aa809a93e02dbd34f20f14fdda579bc9c717278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/824df6b01a8a1880e334bf75b0f950111f3560b1a8521c6baa347c35b0a2f27fBoundaryQuotient/Variantee54b34b449c8c83ef13dec62aa809a93e02dbd34f20f14fdda579bc9c717278.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10048b6982a9a9d54b4ff758d2ea2bb7fa3c33c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
