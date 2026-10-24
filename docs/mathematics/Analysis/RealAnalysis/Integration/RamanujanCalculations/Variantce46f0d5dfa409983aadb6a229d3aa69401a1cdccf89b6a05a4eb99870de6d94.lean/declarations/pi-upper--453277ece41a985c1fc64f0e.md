# pi_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3200e7c9-7761-634b-d56b-1c927c16292f",
  "kind": "theorem",
  "lexical_name": "pi_upper",
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
  "slug": "pi-upper--453277ece41a985c1fc64f0e",
  "source": {
    "blob": "570e76c38ddee829cb5740278651fdf506e91cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 442,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:453277ece41a985c1fc64f0e860423a2868eb546e3b370b5a99f4a56cad2e573",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3200e7c9-7761-634b-d56b-1c927c16292f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_upper (a : ℝ → ℝ) (htheta : ∀ x ≥ 2, |θ x - x| * log x ^ 5 ≤ x * a x) (x : ℝ)
    (ha : IntegrableOn (fun t ↦ a t / log t ^ 7) (Icc 2 x) volume)
    (hx : 2 ≤ x) :
    pi x ≤ x / log x + a x * x / log x ^ 6 + (∫ t in Icc 2 x, 1 / log t ^ 2)
    + ∫ t in Icc 2 x, a t / log t ^ 7 := calc
  _ = pi x - Li x + Li x := by ring
  _ = x / log x + (θ x - x) / log x + (∫ (t : ℝ) in Icc 2 x, 1 / log t ^ 2) +
     ∫ (t : ℝ) in Icc 2 x, (θ t - t) / (t * log t ^ 2) := by
     rw [pi_error_identity x hx, Li_eq_sub_add_integral x hx]; ring
  _ ≤ _ := by
    gcongr ?_ + ?_ + ?_ + ?_
    · calc
      _ = (θ x - x) * log x ^ 5 / log x ^ 6 := by field_simp
      _ ≤ |θ x - x| * log x ^ 5 / log x ^ 6 := by
        gcongr
        · exact pow_nonneg (log_nonneg (by grind)) 5
        · exact le_abs_self _
      _ ≤ _ := by grw [htheta x hx, mul_comm]
    · refine setIntegral_mono_on (integrable_theta x) ha measurableSet_Icc (fun t ht => ?_)
      calc
      _ = (θ t - t) * log t ^ 5 / (t * log t ^ 7) := by field_simp
      _ ≤ |θ t - t| * log t ^ 5 / (t * log t ^ 7) := by
        gcongr
        · exact mul_nonneg (by grind) (pow_nonneg (log_nonneg (by grind)) 7)
        · exact pow_nonneg (log_nonneg (by grind)) 5
        · exact le_abs_self _
      _ ≤ _ := by
        grw [htheta t ht.1, mul_comm]
        · field_simp (disch := grind); rfl
        · exact mul_nonneg (by grind) (pow_nonneg (log_nonneg (by grind)) 7)

@[blueprint
  "ramanujan-pi-lower"
  (title := "Lower bound for pi")
  (statement := /-- Suppose that for $x \geq 2$ we have $|\theta(x)-x|\log^{5} x\leq x a(x)$. Then
$$
\pi(x)\geq \frac{x}{\log x} -a(x)\frac{x}{\log^6 x}+\int_2^x\frac{d t}{\log^2 t}-\int_2^x\frac{a(t)}{\log^7 t}\ dt.
$$ (cf. \cite[\S 5]{PT2021})
-/)
  (proof := /-- Follows from Lemma \ref{pi-error-identity} and the triangle inequality. -/)
  (latexEnv := "sublemma")
  (discussion := 989)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570e76c38ddee829cb5740278651fdf506e91cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
