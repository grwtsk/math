# zeta_alt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9eb6e27-6bc0-989a-0c7f-13b66663d33d",
  "kind": "lemma",
  "lexical_name": "zeta_alt",
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
  "slug": "zeta-alt--57e95e93f7c61e3375a4bfb4",
  "source": {
    "blob": "d1e130d856dabeec0e70683332be624b1a15c231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1235,
    "line": 1203,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57e95e93f7c61e3375a4bfb4663d414c86f2189af691fdda5ba2da10d4430446",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9eb6e27-6bc0-989a-0c7f-13b66663d33d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1203–1235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zeta_alt (s : ℂ) (hs : 1 < s.re) :
    riemannZeta s =
    riemannZeta (2 * s) * LSeries (fun (n : ℕ) ↦ (μ n : ℂ) ^ 2) s := by
  have hs' : 1 < (2 * s).re := by rw [Complex.mul_re]; norm_num; linarith
  have mulable := (riemannZeta_eulerProduct_hasProd hs).multipliable
  rw [← riemannZeta_eulerProduct_tprod hs, ← riemannZeta_eulerProduct_tprod hs',
    moebius_sq_LSeries_eulerProduct_tprod s hs, ← Multipliable.tprod_mul, tprod_congr]
  · intro p
    have hsub := Complex.one_sub_prime_cpow_ne_zero p.2 hs
    have hsq : 1 - ((p : ℂ) ^ (-s)) ^ 2 ≠ 0 := by
      rw [show 1 - ((p : ℂ) ^ (-s)) ^ 2 = (1 - (p : ℂ) ^ (-s)) * (1 + (p : ℂ) ^ (-s)) from by ring]
      exact mul_ne_zero hsub (Complex.one_add_prime_cpow_ne_zero p.2 hs)
    rw [show (-(2 * s) : ℂ) = -s + -s from by ring, Complex.cpow_add _ _ (Nat.cast_ne_zero.mpr p.2.ne_zero)]
    field_simp
    ring
  · exact ⟨riemannZeta (2 * s), riemannZeta_eulerProduct_hasProd hs'⟩
  · exact ⟨LSeries (fun n ↦ (μ n) ^ 2) s, moebius_sq_LSeries_eulerProduct_hasProd s hs⟩

@[blueprint
  "pow_divisors_mul"
  (title := "pow-divisors-mul")
  (statement := /--
    Let $m$ and $n$ be coprime natural numbers, with a fixed power $k$. The divisors of $mn$ that
    can be expressed as perfect $k$-powers are exactly the product of the divisors of $m$ and $n$
    that can be expressed as perfect $k$-powers.
  -/)
  (proof := /--
    Since $m$ and $n$ are coprime, they share no common prime factors. Therefore, any divisor of
    $mn$ can be uniquely expressed as a product of a divisor of $m$ and a divisor of $n$. The
    condition that a divisor is a perfect $k$-power can be checked separately for the divisors of
    $m$ and $n$. Thus, the divisors of $mn$ that are perfect $k$-powers correspond exactly to the
    products of divisors of $m$ and $n$ that are perfect $k$-powers.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean#L1203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e130d856dabeec0e70683332be624b1a15c231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
