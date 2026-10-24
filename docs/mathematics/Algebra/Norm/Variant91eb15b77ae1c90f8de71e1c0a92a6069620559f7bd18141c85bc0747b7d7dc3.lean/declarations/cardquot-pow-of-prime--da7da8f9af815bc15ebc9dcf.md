# cardQuot_pow_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e90c06b3-02b4-ca66-4975-956df6b2ec49",
  "kind": "theorem",
  "lexical_name": "cardQuot_pow_of_prime",
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
  "slug": "cardquot-pow-of-prime--da7da8f9af815bc15ebc9dcf",
  "source": {
    "blob": "6d923f2e4dd9a2557437ebe2b2d61abf55144b8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 194,
    "path": "GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da7da8f9af815bc15ebc9dcf79046274b9e8b120db8ee3850044cbb3b3bc263b",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e90c06b3-02b4-ca66-4975-956df6b2ec49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardQuot_pow_of_prime [IsDedekindDomain S] [Module.Finite ℤ S] [Module.Free ℤ S] {i : ℕ} :
    cardQuot (P ^ i) = cardQuot P ^ i := by
  let _ := Module.Free.chooseBasis ℤ S
  classical
  induction' i with i ih
  · simp
  letI := Ideal.fintypeQuotientOfFreeOfNeBot (P ^ i.succ) (pow_ne_zero _ hP)
  letI := Ideal.fintypeQuotientOfFreeOfNeBot (P ^ i) (pow_ne_zero _ hP)
  letI := Ideal.fintypeQuotientOfFreeOfNeBot P hP
  have : P ^ (i + 1) < P ^ i := Ideal.pow_succ_lt_pow hP i
  suffices hquot : map (P ^ i.succ).mkQ (P ^ i) ≃ S ⧸ P
  · rw [pow_succ (cardQuot P), ← ih, cardQuot_apply (P ^ i.succ), ←
      card_quotient_mul_card_quotient (P ^ i) (P ^ i.succ) this.le, cardQuot_apply (P ^ i),
      cardQuot_apply P]
    congr 1
    rw [Fintype.card_eq]
    exact ⟨hquot⟩
  choose a a_mem a_not_mem using SetLike.exists_of_lt this
  choose f g hg hf using fun c (hc : c ∈ P ^ i) =>
    Ideal.exists_mul_add_mem_pow_succ hP a c a_mem a_not_mem hc
  choose k hk_mem hk_eq using fun c' (hc' : c' ∈ map (mkQ (P ^ i.succ)) (P ^ i)) =>
    Submodule.mem_map.mp hc'
  refine Equiv.ofBijective (fun c' => Quotient.mk'' (f (k c' c'.prop) (hk_mem c' c'.prop))) ⟨?_, ?_⟩
  · rintro ⟨c₁', hc₁'⟩ ⟨c₂', hc₂'⟩ h
    rw [Subtype.mk_eq_mk, ← hk_eq _ hc₁', ← hk_eq _ hc₂', mkQ_apply, mkQ_apply,
      Submodule.Quotient.eq, ← hf _ (hk_mem _ hc₁'), ← hf _ (hk_mem _ hc₂')]
    refine Ideal.mul_add_mem_pow_succ_inj _ _ _ _ _ _ a_mem (hg _ _) (hg _ _) ?_
    simpa only [Submodule.Quotient.mk''_eq_mk, Submodule.Quotient.mk''_eq_mk,
      Submodule.Quotient.eq] using h
  · intro d'
    refine Quotient.inductionOn' d' fun d => ?_
    have hd' := (mem_map (f := mkQ (P ^ i.succ))).mpr ⟨a * d, Ideal.mul_mem_right d _ a_mem, rfl⟩
    refine ⟨⟨_, hd'⟩, ?_⟩
    simp only [Submodule.Quotient.mk''_eq_mk, Ideal.Quotient.mk_eq_mk, Ideal.Quotient.eq,
      Subtype.coe_mk]
    refine
      Ideal.mul_add_mem_pow_succ_unique hP a _ _ _ _ a_not_mem (hg _ (hk_mem _ hd')) (zero_mem _) ?_
    rw [hf, add_zero]
    exact (Submodule.Quotient.eq _).mp (hk_eq _ hd')
#align card_quot_pow_of_prime cardQuot_pow_of_prime

end PPrime

/-- Multiplicativity of the ideal norm in number rings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d923f2e4dd9a2557437ebe2b2d61abf55144b8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
