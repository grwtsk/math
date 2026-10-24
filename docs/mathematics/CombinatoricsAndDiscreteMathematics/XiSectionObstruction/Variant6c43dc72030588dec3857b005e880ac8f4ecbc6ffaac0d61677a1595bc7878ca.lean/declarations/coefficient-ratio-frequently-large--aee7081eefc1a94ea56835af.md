# coefficient_ratio_frequently_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54a42289-af1d-6389-ad35-a05059cea4f7",
  "kind": "theorem",
  "lexical_name": "coefficient_ratio_frequently_large",
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
  "slug": "coefficient-ratio-frequently-large--aee7081eefc1a94ea56835af",
  "source": {
    "blob": "0dd1b441079704ebf97038cc9b4de66381394fb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant6c43dc72030588dec3857b005e880ac8f4ecbc6ffaac0d61677a1595bc7878ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aee7081eefc1a94ea56835af59a68ad302def4ceb50b678b4847311f25bb63a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant6c43dc72030588dec3857b005e880ac8f4ecbc6ffaac0d61677a1595bc7878ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54a42289-af1d-6389-ad35-a05059cea4f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_ratio_frequently_large (N : ℕ) :
    ∃ n : ℕ, N ≤ n ∧ coefficient (n + 1) * (n + 1 : ℕ) ≤ 2 * coefficient n := by
  by_contra! h
  let b : ℕ → ℝ := fun n => coefficient n * (n.factorial : ℝ)
  have hbpos : 0 < b N := mul_pos
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula N) (by positivity)
  have hstep (n : ℕ) (hn : N ≤ n) : 2 * b n < b (n + 1) := by
    have hh := mul_lt_mul_of_pos_right (h n hn) (by positivity : (0 : ℝ) < n.factorial)
    simpa [b, Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one, mul_assoc] using hh
  have hg (k : ℕ) : b N * (2 : ℝ) ^ k ≤ b (N + k) := by
    induction k with
    | zero => simp
    | succ k ih =>
      have hs := hstep (N + k) (by omega)
      rw [pow_succ]
      change b N * (2 ^ k * 2) ≤ b (N + k + 1)
      nlinarith
  obtain ⟨k, hk⟩ := pow_unbounded_of_one_lt
    (8 * thetaPhiDecayConstant / b N) (by norm_num : (1 : ℝ) < 2)
  have hh := (div_lt_iff₀ hbpos).mp hk
  have hu := coefficient_factorial_bound (N + k)
  have hl := hg k
  change b (N + k) ≤ 8 * thetaPhiDecayConstant at hu
  nlinarith


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant6c43dc72030588dec3857b005e880ac8f4ecbc6ffaac0d61677a1595bc7878ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant6c43dc72030588dec3857b005e880ac8f4ecbc6ffaac0d61677a1595bc7878ca.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dd1b441079704ebf97038cc9b4de66381394fb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
