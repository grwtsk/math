# pow_le_descPochhammer_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f39a878-d0c4-39a2-5860-2568ba7732e1",
  "kind": "theorem",
  "lexical_name": "pow_le_descPochhammer_eval",
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
  "slug": "pow-le-descpochhammer-eval--a417212d58ce261a9e7da863",
  "source": {
    "blob": "30a7dc5fa43bf3491b1a8b79afb762e553823b88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 495,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant36a2c8b36d58b661c2813d8c363238bae4d7be14b3d9b2c4420b52fc055b0446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a417212d58ce261a9e7da8636adf0703f41a51fb77e978bb3eb92a4242955c08",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variant36a2c8b36d58b661c2813d8c363238bae4d7be14b3d9b2c4420b52fc055b0446.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f39a878-d0c4-39a2-5860-2568ba7732e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_le_descPochhammer_eval {n : ℕ} {s : S} (h : n - 1 ≤ s) :
    (s - n + 1) ^ n ≤ (descPochhammer S n).eval s := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Nat.cast_add_one, add_sub_cancel_right, ← sub_nonneg] at h
    have hsub1 : n - 1 ≤ s := (sub_le_self (n : S) zero_le_one).trans (le_of_sub_nonneg h)
    rw [pow_succ, descPochhammer_succ_eval, Nat.cast_add_one, sub_add, add_sub_cancel_right]
    apply mul_le_mul _ le_rfl h (descPochhammer_nonneg hsub1)
    exact (ih hsub1).trans' <| pow_le_pow_left₀ h (le_add_of_nonneg_right zero_le_one) n

/-- `descPochhammer S n` is monotone on `[n-1, ∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variant36a2c8b36d58b661c2813d8c363238bae4d7be14b3d9b2c4420b52fc055b0446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant36a2c8b36d58b661c2813d8c363238bae4d7be14b3d9b2c4420b52fc055b0446.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a7dc5fa43bf3491b1a8b79afb762e553823b88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
