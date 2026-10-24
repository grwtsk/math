# fixedKernel_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab7eae00-ecf8-0283-9628-01f560ab675f",
  "kind": "theorem",
  "lexical_name": "fixedKernel_laplace_integrable",
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
  "slug": "fixedkernel-laplace-integrable--8a947742c255b5eb17fa5c07",
  "source": {
    "blob": "5c4153624bb0ce8aab90ec65ae902dcf14a2b072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a947742c255b5eb17fa5c07cbb0eb64cacef91486e5214ad32eae332304ea71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab7eae00-ecf8-0283-9628-01f560ab675f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedKernel_laplace_integrable (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun t : ℝ ↦ (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) (Ioi 0) := by
  have hk : IntegrableOn (fun t : ℝ ↦ (fixedKernel t : ℂ)) (Ioi 0) :=
    FixedKernelAdmissionScratch.fixedKernel_integrableOn_Ioi.ofReal
  apply hk.mul_bdd
    ((Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).aestronglyMeasurable)
    (c := 1)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  change ‖Complex.exp ((-z) * (t : ℂ))‖ ≤ 1
  rw [Complex.norm_exp]
  apply Real.exp_le_one_iff.mpr
  simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
    Complex.neg_im, Complex.ofReal_im, mul_zero, sub_zero]
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hz) (le_of_lt ht)

/-- Summable source L1 norms justify the complete Laplace interchange in the Dirichlet half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c4153624bb0ce8aab90ec65ae902dcf14a2b072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
