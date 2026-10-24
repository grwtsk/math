# integral_target_eq_integral_abs_det_fderiv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa2cb42e-75c6-2b01-4711-34a1655a1e4a",
  "kind": "theorem",
  "lexical_name": "integral_target_eq_integral_abs_det_fderiv_smul",
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
  "slug": "integral-target-eq-integral-abs-det-fderiv-smul--4f3a4eed44f0dc05aaac0e30",
  "source": {
    "blob": "f39c34da90f57127c1bfa0b8c7576e29e66d2677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1274,
    "line": 1264,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f3a4eed44f0dc05aaac0e301bb00f1265a51e6d5a48bbb0ebc284363bd7af9f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa2cb42e-75c6-2b01-4711-34a1655a1e4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1264–1274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_target_eq_integral_abs_det_fderiv_smul [CompleteSpace F] {f : LocalHomeomorph E E}
    (hf' : ∀ x ∈ f.source, HasFDerivAt f (f' x) x) (g : E → F) :
    ∫ x in f.target, g x ∂μ = ∫ x in f.source, |(f' x).det| • g (f x) ∂μ := by
  have : f '' f.source = f.target := LocalEquiv.image_source_eq_target f.toLocalEquiv
  rw [← this]
  apply integral_image_eq_integral_abs_det_fderiv_smul μ f.open_source.measurableSet _ f.injOn
  intro x hx
  exact (hf' x hx).hasFDerivWithinAt
#align measure_theory.integral_target_eq_integral_abs_det_fderiv_smul MeasureTheory.integral_target_eq_integral_abs_det_fderiv_smul

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean#L1264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f39c34da90f57127c1bfa0b8c7576e29e66d2677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
