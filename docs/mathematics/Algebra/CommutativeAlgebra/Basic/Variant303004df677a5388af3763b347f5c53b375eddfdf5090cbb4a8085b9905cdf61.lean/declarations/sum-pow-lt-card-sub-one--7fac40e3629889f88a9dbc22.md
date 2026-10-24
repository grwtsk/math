# sum_pow_lt_card_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22719c7a-c366-f8d6-858d-0c818dc8f847",
  "kind": "theorem",
  "lexical_name": "sum_pow_lt_card_sub_one",
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
  "slug": "sum-pow-lt-card-sub-one--7fac40e3629889f88a9dbc22",
  "source": {
    "blob": "d20f5461432043b353465bf024bd2e6b857d2dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 214,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fac40e3629889f88a9dbc22432ea6f8ac21f9870288b0c25cb90526037f016a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22719c7a-c366-f8d6-858d-0c818dc8f847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_pow_lt_card_sub_one (i : ℕ) (h : i < q - 1) : ∑ x : K, x ^ i = 0 := by
  by_cases hi : i = 0
  · simp only [hi, nsmul_one, sum_const, pow_zero, card_univ, cast_card_eq_zero]
  classical
    have hiq : ¬q - 1 ∣ i := by contrapose! h; exact Nat.le_of_dvd (Nat.pos_of_ne_zero hi) h
    let φ : Kˣ ↪ K := ⟨fun x ↦ x, Units.ext⟩
    have : univ.map φ = univ \ {0} := by
      ext x
      simp only [true_and_iff, Function.Embedding.coeFn_mk, mem_sdiff, Units.exists_iff_ne_zero,
        mem_univ, mem_map, exists_prop_of_true, mem_singleton]
    calc
      ∑ x : K, x ^ i = ∑ x in univ \ {(0 : K)}, x ^ i := by
        rw [← sum_sdiff ({0} : Finset K).subset_univ, sum_singleton,
          zero_pow (Nat.pos_of_ne_zero hi), add_zero]
      _ = ∑ x : Kˣ, (x ^ i : K) := by simp [← this, univ.sum_map φ]
      _ = 0 := by rw [sum_pow_units K i, if_neg]; exact hiq
#align finite_field.sum_pow_lt_card_sub_one FiniteField.sum_pow_lt_card_sub_one

open Polynomial

section

variable (K' : Type*) [Field K'] {p n : ℕ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d20f5461432043b353465bf024bd2e6b857d2dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
