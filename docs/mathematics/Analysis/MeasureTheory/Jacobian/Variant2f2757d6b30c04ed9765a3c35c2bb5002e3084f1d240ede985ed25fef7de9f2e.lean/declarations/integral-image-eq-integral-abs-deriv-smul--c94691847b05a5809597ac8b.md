# integral_image_eq_integral_abs_deriv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19341917-dfaa-c010-45a9-806f2fff8dd8",
  "kind": "theorem",
  "lexical_name": "integral_image_eq_integral_abs_deriv_smul",
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
  "slug": "integral-image-eq-integral-abs-deriv-smul--c94691847b05a5809597ac8b",
  "source": {
    "blob": "f7cad2063b178cca3d9a88bb2ae37986675b0814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1213,
    "line": 1207,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c94691847b05a5809597ac8ba05e7285e958b877da7413b87cae755173c173e1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19341917-dfaa-c010-45a9-806f2fff8dd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1207–1213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_image_eq_integral_abs_deriv_smul {s : Set ℝ} {f : ℝ → ℝ} {f' : ℝ → ℝ}
    (hs : MeasurableSet s) (hf' : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x)
    (hf : InjOn f s) (g : ℝ → F) : ∫ x in f '' s, g x = ∫ x in s, |f' x| • g (f x) := by
  simpa only [det_one_smulRight] using
    integral_image_eq_integral_abs_det_fderiv_smul volume hs
      (fun x hx => (hf' x hx).hasFDerivWithinAt) hf g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean#L1207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7cad2063b178cca3d9a88bb2ae37986675b0814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
