# int_coeff_of_cyclotomic'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c89659e-525b-fdbd-7364-49dca557cc4a",
  "kind": "theorem",
  "lexical_name": "int_coeff_of_cyclotomic'",
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
  "slug": "int-coeff-of-cyclotomic--8be79372005d1a0f5a7ad7c8",
  "source": {
    "blob": "ed9ef4a7bff968610b03a1b277d439f21544f387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 187,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8be79372005d1a0f5a7ad7c86cb025f990963f53a0cbb20af4134367865e58ea",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c89659e-525b-fdbd-7364-49dca557cc4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_coeff_of_cyclotomic' {K : Type*} [CommRing K] [IsDomain K] {ζ : K} {n : ℕ}
    (h : IsPrimitiveRoot ζ n) : ∃ P : ℤ[X], map (Int.castRingHom K) P =
      cyclotomic' n K ∧ P.degree = (cyclotomic' n K).degree ∧ P.Monic := by
  refine lifts_and_degree_eq_and_monic ?_ (cyclotomic'.monic n K)
  induction n using Nat.strong_induction_on generalizing ζ with | _ k ihk
  rcases k.eq_zero_or_pos with (rfl | hpos)
  · use 1
    simp only [cyclotomic'_zero, coe_mapRingHom, Polynomial.map_one]
  let B : K[X] := ∏ i ∈ Nat.properDivisors k, cyclotomic' i K
  have Bmo : B.Monic := by
    apply monic_prod_of_monic
    intro i _
    exact cyclotomic'.monic i K
  have Bint : B ∈ lifts (Int.castRingHom K) := by
    refine Subsemiring.prod_mem (lifts (Int.castRingHom K)) ?_
    intro x hx
    have xsmall := (Nat.mem_properDivisors.1 hx).2
    obtain ⟨d, hd⟩ := (Nat.mem_properDivisors.1 hx).1
    rw [mul_comm] at hd
    exact ihk x xsmall (h.pow hpos hd)
  replace Bint := lifts_and_degree_eq_and_monic Bint Bmo
  obtain ⟨B₁, hB₁, _, hB₁mo⟩ := Bint
  let Q₁ : ℤ[X] := (X ^ k - 1) /ₘ B₁
  have huniq : 0 + B * cyclotomic' k K = X ^ k - 1 ∧ (0 : K[X]).degree < B.degree := by
    constructor
    · rw [zero_add, mul_comm, ← prod_cyclotomic'_eq_X_pow_sub_one hpos h, ←
        Nat.cons_self_properDivisors hpos.ne', Finset.prod_cons]
    · simpa only [degree_zero, bot_lt_iff_ne_bot, Ne, degree_eq_bot] using Bmo.ne_zero
  replace huniq := div_modByMonic_unique (cyclotomic' k K) (0 : K[X]) Bmo huniq
  simp only [lifts, RingHom.mem_rangeS]
  use Q₁
  rw [coe_mapRingHom, map_divByMonic (Int.castRingHom K) hB₁mo, hB₁, ← huniq.1]
  simp

/-- If `K` is of characteristic `0` and there is a primitive `n`-th root of unity in `K`,
then `cyclotomic n K` comes from a unique polynomial with integer coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed9ef4a7bff968610b03a1b277d439f21544f387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
