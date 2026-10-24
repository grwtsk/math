# atomKernel_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b22682e66ee5b5d6940008b257670e1ddb10218",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc2f3463-1277-e817-e4df-9014efd880a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c0a6bbb-d920-e80d-f8a9-fb2bdda2e288",
  "kind": "theorem",
  "lexical_name": "atomKernel_laplace",
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
  "slug": "atomkernel-laplace--54437da3dc056b17ff4bf06e",
  "source": {
    "blob": "3b22682e66ee5b5d6940008b257670e1ddb10218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 103,
    "path": "GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54437da3dc056b17ff4bf06e3b090f6b08b74eddc0cf50d4de14ebe54eadd61b",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c0a6bbb-d920-e80d-f8a9-fb2bdda2e288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atomKernel_laplace (z : ℂ) (hz : 0 < z.re) (n : ℕ) (hn : 0 < n) :
    (∫ u : ℝ in Set.Ioi 0, atomKernel z n u) =
      (n : ℂ) ^ (-(z + 1/2)) / (z * (z + 1/2)) := by
  have hmul : (2 : ℂ) * Complex.exp (-(Real.log (n : ℝ) : ℂ)/2) *
      Complex.exp (-z * (Real.log (n : ℝ) : ℂ)) =
      2 * Complex.exp (-(z + 1/2) * (Real.log (n : ℝ) : ℂ)) := by
    rw [mul_assoc, ← Complex.exp_add]
    congr 2
    ring
  have hcpow : (n : ℂ) ^ (-(z + 1/2)) =
      Complex.exp (-(z + 1/2) * (Real.log (n : ℝ) : ℂ)) := by
    rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast hn.ne'), ← Complex.natCast_log]
    congr 1
    ring
  rw [atomKernel_integral z hz n hn, sqrtInverse_exp_log n hn, hmul,
    hcpow]
  have hz₀ : z ≠ 0 := by intro h; simp [h] at hz
  have hz₁ : z + 1/2 ≠ 0 := by
    intro h
    have he := congrArg Complex.re h
    simp at he
    linarith
  have hz₂ : 1 + z * 2 ≠ 0 := by
    intro h
    apply hz₁
    linear_combination h / 2
  field_simp [hz₀, hz₁, hz₂]
  ring_nf
  field_simp [hz₂]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b22682e66ee5b5d6940008b257670e1ddb10218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
