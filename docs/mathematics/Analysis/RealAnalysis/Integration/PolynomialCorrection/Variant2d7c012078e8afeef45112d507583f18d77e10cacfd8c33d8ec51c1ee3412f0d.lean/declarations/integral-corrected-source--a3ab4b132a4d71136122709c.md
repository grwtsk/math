# integral_corrected_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:415f28ee-1e02-6368-349d-4a66699f08ba",
  "kind": "theorem",
  "lexical_name": "integral_corrected_source",
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
  "slug": "integral-corrected-source--a3ab4b132a4d71136122709c",
  "source": {
    "blob": "f6bec6e97654bd19ff20e363f60a9616f8c53c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3ab4b132a4d71136122709c9ca2894e09022614b47db3a67d39f35ec29bcddd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:415f28ee-1e02-6368-349d-4a66699f08ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_corrected_source (m : ℕ) (C : ℝ) (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * (correctedSource m C A : ℂ)) =
      correctedTransform m C s := by
  have heq := setIntegral_congr_fun (μ := volume) measurableSet_Ioi
    (fun A hA ↦ weighted_corrected_source_eq m C s A hA.le)
  rw [heq, integral_add (weightedSource_laplace_integrable s hs)
    ((correction_integrable m s (by linarith)).const_mul (C : ℂ)),
    integral_const_mul, initial_agreement s hs, integral_correction m s (by linarith)]
  rfl

/-- Analyticity is preserved throughout the existing candidate-free domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bec6e97654bd19ff20e363f60a9616f8c53c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
