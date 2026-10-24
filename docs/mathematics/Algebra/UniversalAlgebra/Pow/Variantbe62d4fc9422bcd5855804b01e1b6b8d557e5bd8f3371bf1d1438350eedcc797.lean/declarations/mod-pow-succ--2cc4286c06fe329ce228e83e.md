# mod_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a14c2eeb-b7ad-2767-25f2-595c074e9ce7",
  "kind": "theorem",
  "lexical_name": "mod_pow_succ",
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
  "slug": "mod-pow-succ--2cc4286c06fe329ce228e83e",
  "source": {
    "blob": "01890d19d8432fbab112a17bb2f33bba68dc8297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 171,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cc4286c06fe329ce228e83e44282e51cb364120a0df1a386bbf2ec82d3b49cf",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a14c2eeb-b7ad-2767-25f2-595c074e9ce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_pow_succ {b : ℕ} (w m : ℕ) : m % b ^ succ w = b * (m / b % b ^ w) + m % b := by
  by_cases b_h : b = 0
  · simp [b_h, pow_succ]
  have b_pos := Nat.pos_of_ne_zero b_h
  induction m using Nat.strong_induction_on with
    | h p IH =>
      cases' lt_or_ge p (b ^ succ w) with h₁ h₁
      · -- base case: p < b^succ w
        have h₂ : p / b < b ^ w := by
          rw [div_lt_iff_lt_mul b_pos]
          simpa [pow_succ] using h₁
        rw [mod_eq_of_lt h₁, mod_eq_of_lt h₂]
        simp [div_add_mod]
      · -- step: p ≥ b^succ w
        -- Generate condition for induction hypothesis
        have h₂ : p - b ^ succ w < p :=
          tsub_lt_self ((pow_pos b_pos _).trans_le h₁) (pow_pos b_pos _)
        -- Apply induction
        rw [mod_eq_sub_mod h₁, IH _ h₂]
        -- Normalize goal and h1
        simp only [pow_succ']
        simp only [GE.ge, pow_succ'] at h₁
        -- Pull subtraction outside mod and div
        rw [sub_mul_mod h₁, sub_mul_div _ _ _ h₁]
        -- Cancel subtraction inside mod b^w
        have p_b_ge : b ^ w ≤ p / b := by
          rw [le_div_iff_mul_le b_pos, mul_comm]
          exact h₁
        rw [Eq.symm (mod_eq_sub_mod p_b_ge)]
#align nat.mod_pow_succ Nat.mod_pow_succ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01890d19d8432fbab112a17bb2f33bba68dc8297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
