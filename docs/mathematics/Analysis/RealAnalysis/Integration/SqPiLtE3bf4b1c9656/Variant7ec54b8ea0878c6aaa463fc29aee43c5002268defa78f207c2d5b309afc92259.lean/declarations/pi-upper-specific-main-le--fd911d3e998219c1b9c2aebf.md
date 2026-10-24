# pi_upper_specific_main_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9f09b0e-550d-4d26-00a8-150c58f8bcb7",
  "kind": "lemma",
  "lexical_name": "pi_upper_specific_main_le",
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
  "slug": "pi-upper-specific-main-le--fd911d3e998219c1b9c2aebf",
  "source": {
    "blob": "b6ca87b02f4d071369a6450567252419632f736d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1727,
    "line": 1631,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd911d3e998219c1b9c2aebfdc22bb7e90041f6edd58298b103bc3ca0d90c5b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9f09b0e-550d-4d26-00a8-150c58f8bcb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1631–1727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma pi_upper_specific_main_le
    (x : ℝ)
    (hx2 : 2 ≤ x)
    (hpi0 :
      pi x ≤ x / log x + a x * x / log x ^ 6 + (∫ t in Set.Icc 2 x, 1 / log t ^ 2)
        + ∫ t in Set.Icc 2 x, a t / log t ^ 7)
    (hI2 :
      ∫ t in Set.Icc 2 x, 1 / log t ^ 2 =
        x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5 + 120 * x / log x ^ 6
        - 2 * (∑ k ∈ Finset.Icc 1 5, k.factorial / log 2 ^ (k + 1)) + 720 * ∫ t in Set.Icc 2 x, 1 / log t ^ 7)
    (hsumx :
      x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) =
        x / log x + x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5)
    (hS_nonneg : 0 ≤ (∑ k ∈ Finset.Icc 1 5, k.factorial / log 2 ^ (k + 1)))
    (hax_le : a x ≤ a exₐ)
    (h720Ia :
      (720 : ℝ) * (∫ t in Set.Icc 2 x, 1 / log t ^ 7) + (∫ t in Set.Icc 2 x, a t / log t ^ 7)
        = ∫ t in Set.Icc 2 x, (720 + a t) / log t ^ 7) :
    pi x ≤ x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1))
      + ((120 + a exₐ) * x / log x ^ 6)
      + (∫ t in Set.Icc 2 x, (720 + a t) / log t ^ 7) := by
  let S : ℝ := ∑ k ∈ Finset.Icc 1 5, k.factorial / log 2 ^ (k + 1)
  let J : ℝ := ∫ t in Set.Icc 2 x, 1 / log t ^ 7
  let IA : ℝ := ∫ t in Set.Icc 2 x, a t / log t ^ 7
  let Q : ℝ := x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5 + 120 * x / log x ^ 6
  let P : ℝ := x / log x + x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5
  have hS_nonneg' : 0 ≤ S := by simpa [S] using hS_nonneg
  have htmp :
      pi x ≤ x / log x + a x * x / log x ^ 6
        + (x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5 + 120 * x / log x ^ 6
        - 2 * S + 720 * J)
        + IA := by
    have htmp0 := hpi0
    rw [hI2] at htmp0
    simpa [S, J, IA] using htmp0
  have htmp2 :
      pi x ≤ P + (120 + a exₐ) * x / log x ^ 6 + (720 * J + IA) := by
    have haxterm : a x * x / log x ^ 6 ≤ a exₐ * x / log x ^ 6 := by
      have hxlog6_nonneg : 0 ≤ x / log x ^ 6 :=
        div_nonneg (by linarith) (pow_nonneg (log_nonneg (by linarith)) 6)
      have hmul : a x * (x / log x ^ 6) ≤ a exₐ * (x / log x ^ 6) :=
        mul_le_mul_of_nonneg_right hax_le hxlog6_nonneg
      simpa [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using hmul
    have hdropS :
        Q - 2 * S + 720 * J ≤ Q + 720 * J := by
      linarith
    have htmpJ :
        pi x ≤ x / log x + a x * x / log x ^ 6 + (Q - 2 * S + 720 * J) + IA := by
      unfold Q
      simpa [J, IA] using htmp
    have hmidJ :
        x / log x + a x * x / log x ^ 6 + (Q - 2 * S + 720 * J) + IA
        ≤ x / log x + a exₐ * x / log x ^ 6 + (Q + 720 * J) + IA := by
      have h1 : x / log x + a x * x / log x ^ 6 ≤ x / log x + a exₐ * x / log x ^ 6 :=
        add_le_add_right haxterm (x / log x)
      have h2 : (Q - 2 * S + 720 * J) + IA ≤ (Q + 720 * J) + IA :=
        add_le_add_left hdropS IA
      have hsum := add_le_add h1 h2
      simpa [add_assoc] using hsum
    have htmp2raw :
        pi x ≤ x / log x + a exₐ * x / log x ^ 6 + (Q + 720 * J) + IA := le_trans htmpJ hmidJ
    have hEq :
        x / log x + a exₐ * x / log x ^ 6 + (Q + 720 * J) + IA
        = P + (120 + a exₐ) * x / log x ^ 6 + (720 * J + IA) := by
      unfold P Q
      ring
    simpa [hEq] using htmp2raw
  let G : ℝ := ∫ t in Set.Icc 2 x, (720 + a t) / log t ^ 7
  have htmp3 :
      pi x ≤ P + (120 + a exₐ) * x / log x ^ 6 + G := by
    have h720IaJ : (720 : ℝ) * J + IA = G := by
      unfold G J IA
      simpa using h720Ia
    calc
      pi x ≤ P + (120 + a exₐ) * x / log x ^ 6 + (720 * J + IA) := htmp2
      _ = P + (120 + a exₐ) * x / log x ^ 6 + G := by
        rw [h720IaJ]
  have hsum_form :
      P = x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) := by
    unfold P
    exact hsumx.symm
  calc
    pi x ≤ P + (120 + a exₐ) * x / log x ^ 6 + G := htmp3
    _ = x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1))
          + (120 + a exₐ) * x / log x ^ 6 + G := by
      rw [hsum_form]
    _ = x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1))
          + (120 + a exₐ) * x / log x ^ 6
          + (∫ t in Set.Icc 2 x, (720 + a t) / log t ^ 7) := by
      simp [G, add_assoc]
@[blueprint
  "pi-upper-specific"
  (title := "Specific upper bound on pi")
  (statement := /-- For $x > ex_a$, $$ \pi(x) < x \sum_{k=0}^{4} \frac{k!}{\log^{k+1}x}+\frac{M_a x}{\log^6 x}.$$. -/)
  (proof := /-- This follows from the previous lemmas and calculations, including Lemma \ref{log-7-int-bound}. -/)
  (latexEnv := "lemma")
  (discussion := 996)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean#L1631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ca87b02f4d071369a6450567252419632f736d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
