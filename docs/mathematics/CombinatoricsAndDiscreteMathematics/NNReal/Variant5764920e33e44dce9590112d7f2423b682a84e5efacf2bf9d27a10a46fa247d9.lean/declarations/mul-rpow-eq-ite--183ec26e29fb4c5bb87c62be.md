# mul_rpow_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b16dbf9-5307-749c-a13f-4c6af27dd793",
  "kind": "theorem",
  "lexical_name": "mul_rpow_eq_ite",
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
  "slug": "mul-rpow-eq-ite--183ec26e29fb4c5bb87c62be",
  "source": {
    "blob": "30da4db0c91138f8f4780602b86936c621046c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 568,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant5764920e33e44dce9590112d7f2423b682a84e5efacf2bf9d27a10a46fa247d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:183ec26e29fb4c5bb87c62bebc9ffbd39c57d095cb468e1d1f5d332e450991be",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant5764920e33e44dce9590112d7f2423b682a84e5efacf2bf9d27a10a46fa247d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b16dbf9-5307-749c-a13f-4c6af27dd793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_rpow_eq_ite (x y : ℝ≥0∞) (z : ℝ) :
    (x * y) ^ z = if (x = 0 ∧ y = ⊤ ∨ x = ⊤ ∧ y = 0) ∧ z < 0 then ⊤ else x ^ z * y ^ z := by
  rcases eq_or_ne z 0 with (rfl | hz); · simp
  replace hz := hz.lt_or_lt
  wlog hxy : x ≤ y
  · convert this y x z hz (le_of_not_le hxy) using 2 <;> simp only [mul_comm, and_comm, or_comm]
  rcases eq_or_ne x 0 with (rfl | hx0)
  · induction y using ENNReal.recTopCoe <;> cases' hz with hz hz <;> simp [*, hz.not_lt]
  rcases eq_or_ne y 0 with (rfl | hy0)
  · exact (hx0 (bot_unique hxy)).elim
  induction x using ENNReal.recTopCoe
  · cases' hz with hz hz <;> simp [hz, top_unique hxy]
  induction y using ENNReal.recTopCoe
  · rw [ne_eq, coe_eq_zero] at hx0
    cases' hz with hz hz <;> simp [*]
  simp only [*, false_and_iff, and_false_iff, false_or_iff, if_false]
  norm_cast at *
  rw [coe_rpow_of_ne_zero (mul_ne_zero hx0 hy0), NNReal.mul_rpow]
  norm_cast
#align ennreal.mul_rpow_eq_ite ENNReal.mul_rpow_eq_ite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant5764920e33e44dce9590112d7f2423b682a84e5efacf2bf9d27a10a46fa247d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant5764920e33e44dce9590112d7f2423b682a84e5efacf2bf9d27a10a46fa247d9.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30da4db0c91138f8f4780602b86936c621046c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
