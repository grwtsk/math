# mobiusQuadratureError_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a72de2c69fa53f906a9ff18963b7b7575eac467d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74a3995b-7509-b792-e061-2b179c90af3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:669d8890-b4b8-3cfa-3b20-15d14879495f",
  "kind": "theorem",
  "lexical_name": "mobiusQuadratureError_abs_le",
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
  "slug": "mobiusquadratureerror-abs-le--a22943fb8eacfb47ea98cf7c",
  "source": {
    "blob": "a72de2c69fa53f906a9ff18963b7b7575eac467d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a22943fb8eacfb47ea98cf7c48f83d2d9cd52f30245484685da00ccc78dfd488",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:669d8890-b4b8-3cfa-3b20-15d14879495f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobiusQuadratureError_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |mobiusQuadratureError x| ≤ 2 * x := by
  unfold mobiusQuadratureError
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊x⌋₊,
        |(ArithmeticFunction.moebius d : ℝ) *
          LogSquareQuadrature.logSquareQuadrature (x / (d : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / (d : ℝ)) ^ 2 := by
      apply Finset.sum_le_sum
      intro d hd
      have hm : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      rw [abs_mul]
      exact (mul_le_of_le_one_left (abs_nonneg _) hm).trans
        (LogSquareQuadrature.logSquareQuadrature_abs_le (x / (d : ℝ))
          (quotient_ge_one x hx d hd))
    _ ≤ _ := sum_logRatioSquare_le x hx

/-- Exact finite transport separates the controlled quadrature error without changing its signed main. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a72de2c69fa53f906a9ff18963b7b7575eac467d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
