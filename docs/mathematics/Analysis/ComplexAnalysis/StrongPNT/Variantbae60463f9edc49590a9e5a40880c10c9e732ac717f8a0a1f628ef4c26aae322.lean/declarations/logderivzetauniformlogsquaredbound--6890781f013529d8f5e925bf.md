# LogDerivZetaUniformLogSquaredBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09487322-68bc-d96a-c00c-3de9e330979f",
  "kind": "theorem",
  "lexical_name": "LogDerivZetaUniformLogSquaredBound",
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
  "slug": "logderivzetauniformlogsquaredbound--6890781f013529d8f5e925bf",
  "source": {
    "blob": "febb261e8c76e0d4aec8c8de1ca02559ac821fcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1795,
    "line": 1756,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6890781f013529d8f5e925bf42eb2febaa29e29a78d6ae3942911aa5ec6c35a0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09487322-68bc-d96a-c00c-3de9e330979f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1756–1795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LogDerivZetaUniformLogSquaredBound : ∃ (C : ℝ) (_Cnonneg : 0 ≤ C),
    ∀ (σ t : ℝ), 3 < |t| → σ ∈ Set.Ici (1 - F / Real.log |t|) →
      ‖ζ' (σ + t * I) / ζ (σ + t * I)‖ ≤ C * Real.log |t| ^ 2 := by
  obtain ⟨C1, hC1⟩ := LogDerivZetaUniformLogSquaredBoundStripSpec
  obtain ⟨C2, hC2⟩ := LogDerivZetaBdd_of_Re_ge_three_halves
  use max C1 C2, le_max_of_le_left hC1.1
  intro σ t ht hσ
  by_cases hσ' : σ ≤ 3 / 2
  · exact (hC1.2 σ t (by grind) ⟨hσ, hσ'⟩).trans
      (mul_le_mul_of_nonneg_right (le_max_left _ _) (sq_nonneg _))
  · refine (hC2 _ ?_).trans ?_
    · norm_num; linarith
    · have hC2pos := (norm_nonneg _).trans (hC2 2 (by norm_num))
      exact (le_max_right _ _).trans (le_mul_of_one_le_right
        (le_max_of_le_right (by grind))
        (one_le_pow₀ (by
          rw [Real.le_log_iff_exp_le (by grind)]
          exact Real.exp_one_lt_d9.le.trans (by grind))))

@[blueprint
  (title := "LogDerivZetaLogSquaredBoundSmallt")
  (statement := /--
    For $T>0$ and $\sigma'=1-\delta_T/3=1-F/\log T$, if $|t|\leq T$ then we have that
    $$\left|\frac{\zeta'}{\zeta}(\sigma'+it)\right|\ll\log^2(2+T).$$
  -/)
  (proof := /--
    Note that if $|t|\geq 3$ then from Theorem \ref{LogDerivZetaUniformLogSquaredBound} we have that
    $$\left|\frac{\zeta'}{\zeta}(\sigma'+it)\right|\ll\log^2|t|\leq\log^2T\leq\log^2(2+T).$$
    Otherwise, if $|t|\leq 3$, then from Theorem \ref{riemannZetaLogDerivResidue}
    and applying the triangle inequality we know
    $$\left|\frac{\zeta'}{\zeta}(\sigma'+it)\right|
      \leq\frac{1}{|(\sigma'-1)+it|}+C\leq\frac{\log T}{F}+C$$
    where $C\geq 0$. Thus, we have that
    $$\left|\frac{\zeta'}{\zeta}(\sigma'+it)\right|
      \leq\left(\frac{\log T}{F\,\log 2}+\frac{C}{\log 2}\right)\,\log(2+|t|)
      \leq\left(\frac{\log(2+T)}{F\,\log 2}+\frac{C}{\log 2}\right)\log(2+T)
      \ll\log^2(2+T).$$
  -/)
  (proofUses := ["LogDerivZetaUniformLogSquaredBound", "riemannZetaLogDerivResidue"])
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean#L1756).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `febb261e8c76e0d4aec8c8de1ca02559ac821fcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
