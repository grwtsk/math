# equivProdNatFactoredNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3c3cd29d16f237de27b12c178127ed932093b132a29432677ccdd30899b58f6",
  "kind": "def",
  "lexical_name": "equivProdNatFactoredNumbers",
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
  "slug": "equivprodnatfactorednumbers--b449188f4c47758c423f1ecf",
  "source": {
    "blob": "55b572da9af134d348000f30ae398a6dbcdcfd26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 219,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b449188f4c47758c423f1ecf9b56fff285c0b0c199a7338bee3d5fcab5b0fa70",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3c3cd29d16f237de27b12c178127ed932093b132a29432677ccdd30899b58f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivProdNatFactoredNumbers {s : Finset ℕ} {p : ℕ} (hp : p.Prime) (hs : p ∉ s) :
    ℕ × factoredNumbers s ≃ factoredNumbers (insert p s) where
  toFun := fun ⟨e, n⟩ ↦ ⟨p ^ e * n, pow_mul_mem_factoredNumbers hp e n.2⟩
  invFun := fun ⟨m, _⟩  ↦ (m.factorization p,
                            ⟨(m.primeFactorsList.filter (· ∈ s)).prod, prod_mem_factoredNumbers ..⟩)
  left_inv := by
    rintro ⟨e, m, hm₀, hm⟩
    simp (config := { etaStruct := .all }) only
      [Set.coe_setOf, Set.mem_setOf_eq, Prod.mk.injEq, Subtype.mk.injEq]
    constructor
    · rw [factorization_mul (pos_iff_ne_zero.mp <| Nat.pow_pos hp.pos) hm₀]
      simp only [factorization_pow, Finsupp.coe_add, Finsupp.coe_smul, nsmul_eq_mul,
        Pi.natCast_def, cast_id, Pi.add_apply, Pi.mul_apply, hp.factorization_self,
        mul_one, add_eq_left]
      rw [← primeFactorsList_count_eq, count_eq_zero]
      exact fun H ↦ hs (hm p H)
    · nth_rewrite 2 [← prod_primeFactorsList hm₀]
      refine prod_eq <|
        (filter _ <| perm_primeFactorsList_mul (pow_ne_zero e hp.ne_zero) hm₀).trans ?_
      rw [filter_append, hp.primeFactorsList_pow,
          filter_eq_nil_iff.mpr fun q hq ↦ by rw [mem_replicate] at hq; simp [hq.2, hs],
          nil_append, filter_eq_self.mpr fun q hq ↦ by simp only [hm q hq, decide_true]]
  right_inv := by
    rintro ⟨m, hm₀, hm⟩
    simp only [Set.coe_setOf, Set.mem_setOf_eq, Subtype.mk.injEq]
    rw [← primeFactorsList_count_eq, ← prod_replicate, ← prod_append]
    nth_rewrite 3 [← prod_primeFactorsList hm₀]
    have : m.primeFactorsList.filter (· = p) = m.primeFactorsList.filter (· ∉ s) := by
      refine (filter_congr fun q hq ↦ ?_).symm
      simp only [decide_not, Bool.not_eq_true', decide_eq_false_iff_not, decide_eq_true_eq]
      rcases Finset.mem_insert.mp <| hm _ hq with h | h
      · simp only [h, hs, decide_false, Bool.not_false, decide_true]
      · simp only [h, decide_true, Bool.not_true, false_eq_decide_iff]
        exact fun H ↦ hs <| H ▸ h
    refine prod_eq <| (filter_eq p).symm ▸ this ▸ perm_append_comm.trans ?_
    simp only [decide_not]
    exact filter_append_perm (· ∈ s) (primeFactorsList m)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55b572da9af134d348000f30ae398a6dbcdcfd26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
