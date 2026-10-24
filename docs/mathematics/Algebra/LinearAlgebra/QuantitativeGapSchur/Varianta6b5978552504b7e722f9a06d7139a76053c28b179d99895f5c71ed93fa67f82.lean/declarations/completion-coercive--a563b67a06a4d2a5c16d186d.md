# completion_coercive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7edfb656-c74f-2b28-0668-2e3f43a70ca6",
  "kind": "theorem",
  "lexical_name": "completion_coercive",
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
  "slug": "completion-coercive--a563b67a06a4d2a5c16d186d",
  "source": {
    "blob": "3beac2b8e5bdd4b95e657599d525b6d19f0b48e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a563b67a06a4d2a5c16d186d6760ab7e315c8fe60b5157819127284c2b183424",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7edfb656-c74f-2b28-0668-2e3f43a70ca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completion_coercive (energy : V → W → ℝ) (F : V → ℝ) (B : W → ℝ)
    (K : V → W) (a η b M : ℝ) (ha : 0 < a) (hη : 0 < η)
    (hb : 0 < b) (hM : 0 ≤ M)
    (henergy : ∀ x y, energy x y = F x + B (y + K x))
    (hF : ∀ x, a * η * ‖x‖ ^ 2 ≤ F x)
    (hB : ∀ y, b * ‖y‖ ^ 2 ≤ B y)
    (hK : ∀ x, ‖K x‖ ≤ M * ‖x‖) (x : V) (y : W) :
    min (a * η) b / (1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y‖ ^ 2) ≤ energy x y := by
  have hδ : 0 ≤ min (a * η) b := le_of_lt (lt_min (mul_pos ha hη) hb)
  have hd : 0 < (1 + M) ^ 2 := sq_pos_of_pos (by linarith)
  have hs := mul_le_mul_of_nonneg_left (shear_inverse_square K M hM hK x y)
    (div_nonneg hδ hd.le)
  have hscale : min (a * η) b / (1 + M) ^ 2 *
      ((1 + M) ^ 2 * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2)) =
      min (a * η) b * (‖x‖ ^ 2 + ‖y + K x‖ ^ 2) := by
    field_simp
  rw [hscale] at hs
  have hFx := (mul_le_mul_of_nonneg_right (min_le_left (a * η) b)
    (sq_nonneg ‖x‖)).trans (hF x)
  have hBy := (mul_le_mul_of_nonneg_right (min_le_right (a * η) b)
    (sq_nonneg ‖y + K x‖)).trans (hB (y + K x))
  rw [henergy]
  exact hs.trans (by rw [mul_add]; exact add_le_add hFx hBy)

open Matrix

variable {m n : Type*} [Fintype m] [Fintype n] [DecidableEq n]

/-- The literal complex homogeneous quadratic value, in the source convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3beac2b8e5bdd4b95e657599d525b6d19f0b48e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
