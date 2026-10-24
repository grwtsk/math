# equivProdNatFactoredNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6982dc5433909e225e80fad363e1fff0169c04e2b2200be90daf5a0e5c28c4a9",
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
  "slug": "equivprodnatfactorednumbers--457ed95c2ab245394c914ac9",
  "source": {
    "blob": "751fa97f4ef7f27f3c4b9addb4c168314569c3fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 205,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:457ed95c2ab245394c914ac9eb0956dd8d46aa9630b535a4b7adcedbd1e5231e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6982dc5433909e225e80fad363e1fff0169c04e2b2200be90daf5a0e5c28c4a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivProdNatFactoredNumbers {s : Finset ℕ} {p : ℕ} (hp : p.Prime) (hs : p ∉ s) :
    ℕ × factoredNumbers s ≃ factoredNumbers (insert p s) where
  toFun := fun ⟨e, n⟩ ↦ ⟨p ^ e * n, pow_mul_mem_factoredNumbers hp e n.2⟩
  invFun := fun ⟨m, _⟩  ↦ (m.factorization p,
                            ⟨(m.primeFactorsList.filter (· ∈ s)).prod, prod_mem_factoredNumbers ..⟩)
  left_inv := by
    rintro ⟨e, m, hm₀, hm⟩
    have hpm : ¬ p ∣ m := by grind [mem_primeFactorsList]
    simp only [Prod.mk.injEq, Subtype.mk.injEq]
    constructor
    · rw [factorization_mul (pow_ne_zero e hp.ne_zero) hm₀, Finsupp.add_apply,
        factorization_pow_self hp, factorization_eq_zero_of_not_dvd hpm, add_zero]
    · conv_rhs => rw [← prod_primeFactorsList hm₀]
      refine prod_eq <|
        (filter _ <| perm_primeFactorsList_mul (pow_ne_zero e hp.ne_zero) hm₀).trans ?_
      rw [filter_append, hp.primeFactorsList_pow, filter_eq_nil_iff.mpr <| by grind, nil_append,
        filter_eq_self.mpr <| by grind]
  right_inv := by
    rintro ⟨m, hm₀, hm⟩
    rw [Subtype.mk.injEq, ← primeFactorsList_count_eq, ← prod_replicate, ← prod_append]
    conv_rhs => rw [← prod_primeFactorsList hm₀]
    have : m.primeFactorsList.filter (· = p) = m.primeFactorsList.filter (· ∉ s) :=
      filter_congr <| by grind
    refine prod_eq <| (filter_eq p).symm ▸ this ▸ perm_append_comm.trans ?_
    simp only [decide_not]
    exact filter_append_perm (· ∈ s) (primeFactorsList m)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `751fa97f4ef7f27f3c4b9addb4c168314569c3fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
