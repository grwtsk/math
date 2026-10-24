# actual_reflected_sector_eq_full_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:798d0fd4-83cc-6288-163b-f3912ac66a23",
  "kind": "theorem",
  "lexical_name": "actual_reflected_sector_eq_full_fiber",
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
  "slug": "actual-reflected-sector-eq-full-fiber--06d91f6bcee72c6f7076a0ed",
  "source": {
    "blob": "c4e5ffa18a9ea8c7a949b0eb03fd4ce6946f9edf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 320,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorGramRefinement/Varianta40fb2a9d3782f779296cb7870570d4a086c3728ad4afe5efe1a570a7255896f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06d91f6bcee72c6f7076a0ed809130c19f8d8a2809e11d6fcc111f9a928922e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorGramRefinement/Varianta40fb2a9d3782f779296cb7870570d4a086c3728ad4afe5efe1a570a7255896f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:798d0fd4-83cc-6288-163b-f3912ac66a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_reflected_sector_eq_full_fiber (A : ℝ) (hA : 1 ≤ A) (S p : Finset ℕ) :
    reflection (sectorState (originalSourceL2 A (by linarith)) (longInventory A) S p
        (centeredCoordinates (vaughanCutoff A) (longInventory A))) =
      finiteProfile (originalSourceL2 A (by linarith))
        (patternFiber (longInventory A) S p) true false
        (centeredCoefficient (vaughanCutoff A)) := by
  rw [actual_centered_sector_eq_full_fiber A hA S p,
    finiteProfile_reflection_original (originalSourceL2_even A (by linarith))]
  rfl

/-- Complete short-divisor disclosure determines beta while keeping inverse-root-weighted fibers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorGramRefinement/Varianta40fb2a9d3782f779296cb7870570d4a086c3728ad4afe5efe1a570a7255896f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorGramRefinement/Varianta40fb2a9d3782f779296cb7870570d4a086c3728ad4afe5efe1a570a7255896f.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e5ffa18a9ea8c7a949b0eb03fd4ce6946f9edf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
