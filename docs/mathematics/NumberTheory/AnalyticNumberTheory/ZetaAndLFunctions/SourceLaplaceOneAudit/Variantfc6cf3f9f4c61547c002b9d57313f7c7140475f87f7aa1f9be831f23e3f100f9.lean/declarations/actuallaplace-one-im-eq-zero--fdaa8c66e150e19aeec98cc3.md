# actualLaplace_one_im_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dc3850d-3589-0a97-825a-a8ba76602bce",
  "kind": "theorem",
  "lexical_name": "actualLaplace_one_im_eq_zero",
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
  "slug": "actuallaplace-one-im-eq-zero--fdaa8c66e150e19aeec98cc3",
  "source": {
    "blob": "dac3e0d11114f5b915162b55a7b1e463f4b6f017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variantfc6cf3f9f4c61547c002b9d57313f7c7140475f87f7aa1f9be831f23e3f100f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdaa8c66e150e19aeec98cc3f22938cb5a3b1697d5b7824df9683fbd8c3862ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variantfc6cf3f9f4c61547c002b9d57313f7c7140475f87f7aa1f9be831f23e3f100f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dc3850d-3589-0a97-825a-a8ba76602bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLaplace_one_im_eq_zero : (actualLaplace 1).im = 0 := by
  rw [actualLaplace, fixedKernel_laplace_eq_transferProduct 1 (by norm_num), V_one_eq]
  have he : Complex.exp (-1) = (Real.exp (-1) : ℂ) := by
    simp
  rw [he]
  have hz : (riemannZeta (1 / 2 + 1 : ℂ)).im = 0 := by
    convert riemannZeta_im_eq_zero_of_one_lt (by norm_num : (1 : ℝ) < 3 / 2) using 1
    norm_num
  simp only [Complex.mul_im, Complex.ofReal_im, Complex.ofReal_re, hz,
    zero_mul, mul_zero, add_zero]

end
end SourceLaplaceOneScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 1000000
set_option pp.deepTerms true
set_option maxRecDepth 10000
#print SourceLaplaceOneScratch.source_exponential_difference_pos
#print axioms SourceLaplaceOneScratch.source_exponential_difference_pos
#print SourceLaplaceOneScratch.V_one_eq
#print axioms SourceLaplaceOneScratch.V_one_eq
#print SourceLaplaceOneScratch.V_one_re_pos
#print axioms SourceLaplaceOneScratch.V_one_re_pos
#print SourceLaplaceOneScratch.V_one_ne_zero
#print axioms SourceLaplaceOneScratch.V_one_ne_zero
#print SourceLaplaceOneScratch.actualLaplace_one_ne_zero
#print axioms SourceLaplaceOneScratch.actualLaplace_one_ne_zero
#print SourceLaplaceOneScratch.actualLaplace_one_re_pos
#print axioms SourceLaplaceOneScratch.actualLaplace_one_re_pos
#print SourceLaplaceOneScratch.actualLaplace_one_im_eq_zero
#print axioms SourceLaplaceOneScratch.actualLaplace_one_im_eq_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variantfc6cf3f9f4c61547c002b9d57313f7c7140475f87f7aa1f9be831f23e3f100f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variantfc6cf3f9f4c61547c002b9d57313f7c7140475f87f7aa1f9be831f23e3f100f9.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac3e0d11114f5b915162b55a7b1e463f4b6f017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
