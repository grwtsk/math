# closedPrimeMoment_eq_threeResponse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f9554cc-c39b-35e0-93f9-213619d46e28",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_threeResponse",
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
  "slug": "closedprimemoment-eq-threeresponse--2969d5abd9171d818c520764",
  "source": {
    "blob": "1bdbe0504f00df3849580dff7019a2ced142f360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant0488db4e4b97ed8629be4c3bb5543b99d89f3af35747fde2b0d280ddcc5e1944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2969d5abd9171d818c5207645d6db43953c08c79fc0546a5a775695b8157d44b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant0488db4e4b97ed8629be4c3bb5543b99d89f3af35747fde2b0d280ddcc5e1944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f9554cc-c39b-35e0-93f9-213619d46e28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_threeResponse (A : ℝ) (hA : 0 < A) :
    closedPrimeMoment A = threeResponseNumerator A / sourceNormalization A := by
  have hA0 : A ≠ 0 := ne_of_gt hA
  have hZ0 : sourceNormalization A ≠ 0 := by
    unfold sourceNormalization
    positivity
  unfold closedPrimeMoment threeResponseNumerator T0 T2 T4 response exponentialTest
  rw [Finset.mul_sum, Finset.mul_sum, Finset.sum_div,
    ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro n hn
  have hb := mangoldtInventory_log_bounds (2 * A) n hn
  rw [sourceCorrelation_eq_threeProfile hA hb.1 hb.2]
  simp only [iteratedDeriv_zero]
  field_simp [hA0, hZ0]
  ring

/-- The actual residual has the exact complete three-response coordinates at every real A≥1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant0488db4e4b97ed8629be4c3bb5543b99d89f3af35747fde2b0d280ddcc5e1944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant0488db4e4b97ed8629be4c3bb5543b99d89f3af35747fde2b0d280ddcc5e1944.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bdbe0504f00df3849580dff7019a2ced142f360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
