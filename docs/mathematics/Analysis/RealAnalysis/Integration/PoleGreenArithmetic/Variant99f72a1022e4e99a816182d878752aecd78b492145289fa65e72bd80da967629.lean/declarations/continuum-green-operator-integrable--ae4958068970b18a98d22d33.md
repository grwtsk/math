# continuum_green_operator_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:498d4a4f-cd3a-043f-3d10-9791e75b10a3",
  "kind": "theorem",
  "lexical_name": "continuum_green_operator_integrable",
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
  "slug": "continuum-green-operator-integrable--ae4958068970b18a98d22d33",
  "source": {
    "blob": "4542eb0b4186a5eaebfb61486e77f54a792ee7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae4958068970b18a98d22d335a0f3ebcffc777968f503e41504bf4d4e4a3e9cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:498d4a4f-cd3a-043f-3d10-9791e75b10a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuum_green_operator_integrable (A : ℝ) (hA : 1 ≤ A)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    Integrable (fun t ↦
      (∫ x in (0 : ℝ)..2 * A, Real.exp (x / 2) * poleSquaredGreenKernel (t - x)) *
        poleSquaredDifferentialOperator f t) := by
  have hi := (continuum_green_operator_joint_integrable A f hf hcf).integral_prod_left
  convert hi using 1
  funext t
  dsimp only
  rw [integral_mul_const, zeroExtension_integral _ 0 (2 * A) (by linarith)]

/-- The actual Green residual pairs integrably with every compact `C⁴` pole test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4542eb0b4186a5eaebfb61486e77f54a792ee7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
