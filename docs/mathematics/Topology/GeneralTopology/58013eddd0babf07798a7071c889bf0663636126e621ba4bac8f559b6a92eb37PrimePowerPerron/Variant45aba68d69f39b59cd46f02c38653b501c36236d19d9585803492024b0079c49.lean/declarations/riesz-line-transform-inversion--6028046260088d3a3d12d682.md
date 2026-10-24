# riesz_line_transform_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:873cd55f-a5d7-e264-9234-4b37e4c343ae",
  "kind": "theorem",
  "lexical_name": "riesz_line_transform_inversion",
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
  "slug": "riesz-line-transform-inversion--6028046260088d3a3d12d682",
  "source": {
    "blob": "1bf9eb0e63164dce124d859c6bea8f9ca0edc96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6028046260088d3a3d12d682015478b4e15e5a1a8af12b08e779666f780d4e2d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:873cd55f-a5d7-e264-9234-4b37e4c343ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_line_transform_inversion (A c y : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, rieszLineTransform A c t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ)) =
        rieszWindow A y * (Real.exp (c * y) : ℂ) := by
  have he : (fun t : ℝ ↦ rieszLineTransform A c t *
      Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
      (fun t : ℝ ↦ (Real.exp (2 * A * c) : ℂ) *
        (boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) *
          Complex.exp (Complex.I * (t : ℂ) * ((2 * A - y : ℝ) : ℂ)))) := by
    funext t
    unfold rieszLineTransform
    rw [Complex.ofReal_exp]
    calc _ = (Complex.exp (2 * (A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I)) *
        Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) *
          boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) := by ring
      _ = (Complex.exp ((2 * A * c : ℝ) : ℂ) *
        Complex.exp (Complex.I * (t : ℂ) * ((2 * A - y : ℝ) : ℂ))) *
          boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) := by
        rw [← Complex.exp_add, ← Complex.exp_add]
        congr 2
        push_cast
        ring
      _ = _ := by ring
  rw [he, integral_const_mul]
  rw [mul_left_comm (1 / (2 * Real.pi) : ℂ) (Real.exp (2 * A * c) : ℂ)]
  rw [riesz_half_line_inversion A c (2 * A - y) hc]
  unfold rieszWindow
  by_cases hy : y < 2 * A
  · rw [indicator_of_mem (show 2 * A - y ∈ Ioi (0 : ℝ) by exact sub_pos.mpr hy),
      indicator_of_mem (show y ∈ Iio (2 * A) from hy)]
    push_cast
    rw [← mul_assoc, ← Complex.exp_add]
    have hexp : 2 * (A : ℂ) * (c : ℂ) + -(c : ℂ) * (2 * (A : ℂ) - (y : ℂ)) =
        ((c * y : ℝ) : ℂ) := by push_cast; ring
    rw [hexp]
    push_cast
    ring
  · rw [indicator_of_notMem (show 2 * A - y ∉ Ioi (0 : ℝ) by
        simp only [mem_Ioi]; linarith), indicator_of_notMem (show y ∉ Iio (2 * A) from hy)]
    simp

end FormalResearch.RiemannHypothesis.PrimePowerPerron

namespace FormalResearch.RiemannHypothesis.PrimePowerPerron
open MeasureTheory Complex Zeta23 Zeta23.EF
open scoped ArithmeticFunction
-- These three helpers extract the integrability and inversion content of pinned
-- Zeta23 vertical-line proofs, without a compact-support premise on the kernel.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf9eb0e63164dce124d859c6bea8f9ca0edc96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
