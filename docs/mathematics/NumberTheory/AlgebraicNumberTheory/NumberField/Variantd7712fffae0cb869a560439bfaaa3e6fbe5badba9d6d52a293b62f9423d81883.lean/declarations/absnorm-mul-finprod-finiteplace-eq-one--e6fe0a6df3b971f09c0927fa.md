# absNorm_mul_finprod_finitePlace_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb961ee1-dfa6-3ed7-681a-1ea515fda8c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff0db49c-e424-cc7c-902f-2ef2ac48e034",
  "kind": "lemma",
  "lexical_name": "absNorm_mul_finprod_finitePlace_eq_one",
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
  "slug": "absnorm-mul-finprod-finiteplace-eq-one--e6fe0a6df3b971f09c0927fa",
  "source": {
    "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 200,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6fe0a6df3b971f09c0927fa5fdc45fdbefb22beb45fb5dfe73cebaa401eb6b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff0db49c-e424-cc7c-902f-2ef2ac48e034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma absNorm_mul_finprod_finitePlace_eq_one (hx : x ≠ 0) :
    (span <| Set.range x).absNorm * ∏ᶠ v : FinitePlace K, ⨆ i, v (x i) = 1 := by
  obtain ⟨i₀, hi₀⟩ := Function.ne_iff.mp hx
  let i' : { j // (x j : K) ≠ 0 } := ⟨i₀, mod_cast hi₀⟩
  have : Nonempty _ := .intro i'
  have hI : span (Set.range x) = span (Set.range fun i : { j // (x j : K) ≠ 0 } ↦ x i.val) := by
    convert span_range_eq_span_range_support x <;> norm_cast
  have hx₀ : (fun i ↦ (x i : K)) ≠ 0 := Function.ne_iff.mpr ⟨_, i'.prop⟩
  simp_rw [Finite.iSup_eq_iSup_subtype hx₀, hI]
  exact absNorm_mul_finprod_finitePlace_eq_one_aux fun j ↦ mod_cast j.prop

end NumberField

/-!
### The Northcott property for heights on number fields

We show that a number field `K` has the **Northcott property** with respect to the multiplicative
and with respect to the logarithmic height, i.e., for any `B : ℝ` the set of elements `x : K`
such that `mulHeight₁ x ≤ B` (resp., `logHeight₁ x ≤ B`) is finite.
See `NumberField.finite_setOfPred_mulHeight₁_le` and `NumberField.finite_setOfPred_logHeight₁_le`.

The main idea of the proof is as follows. We show that for every `x : K` there is `n : ℕ` such that
`n * x` is an algebraic integer and `n ≤ mulHeight₁ x`; see `NumberField.exists_nat_le_mulHeight₁`.
We also show that the set of `a : 𝓞 K` such that `mulHeight₁ (a / n)` is bounded is finite;
see `NumberField.finite_setOfPred_prod_infinitePlace_iSup_le`. The result for the multiplicative
height follows by combining these two ingredients, and the result for the logarithmic height follows
from that for any field with a family of admissible absolute values
(see `Mathlib.NumberTheory.Height.Northcott`).
-/

section Northcott

namespace NumberField

variable {K : Type*} [Field K] [NumberField K]

section withIdeal

open Ideal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b9f8680e1e7806ca62343835bbb665248bc127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
