# perronIntegrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1237c05-3c3f-3c3c-0f96-cb97cfc11047",
  "kind": "theorem",
  "lexical_name": "perronIntegrand_integrable",
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
  "slug": "perronintegrand-integrable--bae14dda7db646bc1b27f8a0",
  "source": {
    "blob": "eb9e8c79588b6d6b5878a391564e142feac31fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bae14dda7db646bc1b27f8a0b724f27d215c668671f64373d617669236c71555",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1237c05-3c3f-3c3c-0f96-cb97cfc11047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perronIntegrand_integrable (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    Integrable (perronIntegrand c x) := by
  have h := (reciprocal_square_integrable c hc).norm.const_mul (x ^ c)
  refine (integrable_norm_iff (show AEStronglyMeasurable (perronIntegrand c x) volume from
    (show Measurable _ from by unfold perronIntegrand; fun_prop).aestronglyMeasurable)).mp ?_
  refine h.congr (Filter.Eventually.of_forall (fun t => ?_))
  simp only [perronIntegrand, norm_div, norm_one]
  rw [Complex.norm_cpow_eq_rpow_re_of_pos hx]
  simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_zero, add_zero]
  ring

/-- Fourier inversion with exact 2π rescaling gives the absolutely convergent ramp kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb9e8c79588b6d6b5878a391564e142feac31fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
