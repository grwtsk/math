# mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36012920-809f-8692-938b-d786222f2e6f",
  "kind": "theorem",
  "lexical_name": "mul",
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
  "slug": "mul--169c32a3b0fff1eefcb2bf42",
  "source": {
    "blob": "ecafa0893b83d855d59a1e980715ceb324f5d026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 497,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variantd26d968504b822b39d54aae114fd40127c9376e9f890b18a973086b9327b6010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:169c32a3b0fff1eefcb2bf4270a932b8f64a5ab5efebd30cd1530db811b33302",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variantd26d968504b822b39d54aae114fd40127c9376e9f890b18a973086b9327b6010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36012920-809f-8692-938b-d786222f2e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul [CommSemiring R] {f g : ArithmeticFunction R} (hf : f.IsMultiplicative)
    (hg : g.IsMultiplicative) : IsMultiplicative (f * g) := by
  refine ⟨by simp [hf.1, hg.1], ?_⟩
  simp only [mul_apply]
  intro m n cop
  rw [sum_mul_sum, ← sum_product']
  symm
  apply sum_nbij fun ((i, j), k, l) ↦ (i * k, j * l)
  · rintro ⟨⟨a1, a2⟩, ⟨b1, b2⟩⟩ h
    simp only [mem_divisorsAntidiagonal, Ne, mem_product] at h
    rcases h with ⟨⟨rfl, ha⟩, ⟨rfl, hb⟩⟩
    simp only [mem_divisorsAntidiagonal, mul_eq_zero, Ne]
    constructor
    · ring
    rw [mul_eq_zero] at *
    exact not_or_intro ha hb
  · simp only [Set.InjOn, mem_coe, mem_divisorsAntidiagonal, mem_product, Prod.mk_inj]
    rintro ⟨⟨a1, a2⟩, ⟨b1, b2⟩⟩ ⟨⟨rfl, ha⟩, ⟨rfl, hb⟩⟩ ⟨⟨c1, c2⟩, ⟨d1, d2⟩⟩ hcd h
    ext
    · trans gcd (a1 * a2) (a1 * b1)
      · rw [gcd_mul_left, cop.coprime_mul_left.coprime_mul_right_right.gcd_eq_one, mul_one]
      · rw [← hcd.1.1, ← hcd.2.1] at cop
        rw [← hcd.1.1, h.1, gcd_mul_left, cop.coprime_mul_left.coprime_mul_right_right.gcd_eq_one,
          mul_one]
    · trans gcd (a1 * a2) (a2 * b2)
      · rw [mul_comm, gcd_mul_left, cop.coprime_mul_right.coprime_mul_left_right.gcd_eq_one,
          mul_one]
      · rw [← hcd.1.1, ← hcd.2.1] at cop
        rw [← hcd.1.1, h.2, mul_comm, gcd_mul_left,
          cop.coprime_mul_right.coprime_mul_left_right.gcd_eq_one, mul_one]
    · trans gcd (b1 * b2) (a1 * b1)
      · rw [mul_comm, gcd_mul_right, cop.coprime_mul_right.coprime_mul_left_right.symm.gcd_eq_one,
          one_mul]
      · rw [← hcd.1.1, ← hcd.2.1] at cop
        rw [← hcd.2.1, h.1, mul_comm c1 d1, gcd_mul_left,
          cop.coprime_mul_right.coprime_mul_left_right.symm.gcd_eq_one, mul_one]
    · trans gcd (b1 * b2) (a2 * b2)
      · rw [gcd_mul_right, cop.coprime_mul_left.coprime_mul_right_right.symm.gcd_eq_one, one_mul]
      · rw [← hcd.1.1, ← hcd.2.1] at cop
        rw [← hcd.2.1, h.2, gcd_mul_right,
          cop.coprime_mul_left.coprime_mul_right_right.symm.gcd_eq_one, one_mul]
  · simp only [Set.SurjOn, Set.subset_def, mem_coe, mem_divisorsAntidiagonal, mem_product,
      Set.mem_image]
    rintro ⟨b1, b2⟩ h
    use ((b1.gcd m, b2.gcd m), (b1.gcd n, b2.gcd n))
    rw [← cop.gcd_mul _, ← cop.gcd_mul _, ← h.1, gcd_mul_gcd_of_coprime_of_mul_eq_mul cop h.1,
      gcd_mul_gcd_of_coprime_of_mul_eq_mul cop.symm _]
    · rw [Ne, mul_eq_zero, not_or] at h
      simp [h.2.1, h.2.2]
    rw [mul_comm n m, h.1]
  · simp only [mem_divisorsAntidiagonal, mem_product]
    rintro ⟨⟨a1, a2⟩, ⟨b1, b2⟩⟩ ⟨⟨rfl, ha⟩, ⟨rfl, hb⟩⟩
    rw [hf.map_mul_of_coprime cop.coprime_mul_right.coprime_mul_right_right,
      hg.map_mul_of_coprime cop.coprime_mul_left.coprime_mul_left_right]
    ring

/-- For any multiplicative function `f` and any `n > 0`,
we can evaluate `f n` by evaluating `f` at `p ^ k` over the factorization of `n` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variantd26d968504b822b39d54aae114fd40127c9376e9f890b18a973086b9327b6010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variantd26d968504b822b39d54aae114fd40127c9376e9f890b18a973086b9327b6010.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecafa0893b83d855d59a1e980715ceb324f5d026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
