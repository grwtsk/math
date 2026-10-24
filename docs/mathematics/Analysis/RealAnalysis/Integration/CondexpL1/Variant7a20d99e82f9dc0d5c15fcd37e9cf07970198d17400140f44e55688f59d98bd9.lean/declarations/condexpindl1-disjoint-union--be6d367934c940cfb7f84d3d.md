# condexpIndL1_disjoint_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84546d55-0278-0bad-5e47-f39f9d385071",
  "kind": "theorem",
  "lexical_name": "condexpIndL1_disjoint_union",
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
  "slug": "condexpindl1-disjoint-union--be6d367934c940cfb7f84d3d",
  "source": {
    "blob": "5b60ab07be3708195f1e012bc688de60f74db63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be6d367934c940cfb7f84d3d57e1608012f1df9a7aab5393382a805404ab6bc4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84546d55-0278-0bad-5e47-f39f9d385071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condexpIndL1_disjoint_union (hs : MeasurableSet s) (ht : MeasurableSet t) (hμs : μ s ≠ ∞)
    (hμt : μ t ≠ ∞) (hst : s ∩ t = ∅) (x : G) :
    condexpIndL1 hm μ (s ∪ t) x = condexpIndL1 hm μ s x + condexpIndL1 hm μ t x := by
  have hμst : μ (s ∪ t) ≠ ∞ :=
    ((measure_union_le s t).trans_lt (lt_top_iff_ne_top.mpr (ENNReal.add_ne_top.mpr ⟨hμs, hμt⟩))).ne
  rw [condexpIndL1_of_measurableSet_of_measure_ne_top hs hμs x,
    condexpIndL1_of_measurableSet_of_measure_ne_top ht hμt x,
    condexpIndL1_of_measurableSet_of_measure_ne_top (hs.union ht) hμst x]
  exact condexpIndL1Fin_disjoint_union hs ht hμs hμt hst x
#align measure_theory.condexp_ind_L1_disjoint_union MeasureTheory.condexpIndL1_disjoint_union

end CondexpIndL1

-- Porting note: `G` is not automatically inferred in `condexpInd` in Lean 4;
-- to avoid repeatedly typing `(G := ...)` it is made explicit.
variable (G)

/-- Conditional expectation of the indicator of a set, as a linear map from `G` to L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b60ab07be3708195f1e012bc688de60f74db63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
