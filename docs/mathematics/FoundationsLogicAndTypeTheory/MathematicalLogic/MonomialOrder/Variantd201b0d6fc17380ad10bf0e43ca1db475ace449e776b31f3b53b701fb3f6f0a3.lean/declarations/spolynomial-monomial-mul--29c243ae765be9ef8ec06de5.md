# sPolynomial_monomial_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b8e93f2-ecb3-e8ce-ca25-ff766f843156",
  "kind": "lemma",
  "lexical_name": "sPolynomial_monomial_mul",
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
  "slug": "spolynomial-monomial-mul--29c243ae765be9ef8ec06de5",
  "source": {
    "blob": "df090d867b53dc960d01df2e219e5e17380e2421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1342,
    "line": 1322,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c243ae765be9ef8ec06de5e6b385c5f47200cc53ff4331c83ab6a09053f63c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b8e93f2-ecb3-e8ce-ca25-ff766f843156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1322–1342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sPolynomial_monomial_mul [NoZeroDivisors R] (p₁ p₂ : MvPolynomial σ R) (d₁ d₂ : σ →₀ ℕ)
    (c₁ c₂ : R) :
    m.sPolynomial ((monomial d₁ c₁) * p₁) ((monomial d₂ c₂) * p₂) =
      monomial ((d₁ + m.degree p₁) ⊔ (d₂ + m.degree p₂) - m.degree p₁ ⊔ m.degree p₂) (c₁ * c₂) *
      m.sPolynomial p₁ p₂ := by
  classical
  simp only [sPolynomial_def]
  wlog! +distrib H : c₁ ≠ 0 ∧ c₂ ≠ 0 ∧ p₁ ≠ 0 ∧ p₂ ≠ 0
  · (obtain rfl | rfl | rfl | rfl := H) <;> simp
  rcases H with ⟨hc1, hc2, hp1, hp2⟩
  have hm1 := (monomial_eq_zero (s := d₁)).not.mpr hc1
  have hm2 := (monomial_eq_zero (s := d₂)).not.mpr hc2
  simp_rw [m.degree_mul hm1 hp1, m.degree_mul hm2 hp2,
    mul_sub, ← mul_assoc _ _ p₁, ← mul_assoc _ _ p₂, monomial_mul_monomial,
    m.leadingCoeff_mul, m.leadingCoeff_monomial,
    degree_monomial, hc1, hc2, reduceIte, mul_right_comm, mul_comm c₂ c₁]
  rw [tsub_add_tsub_cancel (sup_le_sup (self_le_add_left _ _) (self_le_add_left _ _)) (by simp),
    tsub_add_tsub_cancel (sup_le_sup (self_le_add_left _ _) (self_le_add_left _ _)) (by simp),
    tsub_add_eq_add_tsub le_sup_left, tsub_add_eq_add_tsub le_sup_right,
    add_comm d₁, add_comm d₂, add_tsub_add_eq_tsub_right, add_tsub_add_eq_tsub_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean#L1322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df090d867b53dc960d01df2e219e5e17380e2421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
