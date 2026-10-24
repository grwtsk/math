# finiteController_reference_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a0c8e1b-0a04-1953-0beb-3334389c71fa",
  "kind": "theorem",
  "lexical_name": "finiteController_reference_re",
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
  "slug": "finitecontroller-reference-re--aecc58a63efec2d765868b4c",
  "source": {
    "blob": "705c7b38ae11cb2005d0f4856de0749a4dc72439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteEnergyFullAudit/Variantbffedaa9109a8f87d07541b6cce48768e236a9f4fcc9a0e247da52794228882a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aecc58a63efec2d765868b4c674f635107f54a651dc3e1899aa2ae01740ea0e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteEnergyFullAudit/Variantbffedaa9109a8f87d07541b6cce48768e236a9f4fcc9a0e247da52794228882a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a0c8e1b-0a04-1953-0beb-3334389c71fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteController_reference_re (n : ℕ) (a : Fin n → ℝ) (ha : ∀ i, 0 < a i)
    (c : Fin n → ℝ) :
    (inner ℂ referenceVector (sourceOperator (finiteController n a ha c))).re =
      ∑ i, c i * (actualLaplace 1).re / (1 + a i) := by
  unfold finiteController
  simp only [map_sum, map_smul, inner_sum, inner_smul_right]
  simp_rw [show ∀ i : Fin n, inner ℂ referenceVector (sourceOperator (controller (a i) (ha i))) =
      actualLaplace 1 / (1 + (a i : ℂ)) from fun i => reference_inner_response (a i) (ha i)]
  simp only [Complex.re_sum, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  apply Finset.sum_congr rfl
  intro i hi
  rw [show (1 : ℂ) + (a i : ℂ) = ((1 + a i : ℝ) : ℂ) by push_cast; rfl]
  simp only [Complex.div_ofReal_re]
  ring

/-- The complete input cost contains every cross term of the positive exponential Gram matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteEnergyFullAudit/Variantbffedaa9109a8f87d07541b6cce48768e236a9f4fcc9a0e247da52794228882a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteEnergyFullAudit/Variantbffedaa9109a8f87d07541b6cce48768e236a9f4fcc9a0e247da52794228882a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `705c7b38ae11cb2005d0f4856de0749a4dc72439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
