# mangoldtDirichletTerm_le_cellMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5a28a8c-b41b-8801-edbc-252321d72ed7",
  "kind": "theorem",
  "lexical_name": "mangoldtDirichletTerm_le_cellMajorant",
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
  "slug": "mangoldtdirichletterm-le-cellmajorant--4794b01cf0fb298f247fc2a2",
  "source": {
    "blob": "d524e5d5829ba1fe7db57637416b8937744b3c6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 57,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variant17e1c7692e9e7be383aa9f97e559ed58b0658e316c4ddf145354d43504e0dd93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4794b01cf0fb298f247fc2a2d9af67a936baa7aa0226e36ad8c9e59d4fe2799d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variant17e1c7692e9e7be383aa9f97e559ed58b0658e316c4ddf145354d43504e0dd93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5a28a8c-b41b-8801-edbc-252321d72ed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtDirichletTerm_le_cellMajorant
    {c : ℝ} (hc : 1 < c) {n : ℕ} (hn : 2 ≤ n)
    {x : ℝ} (hx : x ∈ Icc ((n : ℝ) - 1) (n : ℝ)) :
    mangoldtDirichletTerm c n ≤ cellMajorant c x := by
  have hn2 : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have hx1 : 1 ≤ x := by linarith [hx.1]
  have hx0 : 0 < x := by linarith
  have hn0 : 0 < (n : ℝ) := by linarith
  have hlog : Real.log (n : ℝ) ≤ Real.log 2 + Real.log x := by
    calc
      Real.log (n : ℝ) ≤ Real.log (2 * x) :=
        Real.log_le_log hn0 (by linarith [hx.1])
      _ = Real.log 2 + Real.log x := Real.log_mul (by norm_num) hx0.ne'
  have hcoef : ArithmeticFunction.vonMangoldt n ≤ Real.log 2 + Real.log x :=
    ArithmeticFunction.vonMangoldt_le_log.trans hlog
  have hpow : (n : ℝ) ^ (-c) ≤ x ^ (-c) :=
    Real.rpow_le_rpow_of_nonpos hx0 hx.2 (by linarith)
  have hbase : 0 ≤ Real.log 2 + Real.log x :=
    add_nonneg (Real.log_nonneg (by norm_num)) (Real.log_nonneg hx1)
  rw [mangoldtDirichletTerm, div_eq_mul_inv, ← Real.rpow_neg (Nat.cast_nonneg n)]
  exact mul_le_mul hcoef hpow (Real.rpow_nonneg (Nat.cast_nonneg n) _ ) hbase

/-- The majorant is nonnegative on the comparison half-line used here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variant17e1c7692e9e7be383aa9f97e559ed58b0658e316c4ddf145354d43504e0dd93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variant17e1c7692e9e7be383aa9f97e559ed58b0658e316c4ddf145354d43504e0dd93.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d524e5d5829ba1fe7db57637416b8937744b3c6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
