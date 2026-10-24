# choose_mul_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db86eafc-1b92-ac64-2e7a-940e1ff8474d",
  "kind": "theorem",
  "lexical_name": "choose_mul_pow_le",
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
  "slug": "choose-mul-pow-le--2701e5405fcc03f4561a7b82",
  "source": {
    "blob": "d585c34e73d979b5517cc5c0ebba6107cf40c1cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 20,
    "path": "GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2701e5405fcc03f4561a7b82d4fbd636883ca9c58a705a24ccbb642313cf160b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db86eafc-1b92-ac64-2e7a-940e1ff8474d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_mul_pow_le (b N j : ℕ) (hb : b ≤ N) :
    (b.choose j : ℝ) * (N : ℝ) ^ j ≤ (N.choose j : ℝ) * (b : ℝ) ^ j := by
  induction j with
  | zero => simp
  | succ j ih =>
    by_cases hj : j < b
    · have hjb : j ≤ b := hj.le
      have hjN : j ≤ N := hjb.trans hb
      have hr : ((b - j : ℕ) : ℝ) * N ≤ ((N - j : ℕ) : ℝ) * b := by
        rw [Nat.cast_sub hjb, Nat.cast_sub hjN]
        have hb' : (b : ℝ) ≤ N := by exact_mod_cast hb
        have hj' : (0 : ℝ) ≤ j := by positivity
        nlinarith
      have hprod := mul_le_mul hr ih (by positivity) (by positivity)
      have hbc : (j + 1 : ℝ) * (b.choose (j + 1) : ℝ) =
          ((b - j : ℕ) : ℝ) * (b.choose j : ℝ) := by
        exact_mod_cast (by simpa only [mul_comm] using Nat.choose_succ_right_eq b j :
          (j + 1) * b.choose (j + 1) = (b - j) * b.choose j)
      have hNc : (j + 1 : ℝ) * (N.choose (j + 1) : ℝ) =
          ((N - j : ℕ) : ℝ) * (N.choose j : ℝ) := by
        exact_mod_cast (by simpa only [mul_comm] using Nat.choose_succ_right_eq N j :
          (j + 1) * N.choose (j + 1) = (N - j) * N.choose j)
      apply (mul_le_mul_iff_of_pos_left (by positivity : (0 : ℝ) < j + 1)).mp
      rw [← mul_assoc, hbc, ← mul_assoc, hNc]
      simpa only [pow_succ, mul_assoc, mul_comm, mul_left_comm] using hprod
    · rw [Nat.choose_eq_zero_of_lt (by omega : b < j + 1)]
      simp only [Nat.cast_zero, zero_mul]
      positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d585c34e73d979b5517cc5c0ebba6107cf40c1cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
