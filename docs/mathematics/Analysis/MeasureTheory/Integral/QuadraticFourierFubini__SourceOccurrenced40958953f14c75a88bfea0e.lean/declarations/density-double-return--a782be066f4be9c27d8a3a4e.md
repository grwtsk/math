# density_double_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/Analysis/MeasureTheory/Integral/QuadraticFourierFubini.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9137efdf-bb32-26ba-919a-c9c5ef0b2e3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/MeasureTheory/Integral/QuadraticFourierFubini.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:771ed8ac-0a1b-c37c-5525-c80914ebcf84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a694f10f-a236-6ef3-7a23-89ffdce98338",
  "kind": "theorem",
  "lexical_name": "density_double_return",
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
  "slug": "density-double-return--a782be066f4be9c27d8a3a4e",
  "source": {
    "blob": "18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 128,
    "path": "GRWTSK/Analysis/MeasureTheory/Integral/QuadraticFourierFubini.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a782be066f4be9c27d8a3a4e9a9b0b036a9fbd05ae5205008af3d2247838cc37",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a694f10f-a236-6ef3-7a23-89ffdce98338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_double_return {c T : ℝ} (hT : 0 ≤ T)
    (hk : Integrable (RightLine.pickupKernel c)) :
    (∫ t : ℝ, ∫ s : ℝ, ConcreteRightLine.density c T t s) =
      ∫ u : ℝ in Icc 0 T,
        Complex.exp (((2*c-1:ℝ):ℂ)*(u:ℂ)) *
        (∫ t : ℝ, RightLine.pickupKernel c t *
          Complex.exp (((t*u:ℝ):ℂ)*Complex.I)) *
        starRingEnd ℂ (∫ s : ℝ, RightLine.pickupKernel c s *
          Complex.exp (((s*u:ℝ):ℂ)*Complex.I)) := by
  rw [integral_integral (density_integrable hT hk)]
  simp_rw [density_eq_time_integral]
  simp only [Prod.mk.eta]
  have hi : Integrable (Function.uncurry (fun z : ℝ×ℝ => fun u : ℝ => triple c (z,u)))
      ((volume.prod volume).prod (volume.restrict (Icc 0 T))) := triple_integrable hT hk
  rw [integral_integral_swap hi]
  apply integral_congr_ae
  filter_upwards [] with u
  exact frequency_product_return c u

end EulerP04RH.ConcreteFubini
#print axioms EulerP04RH.ConcreteFubini.triple_integrable
#print axioms EulerP04RH.ConcreteFubini.density_double_return

#print axioms EulerP04RH.ConcreteFubini.density_section_integrable
#print axioms EulerP04RH.ConcreteFubini.density_outer_integrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integral/QuadraticFourierFubini.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18ca7eb43a20ba5c5a7b1cbe93b6a87456720d1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
