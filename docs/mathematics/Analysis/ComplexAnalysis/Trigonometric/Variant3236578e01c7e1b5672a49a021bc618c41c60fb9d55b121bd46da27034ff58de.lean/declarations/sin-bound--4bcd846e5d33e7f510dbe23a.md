# sin_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e87f781-d4d6-3961-4a15-eef2f1c43d11",
  "kind": "theorem",
  "lexical_name": "sin_bound",
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
  "slug": "sin-bound--4bcd846e5d33e7f510dbe23a",
  "source": {
    "blob": "12e06d144c2e964de52776140545d4c953fa59aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 570,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Trigonometric/Variant3236578e01c7e1b5672a49a021bc618c41c60fb9d55b121bd46da27034ff58de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bcd846e5d33e7f510dbe23a1ce2b346bbeeced74e1d90ca8c18ba7b6072c943",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Trigonometric/Variant3236578e01c7e1b5672a49a021bc618c41c60fb9d55b121bd46da27034ff58de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e87f781-d4d6-3961-4a15-eef2f1c43d11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_bound {x : ℂ} (hx : ‖x‖ ≤ 1) : ‖sin x - (x - x ^ 3 / 6)‖ ≤ ‖x‖ ^ 5 / 100 :=
  calc
    ‖sin x - (x - x ^ 3 / 6)‖ =
        ‖(exp (-x * I) - ∑ m ∈ range 5, (-x * I) ^ m / m.factorial) * I / 2 -
         (exp (x * I) - ∑ m ∈ range 5, (x * I) ^ m / m.factorial) * I / 2‖ := by
      simp [sin, field, Finset.sum_range_succ, Nat.factorial]
      grind [I_sq, two_ne_zero]
    _ ≤ ‖exp (-x * I) - ∑ m ∈ range 5, (-x * I) ^ m / m.factorial‖ / 2 +
        ‖exp (x * I) - ∑ m ∈ range 5, (x * I) ^ m / m.factorial‖ / 2 := by
      grw [norm_sub_le]
      simp
    _ ≤ ‖-x * I‖ ^ 5 * (Nat.succ 5 * (Nat.factorial 5 * (5 : ℕ) : ℝ)⁻¹) / 2 +
        ‖x * I‖ ^ 5 * (Nat.succ 5 * (Nat.factorial 5 * (5 : ℕ) : ℝ)⁻¹) / 2 := by
      grw [exp_bound (by simpa) (by simp), exp_bound (by simpa) (by simp)]
    _ = ‖x‖ ^ 5 / 100 := by norm_num [mul_one_div]

end Complex

namespace Real

open Complex

variable (x y : ℝ)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Trigonometric/Variant3236578e01c7e1b5672a49a021bc618c41c60fb9d55b121bd46da27034ff58de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Trigonometric/Variant3236578e01c7e1b5672a49a021bc618c41c60fb9d55b121bd46da27034ff58de.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e06d144c2e964de52776140545d4c953fa59aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
