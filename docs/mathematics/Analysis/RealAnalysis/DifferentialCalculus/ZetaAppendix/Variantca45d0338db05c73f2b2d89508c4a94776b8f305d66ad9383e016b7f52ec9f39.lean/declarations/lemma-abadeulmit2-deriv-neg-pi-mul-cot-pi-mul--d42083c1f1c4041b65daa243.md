# lemma_abadeulmit2_deriv_neg_pi_mul_cot_pi_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2690,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9fef289-f417-e2e4-3b97-3f71ba8b3344",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e532086f-6607-c876-82a5-e5dbc75877e6",
  "kind": "lemma",
  "lexical_name": "lemma_abadeulmit2_deriv_neg_pi_mul_cot_pi_mul",
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
  "slug": "lemma-abadeulmit2-deriv-neg-pi-mul-cot-pi-mul--d42083c1f1c4041b65daa243",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2722,
    "line": 2690,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d42083c1f1c4041b65daa2434f8c5052b35bd2fcba9ff44bdfbf06cd5b44d078",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e532086f-6607-c876-82a5-e5dbc75877e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2690–2722.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_abadeulmit2_deriv_neg_pi_mul_cot_pi_mul {z : ℂ} (hz : z ∈ integerComplement) :
  deriv (fun w ↦ -π * Complex.cot (π * w)) z =
  π ^ 2 / (Complex.sin (π * z)) ^ 2 := by
  have hsin : sin (π * z) ≠ 0 := sin_pi_mul_ne_zero hz
  have h_deriv_cot : HasDerivAt (fun w ↦ Complex.cot (π * w)) (-(π / sin (π * z) ^ 2)) z := by
    have h1 : HasDerivAt (fun (w : ℂ) ↦ (π : ℂ) * w) π z := by
      convert hasDerivAt_mul_const (π : ℂ) using 1
      ext; ring
    have h2 : HasDerivAt Complex.cot (-(1 / sin (π * z) ^ 2)) (π * z) := by
      unfold Complex.cot
      convert (hasDerivAt_cos (π * z)).div (hasDerivAt_sin (π * z)) hsin using 1
      field_simp
      linear_combination Complex.sin_sq_add_cos_sq (π * z)
    convert h2.comp z h1 using 1
    ring
  rw [deriv_const_mul _ h_deriv_cot.differentiableAt, h_deriv_cot.deriv]
  field_simp

@[blueprint
  "lem:abadeulmit2"
  (title := "Euler/Mittag-Leffler expansion for cosec squared")
  (statement := /--
Let $z\in \mathbb{C}$, $z\notin \mathbb{Z}$. Then
\[\frac{\pi^2}{\sin^2 \pi z} = \sum_{n=-\infty}^\infty \frac{1}{(z-n)^2}.\]
-/)
  (proof := /--
Differentiate the expansion of $\pi \cot \pi z$ term-by-term because it converges
uniformly on compact subsets of $\mathbb{C}\setminus \mathbb{Z}$.
By $\left(\pi \cot \pi z\right)' = - \frac{\pi^2}{\sin^2 \pi z}$ and
$\left(\frac{1}{z\pm n}\right)' = -\frac{1}{(z\pm n)^2}$, we are done.
-/)
  (latexEnv := "lemma")
  (discussion := 570)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L2690).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
