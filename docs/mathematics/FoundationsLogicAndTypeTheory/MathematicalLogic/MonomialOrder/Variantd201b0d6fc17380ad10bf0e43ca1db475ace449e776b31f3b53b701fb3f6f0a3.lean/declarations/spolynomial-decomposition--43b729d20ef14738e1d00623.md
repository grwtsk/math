# sPolynomial_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f818ba39-afd8-0762-3955-0e68b1f7f2ff",
  "kind": "lemma",
  "lexical_name": "sPolynomial_decomposition",
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
  "slug": "spolynomial-decomposition--43b729d20ef14738e1d00623",
  "source": {
    "blob": "df090d867b53dc960d01df2e219e5e17380e2421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1413,
    "line": 1372,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43b729d20ef14738e1d0062360cffc8d274b9c37b87f76f7a0b329f8e8153ca2",
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

Occurrence: `result:f818ba39-afd8-0762-3955-0e68b1f7f2ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1372–1413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sPolynomial_decomposition {d : m.syn} {ι : Type*}
    {B : Finset ι} {g : ι → MvPolynomial σ R}
    (hd : ∀ b ∈ B,
      (m.toSyn <| m.degree <| g b) = d ∧ IsUnit (m.leadingCoeff <| g b) ∨ g b = 0)
    (hfd : (m.toSyn <| m.degree <| ∑ b ∈ B, g b) < d) :
    ∃ (c : ι → ι → R),
      ∑ b ∈ B, g b = ∑ b₁ ∈ B, ∑ b₂ ∈ B, (c b₁ b₂) • m.sPolynomial (g b₁) (g b₂) := by
  classical
  induction B using Finset.induction_on with
  | empty => simp
  | insert b B hb h =>
    by_cases hb0 : g b = 0
    · simp_all
    simp? [Finset.sum_insert hb, hb0] at hfd hd says
      simp only [Finset.sum_insert hb, Finset.mem_insert, forall_eq_or_imp, hb0, or_false]
        at hfd hd
    obtain ⟨⟨rfl, isunit_gb⟩, hd⟩ := hd
    use fun b₁ b₂ ↦ if b₂ = b then ↑isunit_gb.unit⁻¹ else 0
    simp? [Finset.sum_insert hb, hb] says
      simp only [Finset.sum_insert hb, ite_smul, zero_smul, ↓reduceIte, Finset.sum_ite_eq', hb,
        add_zero, sPolynomial_self, smul_zero, zero_add]
    simp only [m.toSyn.injective.eq_iff] at *
    trans ∑ b' ∈ B, (g b' - (m.leadingCoeff (g b') * ↑isunit_gb.unit⁻¹) • g b)
    · suffices (-(∑ i ∈ B, m.leadingCoeff (g i))) = m.leadingCoeff (g b) by
        rw [add_comm, Finset.sum_sub_distrib, sub_eq_add_neg, ← Finset.sum_smul, ← Finset.sum_mul,
          ← neg_smul, ← neg_mul, this, isunit_gb.mul_val_inv, one_smul]
      rw [← add_eq_zero_iff_neg_eq']
      trans (g b).coeff (m.degree <| g b) + ∑ i ∈ B, (g i).coeff (m.degree <| g b)
      · unfold leadingCoeff
        congr 1
        apply Finset.sum_congr rfl
        intro b' hb'
        rcases hd b' hb' with h | h <;> simp [h]
      · rw [← coeff_sum, ← Finsupp.add_apply, ← AddMonoidAlgebra.coeff_add, ← notMem_support_iff]
        exact m.notMem_support_of_degree_lt hfd
    · apply Finset.sum_congr rfl
      intro b' hb'
      rw [sPolynomial]
      obtain (⟨h, -⟩ | h) := hd b' hb' <;>
        simp [h, ← smul_eq_C_mul, smul_sub, ← mul_smul, mul_comm (m.leadingCoeff (g b'))]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean#L1372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df090d867b53dc960d01df2e219e5e17380e2421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
