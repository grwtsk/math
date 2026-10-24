# sum_eq_iff_sum_smul_moebius_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18bde5a3-cb48-bca4-5b41-17d59a4b4863",
  "kind": "theorem",
  "lexical_name": "sum_eq_iff_sum_smul_moebius_eq",
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
  "slug": "sum-eq-iff-sum-smul-moebius-eq--d97d48f885f733bfff83e5f8",
  "source": {
    "blob": "e6eddbcf63c58cfa66319e284ed3a7b44c2a21f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1158,
    "line": 1126,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantcb0e7d252be467855dc23e728e44b92145d4f9d7f4a45028747b214f4075068c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d97d48f885f733bfff83e5f8f89c5a4a935325d21c28335e9da486d5a6b11841",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantcb0e7d252be467855dc23e728e44b92145d4f9d7f4a45028747b214f4075068c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18bde5a3-cb48-bca4-5b41-17d59a4b4863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1126–1158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_iff_sum_smul_moebius_eq [AddCommGroup R] {f g : ℕ → R} :
    (∀ n > 0, ∑ i ∈ n.divisors, f i = g n) ↔
      ∀ n > 0, ∑ x ∈ n.divisorsAntidiagonal, μ x.fst • g x.snd = f n := by
  let f' : ArithmeticFunction R := ⟨fun x => if x = 0 then 0 else f x, if_pos rfl⟩
  let g' : ArithmeticFunction R := ⟨fun x => if x = 0 then 0 else g x, if_pos rfl⟩
  trans (ζ : ArithmeticFunction ℤ) • f' = g'
  · rw [ArithmeticFunction.ext_iff]
    apply forall_congr'
    intro n
    cases n with
    | zero => simp
    | succ n =>
      rw [coe_zeta_smul_apply]
      simp only [n.succ_ne_zero, forall_prop_of_true, succ_pos', if_false, ZeroHom.coe_mk]
      simp only [f', g', coe_mk, succ_ne_zero, ite_false]
      rw [sum_congr rfl fun x hx => ?_]
      rw [if_neg (Nat.pos_of_mem_divisors hx).ne']
  trans μ • g' = f'
  · constructor <;> intro h
    · rw [← h, ← mul_smul, moebius_mul_coe_zeta, one_smul]
    · rw [← h, ← mul_smul, coe_zeta_mul_moebius, one_smul]
  · rw [ArithmeticFunction.ext_iff]
    apply forall_congr'
    intro n
    cases n with
    | zero => simp
    | succ n =>
      simp only [forall_prop_of_true, succ_pos', smul_apply, f', g', coe_mk, succ_ne_zero,
        ite_false]
      rw [sum_congr rfl fun x hx => ?_]
      simp [if_neg (Nat.pos_of_mem_divisors (snd_mem_divisors_of_mem_antidiagonal hx)).ne']

/-- Möbius inversion for functions to a `Ring`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantcb0e7d252be467855dc23e728e44b92145d4f9d7f4a45028747b214f4075068c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantcb0e7d252be467855dc23e728e44b92145d4f9d7f4a45028747b214f4075068c.lean#L1126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6eddbcf63c58cfa66319e284ed3a7b44c2a21f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
