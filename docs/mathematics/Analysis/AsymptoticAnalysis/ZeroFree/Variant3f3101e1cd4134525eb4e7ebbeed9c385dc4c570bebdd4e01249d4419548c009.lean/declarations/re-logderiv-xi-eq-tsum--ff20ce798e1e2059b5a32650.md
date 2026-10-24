# re_logDeriv_xi_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05d72899-f2f7-d5c6-e7ea-3db38c73e561",
  "kind": "theorem",
  "lexical_name": "re_logDeriv_xi_eq_tsum",
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
  "slug": "re-logderiv-xi-eq-tsum--ff20ce798e1e2059b5a32650",
  "source": {
    "blob": "0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1351,
    "line": 1320,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff20ce798e1e2059b5a32650e39beb2b5428e05a7d0f612bc44e75d81bf2e14b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05d72899-f2f7-d5c6-e7ea-3db38c73e561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1320–1351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_logDeriv_xi_eq_tsum {s : ℂ} (hxi : xi s ≠ 0) :
    (logDeriv xi s).re = ∑' ρ : zetaZeroConfig.carrier,
      (zeroMult ρ : ℝ) * ((s.re - (ρ : ℂ).re) / Complex.normSq (s - ρ)) := by
  have hmain := congrArg Complex.re (logDeriv_xi_sub_reflect hxi)
  rw [logDeriv_xi_reflect, Complex.sub_re, Complex.neg_re, Complex.conj_re, sub_neg_eq_add,
    Complex.re_tsum (summable_wt hxi)] at hmain
  have hterm : ∀ ρ : zetaZeroConfig.carrier, ((zeroMult ρ : ℂ) * wt s ρ).re
      = (zeroMult ρ : ℝ) * ((1 : ℂ) / (s - ρ)).re
        + (zeroMult ρ : ℝ) * ((1 : ℂ) / (s - reflect ρ)).re := by
    intro ρ
    rw [show (zeroMult (ρ : ℂ) : ℂ) = ((zeroMult (ρ : ℂ) : ℝ) : ℂ) by norm_cast,
      Complex.re_ofReal_mul, re_wt]
    ring
  simp_rw [hterm] at hmain
  have hS1 : Summable fun ρ : zetaZeroConfig.carrier =>
      (zeroMult ρ : ℝ) * ((1 : ℂ) / (s - ρ)).re :=
    (summable_re_one_div hxi).congr (fun ρ => by rw [re_one_div])
  have hS2 : Summable fun ρ : zetaZeroConfig.carrier =>
      (zeroMult ρ : ℝ) * ((1 : ℂ) / (s - reflect ρ)).re := by
    have := (Equiv.summable_iff reflectEquiv (f := fun ρ : zetaZeroConfig.carrier =>
      (zeroMult ρ : ℝ) * ((1 : ℂ) / (s - ρ)).re)).mpr hS1
    refine this.congr (fun ρ => ?_)
    have hm : zeroMult (reflect (ρ : ℂ)) = zeroMult ρ := zetaZeroConfig.mult_reflect ρ ρ.2
    simp only [Function.comp_apply, reflectEquiv, Equiv.coe_fn_mk, hm]
  rw [hS1.tsum_add hS2, tsum_re_one_div_reflect, ← two_mul] at hmain
  have : (logDeriv xi s).re
      = ∑' ρ : zetaZeroConfig.carrier, (zeroMult ρ : ℝ) * ((1 : ℂ) / (s - ρ)).re := by
    linarith
  rw [this]
  exact tsum_congr (fun ρ => by rw [re_one_div])

/-- ζ has a nontrivial zero (Riemann–von Mangoldt: N(T,2T) ≫ T log T). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean#L1320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
