# mod_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8d8524fd49e3e930a51143fdc53a828e6926953",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6764db90-bac2-4a43-9072-6067cb0957dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef21ac1e-17ad-c98b-e0b7-8a1faa5b9c83",
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
  "slug": "mod-pow-succ--d0aa5e8c75bf98b3d19815ce",
  "source": {
    "blob": "f8d8524fd49e3e930a51143fdc53a828e6926953",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 163,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0aa5e8c75bf98b3d19815ce478793580e0183d9f7b37427eb4f15fdccbdf669",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef21ac1e-17ad-c98b-e0b7-8a1faa5b9c83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–193.

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

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8d8524fd49e3e930a51143fdc53a828e6926953` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
