# signed_reconstruction_refinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d82bca5-0e7b-f85b-2fa6-036c19991eff",
  "kind": "theorem",
  "lexical_name": "signed_reconstruction_refinement",
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
  "slug": "signed-reconstruction-refinement--bf85db3c56442a845625e53f",
  "source": {
    "blob": "739e70ada2b2371f084abde3c2c2524b2eec8b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceObservableAdapterVerified/Variantda2653c44d6eb2e30a5cf5a4e0c4c259c5ed76262d04c7dd2f3d2268984e64f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf85db3c56442a845625e53f098eac4ac8de90b378c3ff9e16924338c866720a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceObservableAdapterVerified/Variantda2653c44d6eb2e30a5cf5a4e0c4c259c5ed76262d04c7dd2f3d2268984e64f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d82bca5-0e7b-f85b-2fa6-036c19991eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_reconstruction_refinement (A : ℝ) {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) (v : ComplexL2) :
    sourceReflectedReadout A K (extendCoefficients hIK c) +
      (⟪sourceSynthesis A K (extendCoefficients hIK c),
        reflection (sourceResidual A K (extendCoefficients hIK c) v)⟫_ℂ).re +
      (⟪sourceResidual A K (extendCoefficients hIK c) v,
        reflection (sourceSynthesis A K (extendCoefficients hIK c))⟫_ℂ).re +
      signedReadout (sourceResidual A K (extendCoefficients hIK c) v) =
    sourceReflectedReadout A I c +
      (⟪sourceSynthesis A I c, reflection (sourceResidual A I c v)⟫_ℂ).re +
      (⟪sourceResidual A I c v, reflection (sourceSynthesis A I c)⟫_ℂ).re +
      signedReadout (sourceResidual A I c v) := by
  rw [sourceReflectedReadout_refinement, sourceSynthesis_refinement,
    sourceResidual_refinement]

/-- An actual critical signed Abel tail witness reaches the existing unchanged
all-real estimate through the checked first-prime consumer. This is conditional,
and does not construct the remaining arithmetic witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceObservableAdapterVerified/Variantda2653c44d6eb2e30a5cf5a4e0c4c259c5ed76262d04c7dd2f3d2268984e64f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceObservableAdapterVerified/Variantda2653c44d6eb2e30a5cf5a4e0c4c259c5ed76262d04c7dd2f3d2268984e64f2.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `739e70ada2b2371f084abde3c2c2524b2eec8b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
