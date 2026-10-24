# logarithmic_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b3e8ab7-1af8-60d8-2a44-3e059917d26e",
  "kind": "theorem",
  "lexical_name": "logarithmic_integral_zero",
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
  "slug": "logarithmic-integral-zero--4479e8322529a3731f3c480a",
  "source": {
    "blob": "5935d7783237ba019d24364fcf62f1e1bb95c53b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4479e8322529a3731f3c480a53b33c1e133780ffd1fd44a62a904ac9999d3feb",
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

Occurrence: `result:9b3e8ab7-1af8-60d8-2a44-3e059917d26e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_integral_zero {F : ℝ → ℝ}
    (hzero : Integrable (fun x : ℝ ↦ Real.exp (x / 2) * F x))
    (hfirst : Integrable (fun x : ℝ ↦ x * Real.exp (x / 2) * F x))
    (zero : (∫ x : ℝ, Real.exp (x / 2) * F x) = 0)
    (firstZero : (∫ x : ℝ, x * Real.exp (x / 2) * F x) = 0) (t : ℝ) :
    IntegrableOn (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)) (Ioi 0) ∧
      (∫ x in Ioi (0 : ℝ), Real.log x / Real.sqrt x * F (t + Real.log x)) = 0 := by
  obtain ⟨admitted, identity⟩ := logarithmic_moment_identity hzero hfirst t
  refine ⟨admitted, ?_⟩
  rw [identity, zero, firstZero]
  ring

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicMomentSubstitution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5935d7783237ba019d24364fcf62f1e1bb95c53b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
