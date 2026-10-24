# actual_normalized_test_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ebc61aa-905d-f752-5187-c34c15802648",
  "kind": "theorem",
  "lexical_name": "actual_normalized_test_even",
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
  "slug": "actual-normalized-test-even--7ff342b25bb408722a0ed961",
  "source": {
    "blob": "34670d6a40566a4f9363bb16a41333791b54b3c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variant4ea485618264f74e50323ff7c6d2b35da16c41a4bb188aff40dfd9f8730be8be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ff342b25bb408722a0ed9613a8720ea61b237d5e606321eee878314cc65d5ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variant4ea485618264f74e50323ff7c6d2b35da16c41a4bb188aff40dfd9f8730be8be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ebc61aa-905d-f752-5187-c34c15802648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_normalized_test_even (A : ℝ) (hA : 0 < A) (x : ℝ) :
    normalizedTest explicitSecondDerivative A (-x) =
      normalizedTest explicitSecondDerivative A x := by
  rw [normalizedTest_eq_indicator A hA]
  have hi : normalizedInterior A (-x) = normalizedInterior A x := by
    unfold normalizedInterior secondInterior bumpInterior
    ring
  by_cases hx : x ∈ Set.Icc (-A) A
  · have hnx : -x ∈ Set.Icc (-A) A := by constructor <;> linarith [hx.1, hx.2]
    rw [Set.indicator_of_mem hx, Set.indicator_of_mem hnx, hi]
  · have hnx : -x ∉ Set.Icc (-A) A := by
      intro h
      apply hx
      constructor <;> linarith [h.1, h.2]
    rw [Set.indicator_of_notMem hx, Set.indicator_of_notMem hnx]

/-- A concrete positive lower bound retains the true edge vanishing order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variant4ea485618264f74e50323ff7c6d2b35da16c41a4bb188aff40dfd9f8730be8be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variant4ea485618264f74e50323ff7c6d2b35da16c41a4bb188aff40dfd9f8730be8be.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34670d6a40566a4f9363bb16a41333791b54b3c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
