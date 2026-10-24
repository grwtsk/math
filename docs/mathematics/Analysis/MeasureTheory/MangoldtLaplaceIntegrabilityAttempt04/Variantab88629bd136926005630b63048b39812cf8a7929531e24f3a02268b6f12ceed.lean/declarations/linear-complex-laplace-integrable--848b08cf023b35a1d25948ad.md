# linear_complex_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4628804f-1f6f-4b3d-1ac8-1e61ae7bd2ca",
  "kind": "theorem",
  "lexical_name": "linear_complex_laplace_integrable",
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
  "slug": "linear-complex-laplace-integrable--848b08cf023b35a1d25948ad",
  "source": {
    "blob": "838ff1cc8aa4fd03edc8416f01d2d10d371cf0da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:848b08cf023b35a1d25948ad1e42452588e0ecaff7224a321ef704b73440c368",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4628804f-1f6f-4b3d-1ac8-1e61ae7bd2ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_complex_laplace_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(t:ℂ)) (Ioi 0) := by
  refine (integrable_norm_iff (show AEStronglyMeasurable
    (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(t:ℂ)) (volume.restrict (Ioi 0)) from
      (show Continuous (fun t : ℝ => Complex.exp (-z*(t:ℂ))*(t:ℂ)) by fun_prop).aestronglyMeasurable)).mp ?_
  refine (linear_exponential_integrable hz).congr_fun ?_ measurableSet_Ioi
  intro t ht
  simp only [norm_mul,Complex.norm_exp,Complex.mul_re,Complex.neg_re,
    Complex.ofReal_re,Complex.ofReal_im,mul_zero,sub_zero,Complex.norm_real,Real.norm_eq_abs]
  rw [abs_of_pos ht]
  ring

/-- The actual closed prefix itself is genuinely Laplace integrable; not a residual definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt04/Variantab88629bd136926005630b63048b39812cf8a7929531e24f3a02268b6f12ceed.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `838ff1cc8aa4fd03edc8416f01d2d10d371cf0da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
