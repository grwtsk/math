# weighted_coercivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb893c40-fb1e-862f-0b7d-728b842c136c",
  "kind": "theorem",
  "lexical_name": "weighted_coercivity",
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
  "slug": "weighted-coercivity--c7ee04ebbc9cf948097180bd",
  "source": {
    "blob": "77ec1b46b082e20d05014533755ad2a5eed0b519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7ee04ebbc9cf948097180bd7ef639b5d8653a22a029bc2dd19602f26df38231",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb893c40-fb1e-862f-0b7d-728b842c136c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_coercivity (T : Matrix ι κ ℝ) (G H : Matrix ι ι ℝ)
    (G' H' E : Matrix κ κ ℝ) [Invertible G']
    (oldSquare : (ι → ℝ) → ℝ) (newSquare : (κ → ℝ) → ℝ)
    (admissible : (κ → ℝ) → Prop) (Δ c ε : ℝ) (hΔ : 0 ≤ Δ)
    (hsource : H' = weightedAdjoint T G G' * H * T + E)
    (hcoercive : ∀ x, admissible x → Δ * oldSquare (T.mulVec x) ≤
      quadratic (G * H) (T.mulVec x))
    (hnorm : ∀ x, admissible x → c ^ 2 * newSquare x ≤ oldSquare (T.mulVec x))
    (herror : ∀ x, admissible x → -ε * newSquare x ≤ quadratic (G' * E) x)
    (x : κ → ℝ) (hx : admissible x) :
    (Δ * c ^ 2 - ε) * newSquare x ≤ quadratic (G' * H') x := by
  have he : quadratic (G' * H') x =
      quadratic (G * H) (T.mulVec x) + quadratic (G' * E) x := by
    rw [hsource, Matrix.mul_add, metric_pullback_identity]
    simp only [quadratic, Matrix.add_mulVec, dotProduct_add]
    rw [← quadratic, quadratic_congruence]
    rfl
  have h := mul_le_mul_of_nonneg_left (hnorm x hx) hΔ
  rw [he]
  nlinarith [hcoercive x hx, herror x hx]

omit [DecidableEq κ] in
/-- A supplied checker certificate for the metric-converted gap target gives
the weighted coercivity conclusion on the checker's exact admissible vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuantitativeGapMetric/Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77ec1b46b082e20d05014533755ad2a5eed0b519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
