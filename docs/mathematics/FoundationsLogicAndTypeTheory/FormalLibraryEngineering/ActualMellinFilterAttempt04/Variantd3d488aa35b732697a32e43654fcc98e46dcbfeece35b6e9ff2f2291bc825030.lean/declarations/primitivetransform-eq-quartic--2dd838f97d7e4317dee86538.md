# primitiveTransform_eq_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2d97424-7ecd-832d-916a-c3cda8afe9b7",
  "kind": "theorem",
  "lexical_name": "primitiveTransform_eq_quartic",
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
  "slug": "primitivetransform-eq-quartic--2dd838f97d7e4317dee86538",
  "source": {
    "blob": "9d720e8111cca2da03eafeee32f9cd664bc8fb7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualMellinFilterAttempt04/Variantd3d488aa35b732697a32e43654fcc98e46dcbfeece35b6e9ff2f2291bc825030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dd838f97d7e4317dee865382b7cf2f96108daedade84906e6bb459e4263c2ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualMellinFilterAttempt04/Variantd3d488aa35b732697a32e43654fcc98e46dcbfeece35b6e9ff2f2291bc825030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2d97424-7ecd-832d-916a-c3cda8afe9b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveTransform_eq_quartic {A : ℝ} (hA : 0 < A) (z : ℂ) :
    primitiveTransform A z = (Real.sqrt A : ℂ)*quarticBumpLaplace ((A : ℂ)*z) := by
  rw [primitiveTransform_eq_interval hA]
  have hc := intervalIntegral.smul_integral_comp_mul_left
    (f := fun x : ℝ => (bumpInterior A x : ℂ)*Complex.exp (z*(x : ℂ)))
    (a := -1) (b := 1) A
  simp only [mul_neg_one,mul_one,Complex.real_smul] at hc
  rw [← hc]
  have he (v : ℝ) : (bumpInterior A (A*v) : ℂ)*Complex.exp (z*((A*v : ℝ) : ℂ)) =
      ((((1-v^2)^4 : ℝ) : ℂ)*Complex.exp (((A : ℂ)*z)*(v : ℂ))) /
        (Real.sqrt A : ℂ) := by
    simp only [bumpInterior,mul_div_cancel_left₀ _ hA.ne',Complex.ofReal_div,
      Complex.ofReal_mul]
    rw [show z*((A : ℂ)*(v : ℂ)) = ((A : ℂ)*z)*(v : ℂ) by ring]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_div]
  change (A : ℂ)*(quarticBumpLaplace ((A : ℂ)*z)/(Real.sqrt A : ℂ)) = _
  have hs : (Real.sqrt A : ℂ)^2 = (A : ℂ) := by exact_mod_cast Real.sq_sqrt hA.le
  have hn : (Real.sqrt A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hA).ne'
  rw [← hs]
  field_simp


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualMellinFilterAttempt04/Variantd3d488aa35b732697a32e43654fcc98e46dcbfeece35b6e9ff2f2291bc825030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualMellinFilterAttempt04/Variantd3d488aa35b732697a32e43654fcc98e46dcbfeece35b6e9ff2f2291bc825030.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d720e8111cca2da03eafeee32f9cd664bc8fb7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
