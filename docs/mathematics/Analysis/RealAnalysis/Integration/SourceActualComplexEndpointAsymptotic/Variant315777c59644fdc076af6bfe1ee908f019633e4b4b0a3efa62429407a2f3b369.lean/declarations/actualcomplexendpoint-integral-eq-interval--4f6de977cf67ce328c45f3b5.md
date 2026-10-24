# actualComplexEndpoint_integral_eq_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f522a9bb-3da2-d450-e837-2d7f327e372d",
  "kind": "theorem",
  "lexical_name": "actualComplexEndpoint_integral_eq_interval",
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
  "slug": "actualcomplexendpoint-integral-eq-interval--4f6de977cf67ce328c45f3b5",
  "source": {
    "blob": "19d7cb1616cbf46763d8d058558fc5326202a65f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f6de977cf67ce328c45f3b530aa7b2ccfe3a73b8b380e0d7f8328b7266d181b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f522a9bb-3da2-d450-e837-2d7f327e372d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplexEndpoint_integral_eq_interval {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u) =
      ∫ u in 0..(2 * A), (endpointPolynomial A u : ℂ) *
        Complex.exp (-z * (u : ℂ)) := by
  have he : actualComplexEndpointIntegrand A z = (Icc 0 (2 * A)).indicator
      (fun u : ℝ => (endpointPolynomial A u : ℂ) * Complex.exp (-z * (u : ℂ))) := by
    funext u
    by_cases hu : u ∈ Icc 0 (2 * A) <;>
      simp [actualComplexEndpointIntegrand, actualEndpointExtension, hu]
  have hs : Ioi (0 : ℝ) ∩ Icc 0 (2 * A) = Ioc 0 (2 * A) := by
    ext u
    simp only [mem_inter_iff, mem_Ioi, mem_Icc, mem_Ioc]
    constructor
    · rintro ⟨hu, _, hv⟩
      exact ⟨hu, hv⟩
    · rintro ⟨hu, hv⟩
      exact ⟨hu, hu.le, hv⟩
  rw [he, setIntegral_indicator measurableSet_Icc, hs,
    intervalIntegral.integral_of_le (show (0 : ℝ) ≤ 2 * A by linarith)]

/-- Exact exponential reflection keeps all three literal source scale factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant315777c59644fdc076af6bfe1ee908f019633e4b4b0a3efa62429407a2f3b369.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19d7cb1616cbf46763d8d058558fc5326202a65f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
