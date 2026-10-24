# mul_gaussNorm_le_gaussNorm_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9af81a52-6ff3-d5b6-0163-d24b961489ce",
  "kind": "theorem",
  "lexical_name": "mul_gaussNorm_le_gaussNorm_mul",
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
  "slug": "mul-gaussnorm-le-gaussnorm-mul--e9b6e2d0c85847e98fa8aa11",
  "source": {
    "blob": "d3433bc3c4325da129954004b59d7457fd657c66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 235,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9b6e2d0c85847e98fa8aa11a706bfba70aac24042da74de7b0c17ac5470883b",
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

Occurrence: `result:9af81a52-6ff3-d5b6-0163-d24b961489ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mul_gaussNorm_le_gaussNorm_mul (p q : R[X]) :
    p.gaussNorm v c * q.gaussNorm v c ≤ (p * q).gaussNorm v c := by
  have hc0 : 0 ≤ c := le_of_lt hc
  obtain ⟨i, hi_p, hlt_p⟩ := p.exists_min_eq_gaussNorm v hc0
  obtain ⟨j, hj_q, hlt_q⟩ := q.exists_min_eq_gaussNorm v hc0
  -- i and j are the minimal indices where the gauss norms are attained
  wlog hvpq : v (p.coeff i) ≠ 0 ∧ v (q.coeff j) ≠ 0
  · grind [mul_mul_mul_comm, gaussNorm_nonneg]
  have := hvpq.1
  have := hvpq.2
  apply le_of_eq_of_le _ <| (p * q).le_gaussNorm v hc0 (i + j)
  -- gaussNorm v c p * gaussNorm v c q is actually equal to v ((p * q).coeff (i + j)) * c ^ (i + j)
  rw [hi_p, hj_q, coeff_mul, Nat.sum_antidiagonal_eq_sum_range_succ_mk,
    hna.apply_sum_eq_of_lt (k := i) _ (v.map_neg) (by simp)]
  /- IsNonarchimedean.apply_sum_eq_of_lt makes the goal almost trivial so we are left to prove
  the hmax hypothesis -/
  · grind
  intro x hx hneq
  apply lt_of_mul_lt_mul_right _ <| pow_nonneg hc0 (i + j)
  have : x + (i + j - x) = i + j := by simp_all
  convert_to! v (p.coeff x) * c ^ x * (v (q.coeff (i + j - x)) * c ^ (i + j - x)) <
    v (p.coeff i) * c ^ i * (v (q.coeff j) * c ^ j)
  · grind
  · grind
  -- we need to distinguish two cases depending on whether x < i or x > i
  rcases lt_or_gt_of_ne hneq
  · calc
    v (p.coeff x) * c ^ x * (v (q.coeff (i + j - x)) * c ^ (i + j - x))
    _ ≤ v (p.coeff x) * c ^ x * gaussNorm v c q := by
        gcongr
        exact q.le_gaussNorm v hc0 (i + j - x)
    _ = v (p.coeff x) * c ^ x * (v (q.coeff j) * c ^ j) := by
        rw [hj_q]
    _ < v (p.coeff i) * c ^ i * (v (q.coeff j) * c ^ j) := by
        gcongr 1
        grind
  · calc
    v (p.coeff x) * c ^ x * (v (q.coeff (i + j - x)) * c ^ (i + j - x))
    _ ≤ gaussNorm v c p * (v (q.coeff (i + j - x)) * c ^ (i + j - x)) := by
        gcongr
        exact p.le_gaussNorm v hc0 x
    _ = v (p.coeff i) * c ^ i * (v (q.coeff (i + j - x)) * c ^ (i + j - x)) := by
        rw [hi_p]
    _ < v (p.coeff i) * c ^ i * (v (q.coeff j) * c ^ j) := by
        gcongr 1
        grind

include hna hc in
/-- If `v` is a nonarchimedean absolute value, then the Gauss norm is multiplicative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3433bc3c4325da129954004b59d7457fd657c66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
