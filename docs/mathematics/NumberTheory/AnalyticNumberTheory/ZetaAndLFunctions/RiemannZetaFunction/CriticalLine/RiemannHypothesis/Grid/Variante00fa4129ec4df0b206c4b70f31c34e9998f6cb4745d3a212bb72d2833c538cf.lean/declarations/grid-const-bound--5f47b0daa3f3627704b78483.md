# grid_const_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6153778406ddd1c251d3e3d2d5b354acad63114",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b688f59b-205a-2dc5-e317-710f6e2f9ef0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec7e1633-b2fd-67fa-c49b-898b474639b3",
  "kind": "lemma",
  "lexical_name": "grid_const_bound",
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
  "slug": "grid-const-bound--5f47b0daa3f3627704b78483",
  "source": {
    "blob": "d6153778406ddd1c251d3e3d2d5b354acad63114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f47b0daa3f3627704b7848321be42a98484d522b1c42e3700cf341ee4c8a020",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec7e1633-b2fd-67fa-c49b-898b474639b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma grid_const_bound {D L : ℝ} (hD : 1 ≤ D) (hL : 2 ≤ L) :
    (D ^ 4)⁻¹ + (D ^ 3)⁻¹ / (3 * (2 * π / L)) ≤ L * (D ^ 3)⁻¹ := by
  have hD0 : 0 < D := by linarith
  have hπ : 2 ≤ π := Real.two_le_pi
  have h1 : (D ^ 4)⁻¹ ≤ (D ^ 3)⁻¹ := by
    apply inv_anti₀ (by positivity)
    calc D ^ 3 = D ^ 3 * 1 := by ring
      _ ≤ D ^ 3 * D := mul_le_mul_of_nonneg_left hD (by positivity)
      _ = D ^ 4 := by ring
  have h2 : (D ^ 3)⁻¹ / (3 * (2 * π / L)) = (L / (6 * π)) * (D ^ 3)⁻¹ := by
    field_simp
    ring
  rw [h2]
  have h3 : L / (6 * π) ≤ L / 2 := by
    apply div_le_div_of_nonneg_left (by linarith) (by norm_num) (by linarith)
  have hD3 : 0 ≤ (D ^ 3)⁻¹ := by positivity
  nlinarith [mul_le_mul_of_nonneg_right h3 hD3]

/-- **Grid estimate** (proof of [prop:tail]): with τ_k := T + k·h, h = 2π/L, d·h ≤ T,
L ≥ 2 and D := dist(γ, I) ≥ 1 (I = [T,2T]):  ∑_{k<d} |γ − τ_k|⁻⁴ ≤ L · D⁻³. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variante00fa4129ec4df0b206c4b70f31c34e9998f6cb4745d3a212bb72d2833c538cf.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6153778406ddd1c251d3e3d2d5b354acad63114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
