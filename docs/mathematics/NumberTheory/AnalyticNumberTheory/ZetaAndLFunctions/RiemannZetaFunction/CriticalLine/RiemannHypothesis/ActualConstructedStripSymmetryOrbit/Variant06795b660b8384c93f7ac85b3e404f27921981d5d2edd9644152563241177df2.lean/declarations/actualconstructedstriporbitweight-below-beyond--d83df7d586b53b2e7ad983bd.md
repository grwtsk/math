# actualConstructedStripOrbitWeight_below_beyond

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91f9aa9e-30b2-31bf-2b54-43401b2afde0",
  "kind": "theorem",
  "lexical_name": "actualConstructedStripOrbitWeight_below_beyond",
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
  "slug": "actualconstructedstriporbitweight-below-beyond--d83df7d586b53b2e7ad983bd",
  "source": {
    "blob": "a647d20263fae52cc6ad0a52b76d74553556b7cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualConstructedStripSymmetryOrbit/Variant06795b660b8384c93f7ac85b3e404f27921981d5d2edd9644152563241177df2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d83df7d586b53b2e7ad983bda1ee9a8250ed46a9a3865d509f9ce6fc756c3099",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualConstructedStripSymmetryOrbit/Variant06795b660b8384c93f7ac85b3e404f27921981d5d2edd9644152563241177df2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91f9aa9e-30b2-31bf-2b54-43401b2afde0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualConstructedStripOrbitWeight_below_beyond (R L : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧ (actualConstructedStripOrbitWeight A).re < L := by
  obtain ⟨A, hR, hA, hneg⟩ := actualInsideStripKernel_below_beyond R (L / 4)
  refine ⟨A, hR, hA, ?_⟩
  rw [actualConstructedStripOrbitWeight_real hA]
  linarith

end
end FormalResearch.RiemannHypothesis.ActualConstructedStripSymmetryOrbit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualConstructedStripSymmetryOrbit/Variant06795b660b8384c93f7ac85b3e404f27921981d5d2edd9644152563241177df2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualConstructedStripSymmetryOrbit/Variant06795b660b8384c93f7ac85b3e404f27921981d5d2edd9644152563241177df2.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a647d20263fae52cc6ad0a52b76d74553556b7cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
