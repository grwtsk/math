# exponential_jacobian_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7804ae6-378d-b808-6760-6ead898a01a6",
  "kind": "theorem",
  "lexical_name": "exponential_jacobian_integral",
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
  "slug": "exponential-jacobian-integral--72066e59c88d4de8cfc0674c",
  "source": {
    "blob": "5935d7783237ba019d24364fcf62f1e1bb95c53b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72066e59c88d4de8cfc0674c130ceed13fa29f49cad36a54761b6392df6753af",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7804ae6-378d-b808-6760-6ead898a01a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_jacobian_integral (g : ℝ → ℝ) :
    (∫ x : ℝ, Real.exp x * g (Real.exp x)) = ∫ y in Ioi (0 : ℝ), g y := by
  have substitution := integral_image_eq_integral_abs_deriv_smul
    (s := (univ : Set ℝ)) MeasurableSet.univ
    (fun x _ ↦ (Real.hasDerivAt_exp x).hasDerivWithinAt)
    (fun x _ y _ same ↦ Real.exp_injective same) g
  simpa [image_univ, Real.range_exp, abs_of_pos (Real.exp_pos _), smul_eq_mul]
    using substitution.symm

/-- Actual integrability is preserved in the same full change of variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5935d7783237ba019d24364fcf62f1e1bb95c53b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
