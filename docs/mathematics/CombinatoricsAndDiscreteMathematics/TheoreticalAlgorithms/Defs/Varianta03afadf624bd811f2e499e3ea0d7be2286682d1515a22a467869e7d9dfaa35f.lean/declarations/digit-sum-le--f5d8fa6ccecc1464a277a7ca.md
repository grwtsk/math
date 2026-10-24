# digit_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a90973d-ae86-d380-fb95-b6101d3d1217",
  "kind": "theorem",
  "lexical_name": "digit_sum_le",
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
  "slug": "digit-sum-le--f5d8fa6ccecc1464a277a7ca",
  "source": {
    "blob": "3c5b33db31d59ca0b3a926e4bdfe974ba8a21ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 429,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta03afadf624bd811f2e499e3ea0d7be2286682d1515a22a467869e7d9dfaa35f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5d8fa6ccecc1464a277a7ca4dc7d36d9a65a44299aa4d7455b505e90370932d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta03afadf624bd811f2e499e3ea0d7be2286682d1515a22a467869e7d9dfaa35f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a90973d-ae86-d380-fb95-b6101d3d1217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digit_sum_le (p n : ℕ) : List.sum (digits p n) ≤ n := by
  induction n with
  | zero => exact digits_zero _ ▸ Nat.le_refl (List.sum [])
  | succ n =>
    induction p with
    | zero => rw [digits_zero_succ, List.sum_cons, List.sum_nil, add_zero]
    | succ p =>
      nth_rw 2 [← ofDigits_digits p.succ (n + 1)]
      rw [← ofDigits_one <| digits p.succ n.succ]
      exact ofDigits_monotone (digits p.succ n.succ) <| Nat.succ_pos p

/-- Interpreting as a base `p` number and dividing by `p` is the same as interpreting the tail.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta03afadf624bd811f2e499e3ea0d7be2286682d1515a22a467869e7d9dfaa35f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta03afadf624bd811f2e499e3ea0d7be2286682d1515a22a467869e7d9dfaa35f.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c5b33db31d59ca0b3a926e4bdfe974ba8a21ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
