# reciprocalSqrt_sum_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca19754f-b92c-df67-4d91-c0d419038252",
  "kind": "theorem",
  "lexical_name": "reciprocalSqrt_sum_lower",
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
  "slug": "reciprocalsqrt-sum-lower--90bf64da597b9c0e254d6ad4",
  "source": {
    "blob": "a855e1862257f0459a81931a40df6c44af4b3ed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90bf64da597b9c0e254d6ad45533aa9d2503c715bab2d98bf251663e93d41a64",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca19754f-b92c-df67-4d91-c0d419038252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalSqrt_sum_lower (N : ℕ) :
    2 * Real.sqrt (N : ℝ) - 2 ≤ ∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt (n : ℝ) := by
  have hs : 2 * Real.sqrt ((N + 1 : ℕ) : ℝ) - 2 ≤
      ∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt (n : ℝ) := by
    induction N with
    | zero => norm_num
    | succ n ih =>
      rw [Finset.sum_Icc_succ_top (by omega)]
      have he := reciprocalSqrt_lower_step n
      push_cast at ih he ⊢
      rw [show (n : ℝ) + 1 + 1 = (n : ℝ) + 2 by ring]
      linarith only [ih, he]
  have hm := Real.sqrt_le_sqrt (show (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ) by exact_mod_cast Nat.le_succ N)
  linarith

/-- An exact finite square-divisor reciprocal sieve bound isolates the two leading terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a855e1862257f0459a81931a40df6c44af4b3ed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
