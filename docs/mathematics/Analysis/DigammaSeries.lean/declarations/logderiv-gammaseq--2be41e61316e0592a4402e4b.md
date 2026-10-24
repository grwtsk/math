# logDeriv_gammaSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:babda9a3-3d6e-8606-732b-0ecc49e3e474",
  "kind": "theorem",
  "lexical_name": "logDeriv_gammaSeq",
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
  "slug": "logderiv-gammaseq--2be41e61316e0592a4402e4b",
  "source": {
    "blob": "c9d7301274e0a4219c4690105ce02dd71e8ac6d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 41,
    "path": "GRWTSK/Analysis/DigammaSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2be41e61316e0592a4402e4b8abe7cf2e9bb3a133314275d086563298b8e5230",
  "verification": {
    "reference": "docs/verification/Analysis/DigammaSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:babda9a3-3d6e-8606-732b-0ecc49e3e474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_gammaSeq {z : ℂ} (hz : 0 < z.re) {n : ℕ} (hn : n ≠ 0) :
    logDeriv (fun w ↦ Complex.GammaSeq w n) z =
      Complex.log n - ∑ j ∈ Finset.range (n + 1), (z + j)⁻¹ := by
  have hnC : (n : ℂ) ≠ 0 := by exact_mod_cast hn
  have hf : (n.factorial : ℂ) ≠ 0 := by exact_mod_cast n.factorial_ne_zero
  have hp : (∏ j ∈ Finset.range (n + 1), (z + j)) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun j _ ↦ add_nat_ne_zero hz j
  unfold Complex.GammaSeq
  rw [logDeriv_div (f := fun w : ℂ ↦ (n : ℂ) ^ w * n.factorial)
    (g := fun w : ℂ ↦ ∏ j ∈ Finset.range (n + 1), (w + j)) z
    (mul_ne_zero (Complex.cpow_ne_zero_iff.mpr (Or.inl hnC)) hf) hp
    ((differentiableAt_id.const_cpow (Or.inl hnC)).mul_const _)
    (by fun_prop), logDeriv_mul_const _ _ hf]
  rw [logDeriv_prod (fun j _ ↦ add_nat_ne_zero hz j) (by intros; fun_prop)]
  have hder : logDeriv (fun w : ℂ ↦ (n : ℂ) ^ w) z = Complex.log n := by
    rw [logDeriv_apply, (Complex.hasStrictDerivAt_const_cpow (Or.inl hnC)).hasDerivAt.deriv]
    exact mul_div_cancel_left₀ _ (Complex.cpow_ne_zero_iff.mpr (Or.inl hnC))
  rw [hder]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  simp [logDeriv_apply]

/-- The real reciprocal difference is the source's positive kernel, including `b = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/DigammaSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DigammaSeries.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d7301274e0a4219c4690105ce02dd71e8ac6d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
