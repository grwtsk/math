# finite_moebius_upper_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0418f5b-8606-5a6f-a618-a5c0cd6123ce",
  "kind": "theorem",
  "lexical_name": "finite_moebius_upper_inversion",
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
  "slug": "finite-moebius-upper-inversion--a0b251b3cfb77e1f627f993e",
  "source": {
    "blob": "97594ead3b30a81da7361a0e0a5ee94e89fd0033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 44,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0b251b3cfb77e1f627f993e5ac72452d40d765b8480e70c3bf7d2d56fbe9e11",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0418f5b-8606-5a6f-a618-a5c0cd6123ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_moebius_upper_inversion (N B : ℕ) (F : ℕ → ℝ)
    (hN : 1 ≤ N) (hNB : N ≤ B) (hF : ∀ n, N < n → F n = 0) :
    (∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) *
      ∑ k ∈ Icc 1 B, F (j * k)) = F 1 := by
  have hs := FiniteDirichletTransport.weighted_convolution
    (ArithmeticFunction.moebius : ArithmeticFunction ℝ) ζ N F hF
  rw [ArithmeticFunction.coe_moebius_mul_coe_zeta] at hs
  have hr : (∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius : ArithmeticFunction ℝ) i *
      ∑ j ∈ Icc 1 N, (ζ : ArithmeticFunction ℝ) j * F (i * j)) =
      ∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius i : ℝ) *
        ∑ j ∈ Icc 1 N, F (i * j) := by
    apply sum_congr rfl
    intro i _
    simp only [ArithmeticFunction.intCoe_apply]
    congr 1
    apply sum_congr rfl
    intro j hj
    have hj0 : j ≠ 0 := by have := (mem_Icc.mp hj).1; omega
    simp [ArithmeticFunction.natCoe_apply, ArithmeticFunction.zeta_apply_ne hj0]
  rw [hr] at hs
  calc
    _ = ∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) *
        ∑ k ∈ Icc 1 N, F (j * k) := by
      apply sum_congr rfl
      intro j hj
      rw [finite_inner_padding N B j F hNB (mem_Icc.mp hj).1 hF]
    _ = ∑ n ∈ Icc 1 N, (1 : ArithmeticFunction ℝ) n * F n := hs.symm
    _ = _ := by simp [ArithmeticFunction.one_apply, hN]

/-- The upper-row support threshold uses the strict floor endpoint, including integer scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97594ead3b30a81da7361a0e0a5ee94e89fd0033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
