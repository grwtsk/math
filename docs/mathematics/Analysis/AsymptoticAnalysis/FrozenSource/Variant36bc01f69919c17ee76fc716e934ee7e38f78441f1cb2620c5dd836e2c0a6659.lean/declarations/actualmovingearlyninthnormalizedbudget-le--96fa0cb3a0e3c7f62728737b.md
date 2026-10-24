# actualMovingEarlyNinthNormalizedBudget_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dab8a1c-ec50-d95f-1cbd-e443c8afb865",
  "kind": "theorem",
  "lexical_name": "actualMovingEarlyNinthNormalizedBudget_le",
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
  "slug": "actualmovingearlyninthnormalizedbudget-le--96fa0cb3a0e3c7f62728737b",
  "source": {
    "blob": "f6ca917edc0ee9a729910161bd44d2b6978a0488",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FrozenSource/Variant36bc01f69919c17ee76fc716e934ee7e38f78441f1cb2620c5dd836e2c0a6659.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96fa0cb3a0e3c7f62728737bd0eb97fadc197dd09cd91c243669eac403043964",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FrozenSource/Variant36bc01f69919c17ee76fc716e934ee7e38f78441f1cb2620c5dd836e2c0a6659.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dab8a1c-ec50-d95f-1cbd-e443c8afb865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMovingEarlyNinthNormalizedBudget_le {A : ℝ} (hA : 91 ≤ A) :
    actualNinthNormalizedCriticalEarlyBudget A A ≤ (27 / 4 * B) * A ^ 9 * Real.exp (-A / 2) := by
  have ha : Real.log 7 ≤ A := by
    have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hh := actualEarlyCriticalErrorCenter_abs_le ha
  have hb : 0 ≤ B := by positivity
  have he : Real.exp (A / 2) * Real.exp (-A) = Real.exp (-A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hpow : A ^ 8 ≤ A ^ 9 := by
    calc
      _ = A ^ 8 * 1 := by ring
      _ ≤ A ^ 8 * A := mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ = _ := by ring
  unfold actualNinthNormalizedCriticalEarlyBudget
  calc
    _ ≤ ((B / 2) * Real.exp (A / 2)) * (A ^ 9 * Real.exp (-A)) +
        (2 * B * Real.exp (A / 2) * (5 / 8 * A ^ 2 + 5 / 2 * A)) *
          (A ^ 7 * Real.exp (-A)) :=
      add_le_add (mul_le_mul_of_nonneg_right hh (by positivity)) le_rfl
    _ = B * (7 / 4 * A ^ 9 + 5 * A ^ 8) * Real.exp (-A / 2) := by
      calc
        _ = B * (7 / 4 * A ^ 9 + 5 * A ^ 8) *
            (Real.exp (A / 2) * Real.exp (-A)) := by ring
        _ = _ := by rw [he]
    _ ≤ _ := by
      have hm : 7 / 4 * A ^ 9 + 5 * A ^ 8 ≤ 27 / 4 * A ^ 9 := by linarith
      have hh := mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hm hb)
        (Real.exp_pos (-A / 2)).le
      calc
        _ ≤ B * (27 / 4 * A ^ 9) * Real.exp (-A / 2) := hh
        _ = _ := by ring

/-- A source-specific late PNT rate gives an explicit full normalized budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FrozenSource/Variant36bc01f69919c17ee76fc716e934ee7e38f78441f1cb2620c5dd836e2c0a6659.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FrozenSource/Variant36bc01f69919c17ee76fc716e934ee7e38f78441f1cb2620c5dd836e2c0a6659.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6ca917edc0ee9a729910161bd44d2b6978a0488` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
