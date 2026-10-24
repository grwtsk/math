# gauss_lemma_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdbb3913-2683-e45b-03c9-525c164ab1f7",
  "kind": "theorem",
  "lexical_name": "gauss_lemma_aux₁",
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
  "slug": "gauss-lemma-aux--88b88ff7bacb070fc7f886ff",
  "source": {
    "blob": "f4c6859663b5b9fb454c7f509fed5ad6dcf4c297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 73,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88b88ff7bacb070fc7f886ff3cb90c045a2be4ac36fe27ace85f33d06493193f",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdbb3913-2683-e45b-03c9-525c164ab1f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gauss_lemma_aux₁ (p : ℕ) [Fact p.Prime] {a : ℤ}
    (hap : (a : ZMod p) ≠ 0) : (a ^ (p / 2) * (p / 2)! : ZMod p) =
    (-1 : ZMod p) ^ ((Ico 1 (p / 2).succ).filter fun x : ℕ =>
      ¬(a * x : ZMod p).val ≤ p / 2).card * (p / 2)! :=
  calc
    (a ^ (p / 2) * (p / 2)! : ZMod p) = ∏ x in Ico 1 (p / 2).succ, a * x := by
      rw [prod_mul_distrib, ← prod_natCast, prod_Ico_id_eq_factorial, prod_const, card_Ico,
        succ_sub_one]; simp
    _ = ∏ x in Ico 1 (p / 2).succ, ↑((a * x : ZMod p).val) := by simp
    _ = ∏ x in Ico 1 (p / 2).succ, (if (a * x : ZMod p).val ≤ p / 2 then (1 : ZMod p) else -1) *
        (a * x : ZMod p).valMinAbs.natAbs :=
      (prod_congr rfl fun _ _ => by
        simp only [nat_cast_natAbs_valMinAbs]
        split_ifs <;> simp)
    _ = (-1 : ZMod p) ^ ((Ico 1 (p / 2).succ).filter fun x : ℕ =>
        ¬(a * x : ZMod p).val ≤ p / 2).card * ∏ x in Ico 1 (p / 2).succ,
          ↑((a * x : ZMod p).valMinAbs.natAbs) := by
      have :
          (∏ x in Ico 1 (p / 2).succ, if (a * x : ZMod p).val ≤ p / 2 then (1 : ZMod p) else -1) =
          ∏ x in (Ico 1 (p / 2).succ).filter fun x : ℕ => ¬(a * x : ZMod p).val ≤ p / 2, -1 :=
        prod_bij_ne_one (fun x _ _ => x)
          (fun x => by split_ifs <;> simp_all (config := { contextual := true }))
          (fun _ _ _ _ _ _ => id) (fun b h _ => ⟨b, by simp_all [-not_le]⟩)
          (by intros; split_ifs at * <;> simp_all)
      rw [prod_mul_distrib, this]; simp
    _ = (-1 : ZMod p) ^ ((Ico 1 (p / 2).succ).filter fun x : ℕ =>
        ¬(a * x : ZMod p).val ≤ p / 2).card * (p / 2)! := by
      rw [← prod_natCast, Finset.prod_eq_multiset_prod,
        Ico_map_valMinAbs_natAbs_eq_Ico_map_id p a hap, ← Finset.prod_eq_multiset_prod,
        prod_Ico_id_eq_factorial]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c6859663b5b9fb454c7f509fed5ad6dcf4c297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
