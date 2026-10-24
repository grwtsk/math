# setToFun_add_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e89999c6-a7e9-d525-3797-a96473b289eb",
  "kind": "theorem",
  "lexical_name": "setToFun_add_left",
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
  "slug": "settofun-add-left--ce9655f1e2545e359bc7bc98",
  "source": {
    "blob": "9312bcc45854a242972d82f8ba46ce05fedffe4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1329,
    "line": 1322,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variantc79a2922e7d5595968e17305ff543cbd988b968dcb8a21d3b30f71dfc1fd7741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce9655f1e2545e359bc7bc98551b672094d1134bf330e3225275c341ea2d694f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variantc79a2922e7d5595968e17305ff543cbd988b968dcb8a21d3b30f71dfc1fd7741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e89999c6-a7e9-d525-3797-a96473b289eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1322–1329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToFun_add_left (hT : DominatedFinMeasAdditive μ T C)
    (hT' : DominatedFinMeasAdditive μ T' C') (f : α → E) :
    setToFun μ (T + T') (hT.add hT') f = setToFun μ T hT f + setToFun μ T' hT' f := by
  by_cases hf : Integrable f μ
  · simp_rw [setToFun_eq _ hf, L1.setToL1_add_left hT hT']
  · simp_rw [setToFun_undef _ hf, add_zero]
#align measure_theory.set_to_fun_add_left MeasureTheory.setToFun_add_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variantc79a2922e7d5595968e17305ff543cbd988b968dcb8a21d3b30f71dfc1fd7741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variantc79a2922e7d5595968e17305ff543cbd988b968dcb8a21d3b30f71dfc1fd7741.lean#L1322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9312bcc45854a242972d82f8ba46ce05fedffe4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
