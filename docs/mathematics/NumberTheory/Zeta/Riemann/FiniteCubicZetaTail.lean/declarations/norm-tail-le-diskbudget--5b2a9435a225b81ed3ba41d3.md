# norm_tail_le_diskBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d85c1e62-71d8-1510-c724-9e92bc3f86d5",
  "kind": "theorem",
  "lexical_name": "norm_tail_le_diskBudget",
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
  "slug": "norm-tail-le-diskbudget--5b2a9435a225b81ed3ba41d3",
  "source": {
    "blob": "b9a10655c573ec4c0242dee5c72dc304387ebc38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b2a9435a225b81ed3ba41d37957b312d8d7a1c6dce88e4576b4cb7d78490004",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d85c1e62-71d8-1510-c724-9e92bc3f86d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_tail_le_diskBudget (N : ℕ) (c : ℂ) (r : ℝ)
    (hr : 0 ≤ r) (hc : r ≤ c.re) (s : ℂ) (hs : s ∈ closedBall c r) :
    ‖analyticTail N s‖ ≤ diskBudget N c r := by
  have hd : ‖s - c‖ ≤ r := by simpa [mem_closedBall, dist_eq_norm] using hs
  have hshift (a : ℂ) : ‖s + a‖ ≤ rectNorm (c + a) + r := by
    have ht := norm_le_norm_sub_add (s + a) (c + a)
    have he : (s + a) - (c + a) = s - c := by ring
    rw [he] at ht
    linarith [norm_le_rectNorm (c + a)]
  have h0 : ‖s‖ ≤ rectNorm c + r := by simpa using hshift 0
  have h1 := hshift 1
  have h2 := hshift 2
  refine (norm_tail_le N s (re_nonneg_on_disk c s r hc hs)).trans ?_
  unfold diskBudget
  apply div_le_div_of_nonneg_right _ (by positivity)
  exact mul_le_mul (mul_le_mul h0 h1 (norm_nonneg _) (by
    linarith [rectNorm_nonneg c])) h2 (norm_nonneg _) (by
      have h := rectNorm_nonneg c
      have h' := rectNorm_nonneg (c + 1)
      positivity)

/-- Cauchy is applied to the holomorphic omitted tail, including at one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a10655c573ec4c0242dee5c72dc304387ebc38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
