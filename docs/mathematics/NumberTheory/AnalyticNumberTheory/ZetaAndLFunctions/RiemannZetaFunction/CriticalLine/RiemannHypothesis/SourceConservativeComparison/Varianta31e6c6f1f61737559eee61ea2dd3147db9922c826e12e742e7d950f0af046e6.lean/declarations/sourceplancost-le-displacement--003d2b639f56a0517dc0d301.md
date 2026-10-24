# sourcePlanCost_le_displacement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a6560da-b2a4-d433-9e07-9ff1b20a39af",
  "kind": "theorem",
  "lexical_name": "sourcePlanCost_le_displacement",
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
  "slug": "sourceplancost-le-displacement--003d2b639f56a0517dc0d301",
  "source": {
    "blob": "e872c61f58c0b09f920e3ff531684f0f6ac02657",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Varianta31e6c6f1f61737559eee61ea2dd3147db9922c826e12e742e7d950f0af046e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:003d2b639f56a0517dc0d3018299593fc7251beeab6c59ebc0c852475f90cbad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Varianta31e6c6f1f61737559eee61ea2dd3147db9922c826e12e742e7d950f0af046e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a6560da-b2a4-d433-9e07-9ff1b20a39af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlanCost_le_displacement {A : ℝ} (hA : 200 ≤ A)
    (x : ι → ℝ) (y : κ → ℝ) (P : ι → κ → ℝ) (hP : ∀ i j, 0 ≤ P i j) :
    sourcePlanCost A x y P ≤ (Real.sqrt 5 / A) * displacementCost x y P := by
  unfold sourcePlanCost displacementCost
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro j _
  calc
    _ ≤ P i j * (Real.sqrt 5 * |x i - y j| / A) :=
      mul_le_mul_of_nonneg_left (sourceDistance_le_sharp hA (x i) (y j)) (hP i j)
    _ = _ := by ring

/-- The complete support diameter pays every unit of transported mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Varianta31e6c6f1f61737559eee61ea2dd3147db9922c826e12e742e7d950f0af046e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Varianta31e6c6f1f61737559eee61ea2dd3147db9922c826e12e742e7d950f0af046e6.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e872c61f58c0b09f920e3ff531684f0f6ac02657` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
