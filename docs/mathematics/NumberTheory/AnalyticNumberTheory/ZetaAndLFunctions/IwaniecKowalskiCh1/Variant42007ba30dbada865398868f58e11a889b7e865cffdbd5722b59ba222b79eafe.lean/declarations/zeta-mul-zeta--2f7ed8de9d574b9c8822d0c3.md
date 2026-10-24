# zeta_mul_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96600cb6-9fec-e604-2b69-caad4d427bb6",
  "kind": "theorem",
  "lexical_name": "zeta_mul_zeta",
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
  "slug": "zeta-mul-zeta--2f7ed8de9d574b9c8822d0c3",
  "source": {
    "blob": "f10936542ce26f4e3d13f8c80e4a797c94ed7c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f7ed8de9d574b9c8822d0c3f8df92f861e32f5f5e5966ef1e4c66b37186e95e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96600cb6-9fec-e604-2b69-caad4d427bb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_mul_zeta : (ζ : ArithmeticFunction ℕ) * ζ = τ := by
  ext n; unfold zeta tau sigma
  simp only [mul_apply, coe_mk, mul_ite, mul_zero, mul_one, pow_zero, sum_const, smul_eq_mul]
  have key : ∀ x ∈ n.divisorsAntidiagonal, (if x.2 = 0 then 0 else if x.1 = 0 then 0 else 1) = 1 := by
    intro ⟨a, b⟩ hx
    have := Nat.mem_divisorsAntidiagonal.mp hx
    simp [mul_ne_zero_iff.mp (this.1 ▸ this.2)]
  simp_rw [Finset.sum_congr rfl key, Finset.card_eq_sum_ones, Finset.sum_const]
  simp only [smul_eq_mul, mul_one, ← Nat.map_div_right_divisors]
  exact card_map { toFun := fun d ↦ (d, n / d), inj' := fun x x_1 ↦ congr_arg Prod.fst }

/-- The L-series of $\tau$ equals the square of the Riemann zeta function for $\Re(s) > 1$. -/
@[blueprint
  "LSeries_tau_eq_riemannZeta_sq"
  (title := "LSeries tau eq riemannZeta sq")
  (statement := /-- The L-series of $\tau$ equals the square of the Riemann zeta function for $\Re(s) > 1$. -/)
  (proof := /--
  From the previous theorem, we have that the Dirichlet convolution of $\zeta$ with itself is $\tau$.
  Taking L-series on both sides, we get $L(\tau, s) = L(\zeta, s) \cdot L(\zeta, s)$.
  Since $L(\zeta, s)$ is the Riemann zeta function $\zeta(s)$, we conclude that
  $L(\tau, s) = \zeta(s)^2$ for $\Re(s) > 1$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10936542ce26f4e3d13f8c80e4a797c94ed7c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
