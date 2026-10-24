# wienerPoleProduct_eq_complexExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:832afbaa-ee9e-27c7-72f7-105c9686f7cb",
  "kind": "theorem",
  "lexical_name": "wienerPoleProduct_eq_complexExp",
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
  "slug": "wienerpoleproduct-eq-complexexp--70cf86b8f2ab60d7f9c34b72",
  "source": {
    "blob": "6a3f0650645c6ff13e471508993eca56346f0dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70cf86b8f2ab60d7f9c34b723e36b5a95d2a82083ed646f1dfc37d451e3ca7f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:832afbaa-ee9e-27c7-72f7-105c9686f7cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerPoleProduct_eq_complexExp
    (sigma : ℝ) (psi : ℝ → ℂ) (u t : ℝ) :
    wienerPoleProduct sigma psi u t =
      Complex.exp
        (((1 : ℂ) - (sigma : ℂ) - (t : ℂ) * Complex.I) *
          (u : ℂ)) * psi t := by
  unfold wienerPoleProduct
  rw [Circle.smul_def, Real.fourierChar_apply]
  simp only [Complex.ofReal_exp, ← Complex.exp_add]
  congr 1
  have htwoPi : (2 * Real.pi : ℂ) ≠ 0 := by
    exact_mod_cast (show (2 * Real.pi : ℝ) ≠ 0 by positivity)
  push_cast
  field_simp [htwoPi]
  ring

/-- Evaluation of the complex Laplace tail in the ACTUAL pole
normalization: integral over (-log T, infinity) of the exponential
is T^(sigma-1)*(sigma+it-1)^(-1)*T^(it).

No complex improper-integral limit is assumed; pinned Mathlib's
integral_exp_mul_complex_Ioi carries that limit and integrability.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a3f0650645c6ff13e471508993eca56346f0dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
