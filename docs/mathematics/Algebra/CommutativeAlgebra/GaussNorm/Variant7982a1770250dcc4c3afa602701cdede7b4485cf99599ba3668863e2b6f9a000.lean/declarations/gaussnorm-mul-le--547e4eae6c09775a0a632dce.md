# gaussNorm_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7731db63-2d5d-06b4-4dd8-40355bf0f5c2",
  "kind": "theorem",
  "lexical_name": "gaussNorm_mul_le",
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
  "slug": "gaussnorm-mul-le--547e4eae6c09775a0a632dce",
  "source": {
    "blob": "d3433bc3c4325da129954004b59d7457fd657c66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 205,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:547e4eae6c09775a0a632dce1764c116893f83fe61135b6ccc34c800346615b8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7731db63-2d5d-06b4-4dd8-40355bf0f5c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussNorm_mul_le [MulHomClass F R ℝ] (hna : IsNonarchimedean v) (p q : R[X]) (hc : 0 ≤ c) :
    (p * q).gaussNorm v c ≤ p.gaussNorm v c * q.gaussNorm v c := by
  rcases eq_or_ne (p * q) 0 with hpq | hpq
  · simp [hpq, hc, gaussNorm_nonneg, mul_nonneg]
  have h_supp_p : p.support.Nonempty := support_nonempty.mpr <| left_ne_zero_of_mul hpq
  have h_supp_q : q.support.Nonempty := support_nonempty.mpr <| right_ne_zero_of_mul hpq
  simp only [gaussNorm, support_nonempty, ne_eq, hpq, not_false_eq_true, ↓reduceDIte, h_supp_p,
    h_supp_q, sup'_le_iff, coeff_mul, Nat.sum_antidiagonal_eq_sum_range_succ_mk]
  intro i _
  obtain ⟨j, _, _⟩ := hna.finset_image_add_of_nonempty _ nonempty_range_add_one
  calc
  v (∑ j ∈ range (i + 1), p.coeff j * q.coeff (i - j)) * c ^ i
  _ ≤ v (p.coeff j * q.coeff (i - j)) * c ^ i := by gcongr
  _ = (v (p.coeff j) * c ^ j) * (v (q.coeff (i - j)) * c ^ (i - j)) := by
      have : c ^ j * c ^ (i - j) = c ^ i := by simp_all [← pow_add]
      grind
  _ ≤ (p.support.sup' _ fun i ↦ v (p.coeff i) * c ^ i)
    * q.support.sup' _ fun i ↦ v (q.coeff i) * c ^ i := by
      have hp_le := p.le_gaussNorm v hc j
      have hq_le := q.le_gaussNorm v hc (i - j)
      have := p.gaussNorm_nonneg v hc
      simp_all only [gaussNorm, ↓reduceDIte]
      gcongr

section AbsoluteValue

variable {R : Type*} [Ring R] {v : AbsoluteValue R ℝ} (hna : IsNonarchimedean v) (hc : 0 < c)

open Finset in
include hna hc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3433bc3c4325da129954004b59d7457fd657c66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
