# original_source_eventually_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55173b65-db63-5698-d666-8f80d4a62dc4",
  "kind": "theorem",
  "lexical_name": "original_source_eventually_polynomial",
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
  "slug": "original-source-eventually-polynomial--6a2e10c1ee20c20e3b7617b3",
  "source": {
    "blob": "996a59d68cce97b64dbedace53875dbfb45438f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 128,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSignedPrimitiveReturn/Variantc76649c86dc398615dce9fbb0f65b8e196b22c25f49bd035e0c642a3e1502061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a2e10c1ee20c20e3b7617b32b8be279c8b28fe3dd2907cbd8d448995c8125ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSignedPrimitiveReturn/Variantc76649c86dc398615dce9fbb0f65b8e196b22c25f49bd035e0c642a3e1502061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55173b65-db63-5698-d666-8f80d4a62dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_source_eventually_polynomial {m : ℕ} {D R : ℝ} (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hslope : ∀ A : ℝ, R ≤ A → ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |deriv (nativeKernel A) t| ≤ slopeAllowance A)
    (hprimitive : ∀ A : ℝ, R ≤ A → ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |nativePrimitive A t| ≤ D * A ^ m) : EventuallyPolynomialUpper closedPrimeMoment := by
  refine ⟨max m 1, 1536 * D + 84, R, by positivity, hR, ?_⟩
  intro A hRA
  exact (le_abs_self _).trans
    (original_source_abs_polynomial (hR.trans hRA) hD (hslope A hRA) (hprimitive A hRA))

end FormalResearch.RiemannHypothesis.BranchSignedPrimitiveReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSignedPrimitiveReturn/Variantc76649c86dc398615dce9fbb0f65b8e196b22c25f49bd035e0c642a3e1502061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSignedPrimitiveReturn/Variantc76649c86dc398615dce9fbb0f65b8e196b22c25f49bd035e0c642a3e1502061.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `996a59d68cce97b64dbedace53875dbfb45438f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
