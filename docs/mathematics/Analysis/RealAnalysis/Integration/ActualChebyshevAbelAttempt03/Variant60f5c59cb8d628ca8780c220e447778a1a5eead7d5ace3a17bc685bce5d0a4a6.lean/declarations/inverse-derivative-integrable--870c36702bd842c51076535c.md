# inverse_derivative_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:736d5f6a-40b9-1f20-8386-33d41eaaf9eb",
  "kind": "theorem",
  "lexical_name": "inverse_derivative_integrable",
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
  "slug": "inverse-derivative-integrable--870c36702bd842c51076535c",
  "source": {
    "blob": "8d94e062cd09f166437add96495c9e7418b52d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant60f5c59cb8d628ca8780c220e447778a1a5eead7d5ace3a17bc685bce5d0a4a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:870c36702bd842c51076535c65f8bbde3e8657f80489e679388c3f9adb849c7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant60f5c59cb8d628ca8780c220e447778a1a5eead7d5ace3a17bc685bce5d0a4a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:736d5f6a-40b9-1f20-8386-33d41eaaf9eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_derivative_integrable (b : ℝ) :
    IntegrableOn (deriv (fun u : ℝ => u⁻¹)) (Icc (1:ℝ) b) := by
  have hc : ContinuousOn (fun u : ℝ => -(u^2)⁻¹) (Icc (1:ℝ) b) := by
    apply ContinuousOn.neg
    apply ContinuousOn.inv₀ (continuousOn_id.pow 2)
    intro x hx
    exact pow_ne_zero 2 (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1))
  apply hc.integrableOn_Icc.congr_fun
  · intro x hx
    exact (inverse_hasDerivAt hx).deriv.symm
  · exact measurableSet_Icc

/-- Actual weighted inventory, including all closed upper atoms; zero and unit terms vanish literally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant60f5c59cb8d628ca8780c220e447778a1a5eead7d5ace3a17bc685bce5d0a4a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant60f5c59cb8d628ca8780c220e447778a1a5eead7d5ace3a17bc685bce5d0a4a6.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d94e062cd09f166437add96495c9e7418b52d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
