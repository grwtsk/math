# condexpIndL1Fin_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43d5da41-8944-83ea-09fa-87e24a0469c6",
  "kind": "theorem",
  "lexical_name": "condexpIndL1Fin_add",
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
  "slug": "condexpindl1fin-add--1121029a5f9d3bf8a193493f",
  "source": {
    "blob": "5b60ab07be3708195f1e012bc688de60f74db63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1121029a5f9d3bf8a193493f818197b090d26752f0d2911b5b03a2235ad21e3d",
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

Occurrence: `result:43d5da41-8944-83ea-09fa-87e24a0469c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condexpIndL1Fin_add (hs : MeasurableSet s) (hμs : μ s ≠ ∞) (x y : G) :
    condexpIndL1Fin hm hs hμs (x + y) =
    condexpIndL1Fin hm hs hμs x + condexpIndL1Fin hm hs hμs y := by
  ext1
  refine' (Memℒp.coeFn_toLp q).trans _
  refine' EventuallyEq.trans _ (Lp.coeFn_add _ _).symm
  refine' EventuallyEq.trans _
    (EventuallyEq.add (Memℒp.coeFn_toLp q).symm (Memℒp.coeFn_toLp q).symm)
  rw [condexpIndSMul_add]
  refine' (Lp.coeFn_add _ _).trans (eventually_of_forall fun a => _)
  rfl
#align measure_theory.condexp_ind_L1_fin_add MeasureTheory.condexpIndL1Fin_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b60ab07be3708195f1e012bc688de60f74db63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
