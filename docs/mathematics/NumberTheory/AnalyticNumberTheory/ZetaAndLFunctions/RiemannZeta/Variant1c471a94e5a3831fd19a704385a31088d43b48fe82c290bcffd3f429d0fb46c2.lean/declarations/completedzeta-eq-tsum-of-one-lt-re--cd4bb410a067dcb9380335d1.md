# completedZeta_eq_tsum_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:972cf2f4-8226-3a67-054b-0fd68a5b3d55",
  "kind": "theorem",
  "lexical_name": "completedZeta_eq_tsum_of_one_lt_re",
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
  "slug": "completedzeta-eq-tsum-of-one-lt-re--cd4bb410a067dcb9380335d1",
  "source": {
    "blob": "1373554596e115d890861eb6abf16a6bcc05dcb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 171,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd4bb410a067dcb9380335d1106c31c61ce4f27c3d2657b7e515c30d199c784a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:972cf2f4-8226-3a67-054b-0fd68a5b3d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedZeta_eq_tsum_of_one_lt_re {s : ℂ} (hs : 1 < re s) :
    completedRiemannZeta s =
      (π : ℂ) ^ (-s / 2) * Gamma (s / 2) * ∑' n : ℕ, 1 / (n : ℂ) ^ s := by
  have := (hasSum_nat_completedCosZeta 0 hs).tsum_eq.symm
  simp only [QuotientAddGroup.mk_zero, completedCosZeta_zero] at this
  simp only [this, Gammaℝ_def, mul_zero, zero_mul, Real.cos_zero, ofReal_one, mul_one, mul_one_div,
    ← tsum_mul_left]
  congr 1 with n
  split_ifs with h
  · simp only [h, Nat.cast_zero, zero_cpow (Complex.ne_zero_of_one_lt_re hs), div_zero]
  · rfl

/-- The Riemann zeta function agrees with the naive Dirichlet-series definition when the latter
converges. (Note that this is false without the assumption: when `re s ≤ 1` the sum is divergent,
and we use a different definition to obtain the analytic continuation to all `s`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1373554596e115d890861eb6abf16a6bcc05dcb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
