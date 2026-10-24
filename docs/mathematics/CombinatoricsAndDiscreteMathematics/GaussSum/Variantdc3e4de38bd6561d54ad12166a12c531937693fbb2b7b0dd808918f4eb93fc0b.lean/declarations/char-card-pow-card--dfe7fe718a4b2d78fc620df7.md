# Char.card_pow_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96cbe213-e3d2-e839-c1d4-45d3538c0b05",
  "kind": "theorem",
  "lexical_name": "Char.card_pow_card",
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
  "slug": "char-card-pow-card--dfe7fe718a4b2d78fc620df7",
  "source": {
    "blob": "3f5ff71fd5130953bf05fb626eca91bb2f360389",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe7fe718a4b2d78fc620df7c35091c7a0ef168ea2e8ef5c9ee1f75a20327a36",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96cbe213-e3d2-e839-c1d4-45d3538c0b05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Char.card_pow_card {F : Type*} [Field F] [Fintype F] {F' : Type*} [Field F'] [Fintype F']
    {χ : MulChar F F'} (hχ₁ : IsNontrivial χ) (hχ₂ : IsQuadratic χ)
    (hch₁ : ringChar F' ≠ ringChar F) (hch₂ : ringChar F' ≠ 2) :
    (χ (-1) * Fintype.card F) ^ (Fintype.card F' / 2) = χ (Fintype.card F') := by
  obtain ⟨n, hp, hc⟩ := FiniteField.card F (ringChar F)
  obtain ⟨n', hp', hc'⟩ := FiniteField.card F' (ringChar F')
  let ψ := primitiveCharFiniteField F F' hch₁
  -- Porting note: this was a `let` but then Lean would time out at
  -- unification so it is changed to as `set` and `FF'` is replaced by its
  -- definition before unification
  set FF' := CyclotomicField ψ.n F' with FF'_def
  have hchar := Algebra.ringChar_eq F' FF'
  apply (algebraMap F' FF').injective
  rw [map_pow, map_mul, map_natCast, hc', hchar, Nat.cast_pow]
  simp only [← MulChar.ringHomComp_apply]
  haveI := Fact.mk hp'
  haveI := Fact.mk (hchar.subst hp')
  rw [Ne, ← Nat.prime_dvd_prime_iff_eq hp' hp, ← isUnit_iff_not_dvd_char, hchar] at hch₁
  -- Porting note: original proof is below and, as noted above, `FF'` needs to
  -- be replaced by its definition before unification to avoid time out
  -- exact Char.card_pow_char_pow (hχ₂.comp _) ψ.char (ringChar FF') n' hch₁ (hchar ▸ hch₂)
  --      (gaussSum_sq (hχ₁.comp <| RingHom.injective _) (hχ₂.comp _) ψ.prim)
  have := Char.card_pow_char_pow (hχ₂.comp (algebraMap F' FF')) ψ.char
    (ringChar FF') n' hch₁ (hchar ▸ hch₂)
    (gaussSum_sq (hχ₁.comp <| RingHom.injective _) (hχ₂.comp _) ψ.prim)
  simp_rw [FF'_def] at this
  exact this
#align char.card_pow_card Char.card_pow_card

end GaussSumValues

section GaussSumTwo

/-!
### The quadratic character of 2

This section proves the following result.

For every finite field `F` of odd characteristic, we have `2^(#F/2) = χ₈#F` in `F`.
This can be used to show that the quadratic character of `F` takes the value
`χ₈#F` at `2`.

The proof uses the Gauss sum of `χ₈` and a primitive additive character on `ℤ/8ℤ`;
in this way, the result is reduced to `card_pow_char_pow`.
-/


open ZMod

-- Porting note: This proof is _really_ slow, maybe it should be broken into several lemmas
-- See https://github.com/leanprover-community/mathlib4/issues/5028
set_option maxHeartbeats 800000 in
/-- For every finite field `F` of odd characteristic, we have `2^(#F/2) = χ₈#F` in `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f5ff71fd5130953bf05fb626eca91bb2f360389` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
