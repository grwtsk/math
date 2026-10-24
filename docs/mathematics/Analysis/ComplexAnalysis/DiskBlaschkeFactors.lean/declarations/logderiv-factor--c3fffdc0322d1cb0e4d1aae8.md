# logDeriv_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0603ea6e-b1fe-2756-1c7c-8cc7050d4e32",
  "kind": "theorem",
  "lexical_name": "logDeriv_factor",
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
  "slug": "logderiv-factor--c3fffdc0322d1cb0e4d1aae8",
  "source": {
    "blob": "8720ed03876e35ab5cb829948fbb0881db8a642a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Analysis/Complex/DiskBlaschkeFactors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3fffdc0322d1cb0e4d1aae80e9bdf7192f9c8b446567652b59b5956c5c855da",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0603ea6e-b1fe-2756-1c7c-8cc7050d4e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_factor (R : ℝ) (hR : R ≠ 0) (a z : ℂ)
    (ha : z ≠ a) (hd : (R : ℂ) ^ 2 - conj a * z ≠ 0) :
    logDeriv (factor R a) z = (z - a)⁻¹ + conj a / ((R : ℂ) ^ 2 - conj a * z) := by
  have hr : (R : ℂ) ≠ 0 := by exact_mod_cast hR
  have dn : HasDerivAt (fun w : ℂ => (R : ℂ) * (w - a)) (R : ℂ) z := by
    simpa using ((hasDerivAt_id z).sub_const a).const_mul (R : ℂ)
  have dd : HasDerivAt (fun w : ℂ => (R : ℂ) ^ 2 - conj a * w) (-conj a) z := by
    simpa using ((hasDerivAt_id z).const_mul (conj a)).const_sub ((R : ℂ) ^ 2)
  have he := logDeriv_div (f := fun w : ℂ => (R : ℂ) * (w - a)) (g := fun w : ℂ => (R : ℂ) ^ 2 - conj a * w) z (mul_ne_zero hr (sub_ne_zero.mpr ha)) hd
    dn.differentiableAt dd.differentiableAt
  change logDeriv (factor R a) z = _ at he
  rw [he, logDeriv_apply, logDeriv_apply, dn.deriv, dd.deriv]
  field_simp [hr, sub_ne_zero.mpr ha, hd]; ring

/-- Fixed nested radii leave a rational positive denominator margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/DiskBlaschkeFactors.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8720ed03876e35ab5cb829948fbb0881db8a642a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
