# sum_moebius_mul_log_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e67ff71e-fa4b-7e16-930a-5434280cf3a2",
  "kind": "theorem",
  "lexical_name": "sum_moebius_mul_log_eq",
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
  "slug": "sum-moebius-mul-log-eq--e233b74ee25bb47dc75158fd",
  "source": {
    "blob": "9ce5752000ce86360fb89867e20591e9e0ffcb59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e233b74ee25bb47dc75158fde11bbcc4e91ce7e226d8905d6995f11b0cdf5953",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e67ff71e-fa4b-7e16-930a-5434280cf3a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_moebius_mul_log_eq {n : ℕ} : (∑ d ∈ n.divisors, (μ d : ℝ) * log d) = -Λ n := by
  simp only [← log_mul_moebius_eq_vonMangoldt, mul_comm log, mul_apply, log_apply, intCoe_apply, ←
    Finset.sum_neg_distrib, neg_mul_eq_mul_neg]
  rw [sum_divisorsAntidiagonal fun i j => (μ i : ℝ) * -Real.log j]
  have : (∑ i ∈ n.divisors, (μ i : ℝ) * -Real.log (n / i : ℕ)) =
      ∑ i ∈ n.divisors, ((μ i : ℝ) * Real.log i - μ i * Real.log n) := by
    apply sum_congr rfl
    simp only [and_imp, Int.cast_eq_zero, mul_eq_mul_left_iff, Ne, neg_inj, mem_divisors]
    intro m mn hn
    have : (m : ℝ) ≠ 0 := by
      rw [cast_ne_zero]
      rintro rfl
      exact hn (by simpa using mn)
    rw [Nat.cast_div mn this, Real.log_div (cast_ne_zero.2 hn) this, neg_sub, mul_sub]
  rw [this, sum_sub_distrib, ← sum_mul, ← Int.cast_sum, ← coe_mul_zeta_apply, eq_comm, sub_eq_self,
    moebius_mul_coe_zeta]
  rcases eq_or_ne n 1 with (hn | hn) <;> simp [hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ce5752000ce86360fb89867e20591e9e0ffcb59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
