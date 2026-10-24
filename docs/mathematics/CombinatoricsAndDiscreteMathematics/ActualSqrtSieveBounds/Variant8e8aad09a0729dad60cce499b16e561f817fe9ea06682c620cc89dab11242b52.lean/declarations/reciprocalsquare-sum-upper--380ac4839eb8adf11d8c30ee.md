# reciprocalSquare_sum_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:957c7478-4b1c-b2cc-3f40-943854ee4be4",
  "kind": "theorem",
  "lexical_name": "reciprocalSquare_sum_upper",
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
  "slug": "reciprocalsquare-sum-upper--380ac4839eb8adf11d8c30ee",
  "source": {
    "blob": "f2ec7e4b0bc4f4d7c38b50fa895be0fdcab53021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:380ac4839eb8adf11d8c30eed1bba10418a707a6e5abe603a1addd143f953b52",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:957c7478-4b1c-b2cc-3f40-943854ee4be4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalSquare_sum_upper (N : ℕ) :
    (∑ k ∈ Finset.Icc 2 N, 1 / (k : ℝ) ^ 2) ≤ 25 / 36 := by
  have haux {n : ℕ} (hn : 3 ≤ n) :
      (∑ k ∈ Finset.Icc 2 n, 1 / (k : ℝ) ^ 2) ≤ 25 / 36 - 1 / (n : ℝ) := by
    induction n, hn using Nat.le_induction with
    | base => norm_num [Finset.sum_Icc_succ_top]
    | succ n hn ih =>
      rw [Finset.sum_Icc_succ_top (by omega)]
      have hp : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
      have hp' : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
      have he : 1 / (((n + 1 : ℕ) : ℝ)) ^ 2 ≤
          1 / (n : ℝ) - 1 / ((n + 1 : ℕ) : ℝ) := by
        push_cast
        field_simp
        nlinarith
      linarith
  by_cases hN : 3 ≤ N
  · have hs := haux hN
    have hi : 0 ≤ 1 / (N : ℝ) := by positivity
    linarith
  · have hN2 : N = 0 ∨ N = 1 ∨ N = 2 := by omega
    rcases hN2 with hN | hN | hN <;> subst N <;> norm_num

/-- Six actual square-divisor indices already supply enough of the saved first-term budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant8e8aad09a0729dad60cce499b16e561f817fe9ea06682c620cc89dab11242b52.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2ec7e4b0bc4f4d7c38b50fa895be0fdcab53021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
